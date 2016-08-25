package emptyLib.Games.Avem {
	import com.greensock.plugins.OnCompleteRenderPlugin;
	import com.greensock.TweenLite;
	import com.greensock.events.TweenEvent;
	import mx.effects.Tween;
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
		
		[Embed(source="../../Assets/Sounds/Bird_sc-TRD-8405_hifi.mp3")] 
        protected var zopiSoundClass:Class; 
		
		protected var zopiSound:Sound;
		
		protected var pBox:ScoreBox;
		public var points:Number;
		protected var index:Number = 0;
		protected var zopilote:Bitmap;
		public var resultBox:ResultadoBox;
		
		protected var stations:Array = [];
		protected var station:Station;
		
		public function Map():void {
			this.addEventListener(Event.ADDED_TO_STAGE,init);
			this.nombreBox = new AvemNombre();
			this.points = 0;
			
			this.pBox = new ScoreBox();
			this.errorSound = new errorSoundClass() as Sound;
			
			this.zopiSound = new zopiSoundClass() as Sound;
			
			
			this.bgSound = new bgSoundClass() as Sound;
			var trans:SoundTransform = new SoundTransform(0.014);
			this.bgSound.play(0,1000,trans);
		}
		
		protected function init(event:Event):void{
			var assets:Assets = new Assets();
			this.zopilote = new Bitmap(assets.zopiloteData);
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
				
				this.addChild(this.zopilote);
				this.zopilote.x = 400;
				this.zopilote.y = -30;
				this.zopiSound.play();
				TweenLite.to(this.zopilote, 3.5, {x:-130, y:200, scaleX:0.7, scaleY:0.7});
				
				this.loadStations();
							
			}else{
				this.errorSound.play();
				this.nombreBox.errMsg.text = " *Nombre";
			}
		}
		
		
		
		protected function loadStations():void{
			var request:URLRequest=new URLRequest();
			request.url="/trivia/estaciones";
			//request.url="http://localhost:2001/trivia/estaciones";
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
			var i:Number = 0;
			for each(var og:Object in objR){	
				if(Number(og.station_longitude)  < 1000 && Number(og.station_latitude) < 1000){
					if(Number(og.question_id) > 0){
						var active:Boolean = false;
						if(this.index == 0){
							active = true;
							this.index = 1;
						}
						var mY:Number = (Number(og.station_longitude) /2) - 50;
						var mX:Number = (Number(og.station_latitude)/2) - 25;
						station = new Station(mX, mY,og,active);
						station.map = this;
						station.index = i;
						this.addChild(station);
						stations[i] = station;
						i = i + 1;
					}
				}					
			}
		}
		
		public function showMarkers():void{
			for each(var station:Station in stations){
				station.showMarker();
			}
		}
		
		public function hideMarkers():void{
			for each(var station:Station in stations){
				station.hideMarker();
			}
		}
		
		public function nextStation(next:Number):void{
			if(next < this.stations.length){
				stations[next].activateStation();
			}else{
				this.resultBox = new ResultadoBox();
				this.addChild(this.resultBox);
			}
		}		
		
		public function updatePoints():void{
			this.pBox.puntosTxt.text = this.points.toString();
		}
		
	}
}