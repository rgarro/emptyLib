package emptyLib.Games.Avem {
	import flash.media.Sound;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.events.MouseEvent;
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.net.URLLoader;
	import flash.net.URLRequestMethod;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequest;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.system.Security;
	import com.adobe.serialization.json.JSON;
	
	import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class PreguntaBox extends Sprite {
		
		protected var backgroud:Bitmap;
		protected var titulo:TextField;
		protected var pregunta:TextField;
		protected var respuestas:Array;
		protected var og:Object;
		public var station:Station;
		[Embed(source="../../Assets/Sounds/amio_sma-Aftermat-7396_hifi.mp3")] 
        protected var yiguiSoundClass:Class; 
		protected var yiguiSound:Sound;
		protected var assets:Assets;
		protected var yiguirro:Bitmap;
		
		public function PreguntaBox(dbObj:Object):void {
			this.og = dbObj;
			this.yiguiSound = new yiguiSoundClass() as Sound;
			assets = new Assets();
			this.yiguirro = new Bitmap(assets.yiguirroData);
			this.backgroud = new Bitmap(assets.PreguntaBoxData);
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void{
			this.station.map.hideMarkers();
			this.addChild(this.backgroud);
			
			this.titles();
		}
		
		private function titles():void{
			var tf:TextFormat = new TextFormat();
			tf.size = 20;
			tf.color = 0x000000;
			var pf:TextFormat = new TextFormat();
			pf.size = 20;
			pf.color = 0xff2626;
			this.titulo = new TextField();
			this.titulo.defaultTextFormat = tf;
			this.addChild(titulo);
			titulo.width = 450;
			//titulo.text = String(this.station.index + 1) + " - " + this.og.station_name as String;
			titulo.text = "Estación : " + String(this.station.index + 1);
			this.titulo.multiline = true;
			this.titulo.wordWrap = true;
			titulo.x = 10;
			titulo.y = 10;			
			this.pregunta = new TextField();
			this.pregunta.defaultTextFormat = pf;
			this.addChild(this.pregunta);
			this.pregunta.text = this.og.question as String;
			this.pregunta.multiline = true;
			this.pregunta.wordWrap = true;
			this.pregunta.width = 350;
			this.pregunta.x = 10;
			this.pregunta.y = 70;
			this.loadQuestions();
		}
		
		private function loadQuestions():void{
			var request:URLRequest=new URLRequest();
			//request.url="/trivia/estacion_preguntas?question_id=" + String(this.og.question_id);
			request.url="http://localhost:2001/trivia/estacion_preguntas?question_id=" + String(this.og.question_id);			
			request.requestHeaders=[new URLRequestHeader("Content-Type", "application/json")];
			request.method=URLRequestMethod.GET;
			var loader:URLLoader=new URLLoader();
			loader.addEventListener(Event.COMPLETE, receiveQuestions);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, notAllowed);
			loader.addEventListener(IOErrorEvent.IO_ERROR, notFound);
			loader.load(request);	
		}
		
		protected function receiveQuestions(event:Event):void{
			this.respuestas = new Array();
			var myResults:String = event.target.data;
			var objR:Object = com.adobe.serialization.json.JSON.decode(myResults);
			var py:Number = 140;
			var index:Number = 0;
			for each(var og:Object in objR){
				var respuesta:RespuestaBox = new RespuestaBox(og,this,index);
				this.addChild(respuesta);
				respuesta.y = py;
				respuesta.x = 10;
				respuestas.push(respuesta);
				py = py + 45;
				index = index + 1;
			}
		}
		
		public function deffRespuestas(clicked:Number):void{
			var i:Number = 0;
			for each(var r:emptyLib.Games.Avem.RespuestaBox in this.respuestas){
				r.removeClick();
			}
			
			this.station.map.points =  this.station.map.points + parseInt(this.respuestas[i].og.puntos);
			this.station.map.updatePoints();
			this.yiguiSound.play();
			this.addChild(this.yiguirro);
			this.yiguirro.x = 100;
			this.yiguirro.y = 100;
			var timeout:Timer = new Timer(2500);
			timeout.addEventListener(TimerEvent.TIMER, setEnd);
			timeout.start();	
		}
		
		public function setEnd(e:Event):void{
			this.station.terminarPregunta();
		}
		
		protected function respuestaClick(event:MouseEvent):void{
			//ExternalInterface.call("console.log",this.og);		
		}
		
		protected function notAllowed(event:Event):void{
			ExternalInterface.call("alert", "Security Error, Data fetch not allowed");
		}
		
		protected function notFound(event:Event):void{
			ExternalInterface.call("alert", "Security Error, Data fetch source not found");
		}
	}
}