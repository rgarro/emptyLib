package emptyLib.Games._2D
{
	import flash.display.Sprite;
	
	import emptyLib.Games._2D.Turrets.PlaceHolder;
	import emptyLib.Games._2D.Turrets.Turret;
	
	
	public class Turrets extends Sprite
	{
		public var placeHolder1:PlaceHolder;
		
		public function Turrets()
		{
			this.placeHolder1 = new PlaceHolder(200,60,0x646390);
			this.addChild(placeHolder1);
		}
		
	}
}