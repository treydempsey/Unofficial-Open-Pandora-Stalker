<?php

class Db
{
    public static $connection;
    public static $columns;
    public static $select_by_sql;
    public static $select_sql;
    public static $select_st;
    public static $insert_sql;
    public static $insert_st;
    public static $update_sql;
    public static $update_st;
    public static $delete_sql;
    public static $delete_st;

    public $attributes;
    public $new_record;

    public static function find($query_id)
    {
        if(! isset(static::$select_st)) {
            self::select_sql();
        }

        static::$select_st->execute(array($query_id));
        $record = static::$select_st->fetchObject(get_called_class());

        return $record;
    }

    public static function create($args)
    {
        if(! isset(static::$insert_st)) {
            self::insert_sql();
        }

        $params = array();
        foreach(static::$columns as $column) {
            array_push($params, $args[$column]);
        }

        static::$insert_st->execute($params);
    }

    public function get_columns()
    {
        static::$columns = array();
        $rs = self::$connection->query("PRAGMA table_info(" . static::$table_name . ")");
        foreach($rs as $row) {
            array_push(static::$columns, $row['name']);
        }
    }

    protected static function insert_sql()
    {
        if(! isset(static::$columns)) {
            self::get_columns();
        }

        $insert_sql = 'INSERT INTO ' . static::$table_name . ' (' . join(', ', static::$columns) . ')';
        $insert_sql .= ' VALUES(' . join(', ', array_fill(0, count(static::$columns), '?')) . ')';

        if(! isset(static::$insert_st) || ! isset(static::$insert_sql) || static::$insert_sql != $insert_sql) {
            static::$insert_sql = $insert_sql;
            static::$insert_st = self::$connection->prepare($insert_sql);
        }

        return $insert_sql;
    }

    public static function select_by_sql()
    {
        if(! isset(static::$columns)) {
            self::get_columns();
        }

        $sql = 'SELECT ' . join(', ', static::$columns);
        $sql .= ' FROM ' . static::$table_name;
        $sql .= ' WHERE';

        static::$select_by_sql = $sql;

        return $sql;
    }

    public static function select_sql()
    {
        if(! isset(static::$columns)) {
            self::get_columns();
        }

        $select_sql = 'SELECT ' . join(', ', static::$columns);
        $select_sql .= ' FROM ' . static::$table_name;
        $select_sql .= ' WHERE id = ?';

        if(! isset(static::$select_st) || ! isset(static::$select_sql) || static::$select_sql != $select_sql) {
            static::$select_sql = $select_sql;
            static::$select_st = self::$connection->prepare($select_sql);
        }

        return $select_sql;
    }

    public static function update_sql()
    {
        if(! isset(static::$columns)) {
            self::get_columns();
        }

        $update_sql = 'UPDATE ' . static::$table_name . ' SET ';
        $update_sql .= join(' = ?, ', static::$columns) . ' = ? ';
        $update_sql .= 'WHERE id = ?';

        if(! isset(static::$update_st) || ! isset(static::$update_sql) || static::$update_sql != $update_sql) {
            static::$update_sql = $update_sql;
            static::$update_st = self::$connection->prepare($update_sql);
        }

        return $update_sql;
    }

    public static function delete_sql()
    {
        $delete_sql = 'DELETE FROM ' . static::$table_name . ' WHERE id = ?';

        if(! isset(static::$delete_st) || ! isset(static::$delete_sql) || static::$delete_sql != $delete_sql) {
            static::$delete_sql = $delete_sql;
            static::$delete_st = self::$connection->prepare($delete_sql);
        }

        return $delete_sql;
    }

    public function __get($key)
    {
        return $this->attributes[$key];
    }

    public function __set($key, $val)
    {
        if($key == 'id' && is_numeric($val)) {
            $this->new_record = 0;
        }
        $this->attributes[$key] = $val;
    }

    public function __construct($args = null)
    {
        if(! isset(static::$columns)) {
            $this->get_columns();
            // Set to static
        }

        if(isset($args)) {
            foreach(array_keys($args) as $arg) {
                $this->attributes[$arg] = $args[$arg];
            }
        }

        if($this->attributes['id']) {
            $this->new_record = 0;
        }
        else {
            $this->new_record = 1;
        }
    }

    public function save()
    {
        if($this->new_record == 1) {
            $params = array();
            foreach(static::$columns as $column) {
                array_push($params, $this->attributes[$column]);
            }

            if($this->new_record == 1) {
                if(! isset(static::$insert_sql)) {
                    static::insert_sql();
                }
                static::$insert_st->execute($params);
            }
            else {
                if(! isset(static::$update_sql)) {
                    static::update_sql();
                }
                array_push($params, $this->id);
                static::$update_st->execute($params);
            }
        }
    }
}

?>
