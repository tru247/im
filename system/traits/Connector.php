<?php

trait Connector{
	// Open connection to the db
	protected static function getDB(){
		try{
			$manager = new MongoDB\Driver\Manager('mongodb://127.0.0.1:27017');
			$db = $manager->executeCommand('test', new  MongoDB\Driver\Command(['ping' => 1]));
		}
		catch(Exception $e){
			die('Connection to db failed');
		}
	}

	//Fetch a dbb collection
	protected static function getCollection($collection = null){
		try{
			return self::getDB() -> selectCollection($collection ?: strtolower(__CLASS__ . 's'));
		}
		catch(Exception $e){
			die("Can/'t fetch '" . $collection . "' Collections[Table]");
		}
	}
}