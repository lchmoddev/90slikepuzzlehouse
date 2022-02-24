package;

import Room.*;
import Room.Roomdef;

class CoolUtilitiesstuff
{
	public function grabProperties(roomID:Int)
	{
		var pro:Roomdef = null;
		switch (roomID)
		{
			case 2:
				pro.id = 2;
				pro.udir = 1;
				pro.ddir = 3;
		}
	}
}
