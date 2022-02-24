package;

import Std;
import flash.display.BitmapData;
import flixel.FlxSprite;
import flixel.graphics.FlxGraphic;

class Room extends FlxSprite
{
	public function new(roomID:Int, floorID:Int = 1)
	{
		var graphic = FlxGraphic.fromBitmapData(BitmapData.fromFile("assets/images/room" + Std.string(roomID) + "_0" + ".png"));
		super(0, 0, graphic);
	}
}

class Roomdef
{
	public var id:Int;
	public var udir:Int;
	public var ddir:Int;
	public var ldir:Int;
	public var rdir:Int;
}
