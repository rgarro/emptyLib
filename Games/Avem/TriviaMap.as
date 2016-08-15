package emptyLib.Games.Avem {
	import emptyLib.Tools.PreloadStart;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	[SWF(height="500",width="500",frameRate="35")] 
	public class TriviaMap extends Sprite {
		
		protected var map:Bitmap;
		public var loadStart:PreloadStart;
		
		public function TriviaMap() {
			this.loadStart = new PreloadStart();
			this.addChild(this.loadStart);
			/*var assets:Assets = new Assets();
			this.map = new Bitmap(assets.mapData);
			this.addChild(this.map);
			this.map.height = 500;this.map.width = 500;
			ExternalInterface.call("console.log", "Starting Trivia");*/
		}
	}
}