package emptyLib.Games.Avem {
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	//import flash.external.ExternalInterface;

	/**
	 * @author rolando
	 */
	public class Map extends Sprite {
		
		public var map:Bitmap;
		protected var nombreBox:AvemNombre;
		
		public function Map():void {
			this.addEventListener(Event.ADDED_TO_STAGE,init);
			nombreBox = new AvemNombre();
		}
		
		protected function init(event:Event):void{
			var assets:Assets = new Assets();
			this.map = new Bitmap(assets.mapData);
			this.addChild(this.map);
			this.map.height = 500;this.map.width = 500;
			this.addChild(this.nombreBox);
			this.nombreBox.x = 90;
			this.nombreBox.y = 100;
			//ExternalInterface.call("console.log", "Starting Trivia");
		}
	}
}