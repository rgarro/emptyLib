package emptyLib.Games.Avem {
	import flash.text.TextField;
	import flash.events.MouseEvent;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.external.ExternalInterface;
	import flash.net.URLLoader;
	import flash.net.URLRequestMethod;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequest;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.system.Security;
	import com.adobe.serialization.json.JSON;
	
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
		
		public var preguntaBox:PreguntaBox;
		public var preguntas:Array;
		
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
				this.preguntaBox = new PreguntaBox();
				this.addChild(this.preguntaBox);
				this.mouseChildren = false;
				this.preguntaBox.x = 55; this.preguntaBox.y = 55;
				this.preguntaBox.Titulo.text = this.dObj.station_name as String;
				this.preguntaBox.Pregunta.text = this.dObj.station_description as String;
				this.loadQuestions();
			}else{
				this.nonclickSound.play();
			}	
		}
		
		private function loadQuestions():void{
			var request:URLRequest=new URLRequest();
			//request.url="/trivia/estacion_preguntas";
			request.url="http://localhost:2001/trivia/estacion_preguntas?station_id=" + String(this.dObj.station_id);
			request.requestHeaders=[new URLRequestHeader("Content-Type", "application/json")];
			request.method=URLRequestMethod.GET;
			var loader:URLLoader=new URLLoader();
			loader.addEventListener(Event.COMPLETE, receiveQuestions);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, notAllowed);
			loader.addEventListener(IOErrorEvent.IO_ERROR, notFound);
			loader.load(request);	
		}
		
		protected function receiveQuestions(event:Event):void{
			var myResults:String = event.target.data;
			var objR:Object = com.adobe.serialization.json.JSON.decode(myResults);
			var py:Number = 60;
			for each(var og:Object in objR){
				var respuesta:TextField = new TextField();
				var o:Object = {};
				ExternalInterface.call("console.log",og.question_body);
				respuesta.text = og.question_body;
				respuesta.textColor = 0x000000;
				respuesta.width = 300;
				this.preguntaBox.addChild(respuesta);
				respuesta.y = py;
				respuesta.x = 20;
				respuesta.addEventListener(MouseEvent.CLICK, this.respuestaClick);
				o["textfield"] = respuesta;
				o["object"] = og;
				//respuesta[og] = og;
				preguntas.push(og);
				ExternalInterface.call("console.log",og);
				py = py + 40;
			}
		}
		
		protected function respuestaClick(event:MouseEvent):void{
ExternalInterface.call("console.log",event);
ExternalInterface.call("console.log",parent);		
		}
		
		protected function notAllowed(event:Event):void{
			ExternalInterface.call("alert", "Security Error, Data fetch not allowed");
		}
		
		protected function notFound(event:Event):void{
			ExternalInterface.call("alert", "Security Error, Data fetch source not found");
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