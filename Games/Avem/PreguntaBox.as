package emptyLib.Games.Avem {
	import flash.text.TextField;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.Sprite;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class PreguntaBox extends Sprite {
		
		protected var backgroud:Bitmap;
		protected var titulo:TextField;
		protected var pregunta:TextField;
		protected var respuestas:Array;
		protected var og:Object;
		
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
			this.titulo = new TextField();
			titulo.textColor = 0x000000;
			titulo.width = 300;
			this.addChild(titulo);
			titulo.text = this.og.station_name as String;
			titulo.x = 10;
			titulo.y = 10;
			//this.preguntaBox.Pregunta.text = this.dObj.station_description as String;
			//this.loadQuestions();
		}
		
	}
}