package emptyLib.Games.War
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	
	import emptyLib.Embeders.War;
	import emptyLib.Games.War.Trucks.LibianToyota;
	
	public class CaleroStrike extends Sprite
	{
		public var map:Bitmap;
		public var truck:LibianToyota;
		
		public function CaleroStrike()
		{
			super();
			var assets:War = new War();
			this.map = new Bitmap(assets.caleroMapData);
			this.addChild(this.map);
			
			this.truck = new LibianToyota();
			this.addChild(this.truck);
			
		}
		
		public function loop(e:Event):void{
		
		}
	}
}