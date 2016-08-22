package emptyLib.Games.Avem {
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
		
		public function PreguntaBox(dbObj:Object):void {
			this.og = dbObj;
			var assets:Assets = new Assets();
			this.backgroud = new Bitmap(assets.PreguntaBoxData);
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void{
			this.addChild(this.backgroud);
			this.titles();
		}
		
		private function titles():void{
			var tf:TextFormat = new TextFormat();
			tf.size = 20;
			tf.color = 0xffffff;
			var pf:TextFormat = new TextFormat();
			pf.size = 14;
			pf.color = 0x0040FF;
			this.titulo = new TextField();
			this.titulo.defaultTextFormat = tf;
			this.addChild(titulo);
			titulo.width = 300;
			titulo.text = this.og.station_name as String;
			titulo.x = 10;
			titulo.y = 10;			
			this.pregunta = new TextField();
			this.pregunta.defaultTextFormat = pf;
			this.addChild(this.pregunta);
			this.pregunta.text = this.og.question as String;
			this.pregunta.width = 500;
			this.pregunta.x = 10;
			this.pregunta.y = 70;
			this.loadQuestions();
		}
		
		private function loadQuestions():void{
			var request:URLRequest=new URLRequest();
			//request.url="/trivia/estacion_preguntas?question_id=" + String(this.og.question_id);
			request.url="http://localhost:2001/trivia/estacion_preguntas?question_id=" + String(this.og.question_id);
//ExternalInterface.call("console.log",request.url);			
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
				//respuesta.addEventListener(MouseEvent.CLICK, this.respuestaClick);
				respuestas.push(respuesta);
				//ExternalInterface.call("console.log",og);
				py = py + 45;
				index = index + 1;
			}
		}
		
		public function deffRespuestas(clicked:Number):void{
			var i:Number = 0;
			for each(var r:emptyLib.Games.Avem.RespuestaBox in this.respuestas){
				r.removeClick();
			}
			ExternalInterface.call("console.log",this.respuestas[i].og.puntos);
			this.station.map.points =  this.station.map.points + this.respuestas[i].og.puntos;
			this.station.map.updatePoints();
		}
		
		protected function respuestaClick(event:MouseEvent):void{
			ExternalInterface.call("console.log",this.og);		
		}
		
		protected function notAllowed(event:Event):void{
			ExternalInterface.call("alert", "Security Error, Data fetch not allowed");
		}
		
		protected function notFound(event:Event):void{
			ExternalInterface.call("alert", "Security Error, Data fetch source not found");
		}
	}
}