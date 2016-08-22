package emptyLib.Games.Avem {
	import flash.media.Sound;
	import flash.events.MouseEvent;
	import flash.display.Bitmap;
	import flash.text.TextFormat;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class RespuestaBox extends Sprite {
		
		public var texto:TextField;
		public var og:Object;
		public var is_correct:Boolean;
		protected var offBg:Bitmap;
		protected var onBg:Bitmap;
		
		public var not_clicked:Boolean  = true;
		public var not_eval:Boolean = true;
		
		[Embed(source="../../Assets/Sounds/Tikk_Cli-Jeyrad-8114_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		protected var preguntaBox:emptyLib.Games.Avem.PreguntaBox;
		protected var index:Number;
		
		public function RespuestaBox(obj:Object,pO:emptyLib.Games.Avem.PreguntaBox,i:Number):void {
			this.index = i;
			this.preguntaBox = pO;
			this.not_clicked = true; 
			this.clickSound = new clickSoundClass() as Sound;
			this.useHandCursor = true;
			this.buttonMode = true;
			var asset:Assets = new Assets();
			this.offBg = new Bitmap(asset.PreguntaBoxBGoffData);
			this.addChild(this.offBg);
			
			
			this.is_correct = false;
			this.og = obj;
			
			var tf:TextFormat = new TextFormat();
			tf.size = 15;
			tf.color = 0xC8FF00;
			
			this.texto = new TextField();
			this.texto.defaultTextFormat = tf;
			this.addChild(this.texto);
			this.texto.text = og.answer_body;
			this.texto.width = 300;
			this.texto.x = 30;
			this.texto.y = 10;
			this.addEventListener(MouseEvent.CLICK, theClick);
		}
		
		protected function theClick(e:MouseEvent):void{
			if(this.not_clicked == true){
				this.not_clicked = false;
				var asset:Assets = new Assets();
				this.offBg.bitmapData = asset.PreguntaBoxBGonData;
				this.clickSound.play();
				ExternalInterface.call("console.log",this.og);
				this.preguntaBox.deffRespuestas(this.index);
			}
		}
		
		public function removeClick():void{
			this.removeEventListener(MouseEvent.CLICK, theClick);
		}
	}
}