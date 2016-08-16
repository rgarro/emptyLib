package emptyLib.Embeders {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**
	 * @author rolando
	 */
	public class PreloadStart {
		[Embed(source="../Assets/PreloadStart/onemoment.png")]
		private var onemoment:Class;
		private var _onemoment:Bitmap = new onemoment() as Bitmap;
		
		public function get onemomentClass():Bitmap{
			return _onemoment;
		}
		
		public function get onemomentData():BitmapData{
			return _onemoment.bitmapData;
		}
		
		[Embed(source="../Assets/PreloadStart/startbtn.png")]
		private var startbtn:Class;
		private var _startbtn:Bitmap = new startbtn() as Bitmap;
		
		public function get startbtnClass():Bitmap{
			return _startbtn;
		}
		
		public function get startbtnData():BitmapData{
			return _startbtn.bitmapData;
		}
	}
}