package emptyLib.Games.Avem {
	import flash.text.TextField;
	import flash.events.MouseEvent;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.external.ExternalInterface;
	
	
	public class Station extends Sprite {
		
		public var marker:Bitmap;
		protected var markerX:Number;
		protected var markerY:Number;
		public var active:Boolean;
		
		[Embed(source="../../Assets/Sounds/ambient_-agent_vi-7414_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		[Embed(source="../../Assets/Sounds/Multiple-Intermed-532_hifi.mp3")] 
        protected var nonclickSoundClass:Class; 
		protected var nonclickSound:Sound;
		
		protected var dObj:Object;
		
		public var assets:Assets;
		
		public var preguntaBox:emptyLib.Games.Avem.PreguntaBox;
		public var preguntas:Array;
		public var map:Map;
		
		public function Station(mX:Number,mY:Number,dataObj:Object,is_active:Boolean=true):void {
			this.preguntas = new Array();
			this.active = is_active; 
			this.dObj = dataObj;
			markerX = mX;
			markerY = mY;
			this.clickSound = new clickSoundClass() as Sound;
			this.nonclickSound = new nonclickSoundClass() as Sound;
			this.addEventListener(Event.ADDED_TO_STAGE,init);
		}
		
		protected function init(event:Event):void{
			this.useHandCursor = true;
			this.buttonMode = true;
			assets = new Assets();
			if(this.active){
				this.marker = new Bitmap(assets.mapmarkerData);
			}else{
				this.marker = new Bitmap(assets.mapmarkeroffData);
			}
			this.addChild(this.marker);
			this.marker.x = this.markerX;
			this.marker.y = this.markerY;
			this.addEventListener(MouseEvent.CLICK, iniciarClick);
		}
		
		private function iniciarClick(event:MouseEvent):void{
			if(this.active){
				this.useHandCursor = false;
				this.buttonMode = false;
				this.removeEventListener(MouseEvent.CLICK, iniciarClick);
				this.clickSound.play();
				this.preguntaBox = new emptyLib.Games.Avem.PreguntaBox(this.dObj);
				this.preguntaBox.station = this;
				this.addChild(this.preguntaBox);
				//this.mouseChildren = false;
				this.preguntaBox.x = 55; this.preguntaBox.y = 55;
			}else{
				this.nonclickSound.play();
			}	
		}
		
		public function activateStation():void{
			this.removeChild(this.marker);
			this.marker = null;
			this.marker = new Bitmap(assets.mapmarkerData);
			this.active = true;
			this.addChild(this.marker);
			this.marker.x = this.markerX;
			this.marker.y = this.markerY;
		}
		
		public function unactivateStation():void{
			this.removeChild(this.marker);
			this.marker = null;
			this.marker = new Bitmap(assets.mapmarkeroffData);
			this.active = false;
			this.addChild(this.marker);
			this.marker.x = this.markerX;
			this.marker.y = this.markerY;
		}
	}
}