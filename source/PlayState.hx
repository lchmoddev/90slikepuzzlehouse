package;

import Room.Room;
import Room.Roomdef;
import flash.display.BitmapData;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var room:Int = 2;
	var roomdefine:Roomdef;
	var stage:Room;
	var dirPressed:String;

	override public function create()
	{
		stage = new Room(2);
		add(stage);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	private function updateroom(roomtogoto:Int)
	{
		if (roomtogoto != 0)
		{
			stage = new Room(roomtogoto);
			roomdefine = grabProperties(roomtogoto);
			add(stage);
		}
		else
		{
			return;
		}
	}

	private function moveTick()
	{
		dirPressed = null;
		if (FlxG.keys.justPressed.UP)
		{
			dirPressed = "U";
		}
		else if (FlxG.keys.justPressed.LEFT)
		{
			dirPressed = "L";
		}
		else if (FlxG.keys.justPressed.DOWN)
		{
			dirPressed = "D";
		}
		else if (FlxG.keys.justPressed.RIGHT)
		{
			dirPressed = "R";
		}
		if (dirPressed != null)
		{
			switch (dirPressed)
			{
				case "U":
					updateroom(roomdefine.udir);
				case "L":
					updateroom(roomdefine.ldir);
			}
		}
	}

	private function grabProperties(roomID:Int)
	{
		var pro:Roomdef = null;
		switch (roomID)
		{
			case 2:
				pro.id = 2;
				pro.udir = 1;
				pro.ddir = 3;
				pro.ldir = 0;
				pro.rdir = 0;
		}
		return pro;
	}
}
