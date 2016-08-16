package emptyLib.Games.Avem {
	import flash.media.SoundTransform;
	import flash.media.Sound;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;
	import flash.media.SoundMixer;

	/**
	 * @author rolando
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
		
		public function Map():void {
			this.addEventListener(Event.ADDED_TO_STAGE,init);
			nombreBox = new AvemNombre();
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
				ExternalInterface.call("console.log", "nombre box acabo");
			}else{
				this.errorSound.play();
				this.nombreBox.errMsg.text = " *Nombre";
			}
		}
	}
}