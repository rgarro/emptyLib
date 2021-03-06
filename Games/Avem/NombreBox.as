package emptyLib.Games.Avem {
	import flash.text.TextFormat;
	import flash.text.TextFieldType;
	import flash.text.TextField;
	import flash.media.Sound;
	import flash.events.MouseEvent;
	import flash.display.Bitmap;
	import flash.display.Sprite;

	/**
	 * @author rolando
	 */
	public class NombreBox extends Sprite {
		
		protected var assets:Assets;
		protected var bg:Bitmap;
		protected var button:Bitmap;
		protected var errMsg:Bitmap;
		protected var buttonBox:Sprite;
		public var map:Map;
		protected var nombreInput:TextField;
		protected var first_error:Boolean;
		
		[Embed(source="../../Assets/Sounds/Excite-xiar0-8512_hifi.mp3")] 
        protected var errorSoundClass:Class; 
		
		protected var errorSound:Sound;
		
		public function NombreBox():void {
			
			this.first_error = false;
			
			this.assets = new Assets();
			this.bg = new Bitmap(assets.NombreBoxBGData);
			this.addChild(this.bg);
			
			this.x=80;this.y = 80;
			
			var nf:TextFormat = new TextFormat();
			nf.size = 20;
			nf.color = 0x000000;
			
			
			this.nombreInput = new TextField();
			this.nombreInput.defaultTextFormat = nf;
			this.nombreInput.type = TextFieldType.INPUT;
			this.nombreInput.width = 228;
			this.nombreInput.height = 24;
			this.addChild(this.nombreInput);
			
			 this.nombreInput.textColor = 0x000000;
			this.nombreInput.background = true;
			this.nombreInput.backgroundColor = 0xfcfdba;
			this.nombreInput.border = true;
			this.nombreInput.borderColor = 0x000000; 
			
			 
			this.nombreInput.x = 81; this.nombreInput.y = 82;
			
			this.errorSound = new errorSoundClass() as Sound;
			
			
			this.button = new Bitmap(assets.NombreBoxBtnData);
			
			this.buttonBox = new Sprite();
			this.buttonBox.useHandCursor = true;
			this.buttonBox.buttonMode = true;
			this.addChild(this.buttonBox);
			this.buttonBox.addChild(this.button);
			this.buttonBox.x=125; this.buttonBox.y = 146;
			this.buttonBox.addEventListener(MouseEvent.CLICK, theClick);
			
			this.errMsg = new Bitmap(assets.NombreBoxErrMsgData);
		}
		
		protected function theClick(e:MouseEvent):void{
			if(first_error){
				this.removeChild(this.errMsg);
			}
			if( this.nombreInput.length > 3){
				this.removeEventListener(MouseEvent.CLICK, theClick);
				this.map.iniciarClick(this.nombreInput.text);			
			}else{
				this.errorSound.play();
				this.addChild(this.errMsg);
				this.errMsg.x = 113; this.y = 118;
				this.first_error = true;
				//this.nombreBox.errMsg.text = " *Nombre";
			}
			
		}
	}
}