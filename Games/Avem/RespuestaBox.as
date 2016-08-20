package emptyLib.Games.Avem {
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
		protected var og:Object;
		public var is_correct:Boolean;
		
		public function RespuestaBox(obj:Object):void {
			this.is_correct = false;
			this.og = obj;
			
			var tf:TextFormat = new TextFormat();
			tf.size = 15;
			tf.color = 0xB45900;
			
			this.texto = new TextField();
			this.texto.defaultTextFormat = tf;
			this.addChild(this.texto);
			this.texto.text = og.question_body;
			this.texto.width = 400;
			
			this.texto.backgroundColor = 0xffffff;
				
		}
		
	}
}