package;

import flash.display.BitmapData;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var room:String = "Room2";
	var stage:FlxSprite;

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
		stage.kill();
		stage = new FlxSprite(0, 0, BitmapData.fromFile("assets/images/room2_0"));
		stage.revive();
	}
}
