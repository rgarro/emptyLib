package emptyLib.Games.Avem {
	import flash.events.MouseEvent;
	import emptyLib.Tools.PreloadStart;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	[SWF(height="500",width="500",frameRate="35")] 
	public class TriviaMap extends Sprite {
		
		protected var map:Bitmap;
		public var loadStart:PreloadStart;
		public var not_loaded:Boolean;
		protected var game:Map;
		
		public function TriviaMap() {
			this.not_loaded = true;
			this.loadStart = new PreloadStart();
			this.addChild(this.loadStart);
			this.addEventListener(Event.ENTER_FRAME,loading);
		}
		
		public function loading(e:Event):void{	
			if(this.loadStart.isStarted && this.loadStart.isLoaded && this.not_loaded){
				this.not_loaded = false;
				this.removeEventListener(Event.ENTER_FRAME,loading);
				this.gameStart();		
			}
		}
		
		private function gameStart():void{
			this.loadStart.end();
			this.removeChild(this.loadStart);
			game = new Map();
			this.addChild(game);
		}
		
	}
}