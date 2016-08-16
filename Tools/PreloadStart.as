package emptyLib.Tools {
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import emptyLib.Embeders.PreloadStart;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.events.Event;
	

	/**
	 * @author rolando
	 */
	public class PreloadStart extends Sprite {
		
		protected var preloadStatusImg:Bitmap;
		protected var preloadStatusTxt:TextField;
		public var isLoaded:Boolean;
		public var isStarted:Boolean;
		public var startBtn:Bitmap;
		protected var not_showing_start_btn:Boolean;
		protected var centerX:Number;
		protected var centerY:Number;
		
		public function PreloadStart() {
			this.isLoaded = false;
			this.isStarted = false;
			this.not_showing_start_btn = true;
			var assets:emptyLib.Embeders.PreloadStart = new emptyLib.Embeders.PreloadStart();
			this.preloadStatusImg = new Bitmap(assets.onemomentData);
			this.startBtn = new Bitmap(assets.startbtnData);
			this.addChild(this.preloadStatusImg);
			
			preloadStatusTxt = new TextField();
			this.addChild(preloadStatusTxt);
			
			
			this.addEventListener(Event.ADDED_TO_STAGE,init);
		}
		
		private function init(e:Event):void{
			this.width = stage.width;
			this.height = stage.height;
			centerX = Math.round(stage.width/2);	
			centerY = Math.round(stage.height/2);
			preloadStatusTxt.textColor = 0x000000;
			preloadStatusTxt.width = 90;
			preloadStatusTxt.text = "LOADED: 0%";
			preloadStatusTxt.x = centerX + 80;
			preloadStatusTxt.y = 80;
					
			this.preloadStatusImg.x = centerX;
			this.preloadStatusImg.y = centerY;
			this.addEventListener(Event.ENTER_FRAME,loading);
			
		}
		
		public function loading(e:Event):void{
			var total:Number = stage.loaderInfo.bytesTotal;
			var loaded:Number = stage.loaderInfo.bytesLoaded;
			var loadPercent:Number = Math.floor((loaded/total)*100);
			this.preloadStatusTxt.text = "LOADED: " + loadPercent.toString() + "%";
			if(loadPercent == 100){
				this.isLoaded = true;
			}
			if(this.isLoaded && this.not_showing_start_btn){
				this.not_showing_start_btn = false;
				var timeout:Timer = new Timer(2500);
				timeout.addEventListener(TimerEvent.TIMER, setStart);
				timeout.start();					
			}
		}
		
		protected function setStart(e:Event):void{
			this.removeChild(this.preloadStatusImg);
			this.removeEventListener(Event.ENTER_FRAME, loading);	
			this.addChild(this.startBtn);
			this.startBtn.x = centerX + 80;
			this.startBtn.y = centerY;
			this.isStarted = true;
		}
		
		public function end():void{
			this.removeChild(this.preloadStatusTxt);
			this.removeChild(this.startBtn);
		}
	}
}