package emptyLib._3D.WebSite.Splash {
	
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	/**
	 * @author rolando
	 */
	public class Images {
		[Embed(source="Img/startBtn.png")]
		private var startBtn:Class;
		private var _startBtn:Bitmap = new startBtn() as Bitmap;
		
		public function get startBtnClass():Bitmap{
			return _startBtn;
		}
		
		public function get startBtnData():BitmapData{
			return _startBtn.bitmapData;
		}
	}
}