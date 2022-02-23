package;

import Room.Roomdef;
import Room.Room;
import flash.display.BitmapData;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var room:Int = 2;
	var stage:Room;
	var roomdefine:Roomdef;

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
		roomdefine = grabProperties(roomtogoto);
		add(stage);
	}
	
	private function grabProperties(roomID:Int)
	{
		var pro:Roomdef;
		switch (roomID)
		{
			case 2:
				pro.Ddir=3;
				pro.Udir=1;
				pro.ID=2;
		}
		return pro;
	}
}
