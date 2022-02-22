package;

import flash.display.BitmapData;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var room:String = "room2";
	var stage:Room;

	override public function create()
	{
		updateroom(room);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	private function updateroom(roomtogoto:String)
	{
		stage = new Room(2);
		add(stage);
	}
}
