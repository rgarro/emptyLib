package emptyLib.Games._2D
{
	import flash.display.Sprite;
	
	import emptyLib.Games._2D.Turrets.PlaceHolder;
	
	
	public class Turrets extends Sprite
	{
		public var placeHolder1:PlaceHolder;
		public var placeHolder2:PlaceHolder;
		public var placeHolder3:PlaceHolder;
		
		public function Turrets()
		{
			this.placeHolder1 = new PlaceHolder();
			this.placeHolder2 = new PlaceHolder();
			this.placeHolder3 = new PlaceHolder();
			placeHolder1.x = 200; placeHolder1.y = 60;
			placeHolder2.x = 60; placeHolder2.y = 260;
			placeHolder3.x = 350; placeHolder3.y = 260;
			this.addChild(placeHolder1);
			this.addChild(placeHolder2);
			this.addChild(placeHolder3);
		}
		
	}
}