package emptyLib.Games.War
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	
	import emptyLib.Embeders.War;
	import emptyLib.Games.War.Planes.Mig21;
	
	public class CaleroStrike extends Sprite
	{
		public var map:Bitmap;
		public var mig:Mig21;
		
		public function CaleroStrike()
		{
			super();
			var assets:War = new War();
			this.map = new Bitmap(assets.caleroMapData);
			this.addChild(this.map);
			
			this.mig = new Mig21();
			this.addChild(this.mig);
			
		}
		
		public function loop(e:Event):void{
		
		}
	}
}