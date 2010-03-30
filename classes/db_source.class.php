<?php

require_once 'db.class.php';

class DbSource extends Db
{
    public static $table_name = 'sources';
    public static $find_by_source_sql;

    public static function find_by_source($query_source)
    {
        if(! isset(static::$select_by_sql)) {
            self::select_by_sql();
        }

        $sql = static::$select_by_sql . ' source = ?';
        $st = static::$connection->prepare($sql);
        $rs = $st->execute(array($query_source));

        if($rs == 1) {
            return $st->fetchObject(DbSource);
        }
        else {
            foreach($st->fetchObject(DbSource) as $source) {
                push_array($source, $collection);
            }
            return $collection;
        }

    }
}

?>
