<?php

require_once 'db.class.php';

class DbUser extends Db
{
    public static $table_name = 'users';

    public static function find_by_source_id($query_source_id)
    {
        if(! isset(static::$select_by_sql)) {
            self::select_by_sql();
        }

        $sql = static::$select_by_sql . ' source_id = ?';
        $st = static::$connection->prepare($sql);
        $rs = $st->execute(array($query_source_id));

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
