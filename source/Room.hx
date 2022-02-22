package;

import Std;
import flash.display.BitmapData;
import flixel.FlxSprite;
import flixel.graphics.FlxGraphic;

class Room extends FlxSprite
{
	public function new(roomID:Int, floorID:Int = 1)
	{
		var graphic = FlxGraphic.fromBitmapData(BitmapData.fromFile("room" + Std.string(roomID) + "_0"));
		super(0, 0, graphic);
	}
}
