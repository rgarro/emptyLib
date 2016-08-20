package emptyLib.Games.Avem {
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
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		protected function init(e:Event):void{
		
		}
		
	}
}