package;

import flash.display.BitmapData;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var room:Int = 2;
	var stage:Room;

	override public function create()
	{
		updateroom(room);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	private function updateroom(roomtogoto:Int)
	{
		stage = new Room(roomtogoto);
		add(stage);
	}
}
