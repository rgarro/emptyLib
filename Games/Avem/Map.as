package emptyLib.Games.Avem {
	import flash.media.SoundTransform;
	import flash.media.Sound;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;
	import flash.net.URLLoader;
	import flash.net.URLRequestMethod;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequest;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.system.Security;
	import com.adobe.serialization.json.JSON;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Map extends Sprite {
		
		public var map:Bitmap;
		protected var nombreBox:AvemNombre;
		protected var nombreJugador:String;
		
		[Embed(source="../../Assets/Sounds/Excite-xiar0-8512_hifi.mp3")] 
        protected var errorSoundClass:Class; 
		
		protected var errorSound:Sound;
		
		[Embed(source="../../Assets/Sounds/Deep_For-ITE-8210_hifi.mp3")] 
        protected var bgSoundClass:Class; 
		
		protected var bgSound:Sound;
		protected var pBox:PointsBox;
		protected var points:Number;
		protected var index:Number = 0;
		
		protected var stations:Array = [];
		protected var station:Station;
		
		public function Map():void {
			this.addEventListener(Event.ADDED_TO_STAGE,init);
			this.nombreBox = new AvemNombre();
			this.points = 0;
			this.pBox = new PointsBox();
			this.errorSound = new errorSoundClass() as Sound;
			
			this.bgSound = new bgSoundClass() as Sound;
			var trans:SoundTransform = new SoundTransform(0.014);
			this.bgSound.play(0,1000,trans);
		}
		
		protected function init(event:Event):void{
			var assets:Assets = new Assets();
			this.map = new Bitmap(assets.mapData);
			this.addChild(this.map);
			this.map.height = 500;this.map.width = 500;
			this.addChild(this.nombreBox);
			this.nombreBox.x = 80;
			this.nombreBox.y = 100;
			this.nombreBox.inicioBtn.addEventListener(MouseEvent.CLICK, iniciarClick);
		}
		
		protected function iniciarClick(event:MouseEvent):void{
			this.nombreJugador = this.nombreBox.nombreJugador.text;
			if( this.nombreJugador.length > 3){
				this.nombreBox.inicioBtn.removeEventListener(MouseEvent.CLICK, iniciarClick);
				this.removeChild(this.nombreBox);
				this.addChild(this.pBox);
				this.pBox.nombreTxt.text = this.nombreJugador as String;
				this.pBox.puntosTxt.text = this.points.toString();
				this.loadStations();
			}else{
				this.errorSound.play();
				this.nombreBox.errMsg.text = " *Nombre";
			}
		}
		
		protected function loadStations():void{
			var request:URLRequest=new URLRequest();
			//request.url="/trivia/estaciones";
			request.url="http://localhost:2001/trivia/estaciones";
			request.requestHeaders=[new URLRequestHeader("Content-Type", "application/json")];
			request.method=URLRequestMethod.GET;
			var loader:URLLoader=new URLLoader();
			loader.addEventListener(Event.COMPLETE, receiveStations);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, notAllowed);
			loader.addEventListener(IOErrorEvent.IO_ERROR, notFound);
			loader.load(request);
		}
		
		protected function notAllowed(event:Event):void{
			ExternalInterface.call("alert", "Security Error, Data fetch not allowed");
		}
		
		protected function notFound(event:Event):void{
			ExternalInterface.call("alert", "Security Error, Data fetch source not found");
		}
		
		protected function receiveStations(event:Event):void{
			var myResults:String = event.target.data;
			var objR:Object = com.adobe.serialization.json.JSON.decode(myResults);
			for each(var og:Object in objR){
				var active:Boolean = false;
				if(this.index == 0){
					active = true;
					this.index = 1;
				}
				var mX:Number = Number(og.station_longitude);
				var mY:Number = Number(og.station_latitude);
				station = new Station(mX - 37, mY - 50,og,active);
				this.addChild(station);
				stations.push(station);			
		
			}
		}
		
	}
}