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
			this.placeHolder1 = new PlaceHolder(200,60,0x646390);
			this.placeHolder2 = new PlaceHolder(60,260,0x646390);
			this.placeHolder3 = new PlaceHolder(350,260,0x646390);
			
			this.addChild(placeHolder1);
			this.addChild(placeHolder2);
			this.addChild(placeHolder3);
		}
		
	}
}