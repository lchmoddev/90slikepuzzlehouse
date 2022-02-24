package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	var key1:Bool = false;
	var key2:Bool = false;

	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, PlayState));
	}
}
