package emptyLib.Games.Avem {
	import flash.display.Bitmap;
	import flash.display.Sprite;

	/**
	 * @author rolando
	 */
	public class ResultadoBox extends Sprite {
		
		protected var bg:Bitmap;
		
		
		public function ResultadoBox():void {
			var assets:Assets = new Assets();
			bg = new Bitmap(assets.ResultadoBoxData);
			this.addChild(bg);
			this.x = 100;
			this.y = 100;
		}
	}
}