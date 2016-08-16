package emptyLib.Games.Avem {
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;

	/**
	 * @author rolando
	 */
	public class Map extends Sprite {
		
		public var map:Bitmap;
		
		public function Map():void {
			this.addEventListener(Event.ADDED_TO_STAGE,init);
		}
		
		protected function init(event:Event):void{
			var assets:Assets = new Assets();
			this.map = new Bitmap(assets.mapData);
			this.addChild(this.map);
			this.map.height = 500;this.map.width = 500;
			ExternalInterface.call("console.log", "Starting Trivia");
		}
	}
}