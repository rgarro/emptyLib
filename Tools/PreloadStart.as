package emptyLib.Tools {
	import emptyLib.Embeders.PreloadStart;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.events.Event;
	import flash.external.ExternalInterface;

	/**
	 * @author rolando
	 */
	public class PreloadStart extends Sprite {
		
		protected var preloadStatusImg:Bitmap;
		protected var preloadStatusTxt:TextField;
		public var isLoaded:Boolean;
		public var startBtn:Bitmap;
		
		public function PreloadStart() {
			this.isLoaded = false;
			var assets:emptyLib.Embeders.PreloadStart = new emptyLib.Embeders.PreloadStart();
			this.preloadStatusImg = new Bitmap(assets.onemomentData);
			this.addChild(this.preloadStatusImg);
			
			preloadStatusTxt = new TextField();
			this.addChild(preloadStatusTxt);
			
			
			this.addEventListener(Event.ADDED_TO_STAGE,init);
		}
		
		private function init(e:Event):void{
			this.width = stage.width;
			this.height = stage.height;
			var centerX:Number = Math.round(stage.width/2);	
			var centerY:Number = Math.round(stage.height/2);
ExternalInterface.call("console.log", centerX);	
ExternalInterface.call("console.log", centerY);	
			preloadStatusTxt.textColor = 0x000000;
			preloadStatusTxt.width = 80;
			preloadStatusTxt.text = "LOADING: 0%";
			preloadStatusTxt.x = centerX + 100;
			preloadStatusTxt.y = 100;
					
			this.preloadStatusImg.x = centerX;
			this.preloadStatusImg.y = centerY;
			//this.addEventListener(Event.ENTER_FRAME,loop);
			
		}
	}
}