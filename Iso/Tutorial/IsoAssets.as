package emptyLib.Iso.Tutorial {
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	
	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class IsoAssets {
		
		[Embed(source="Assets/isoCopter.png")]
		private var isoCopter:Class;
		private var _isoCopter:Bitmap = new isoCopter() as Bitmap;
		
		public function get isoCopterClass():Bitmap{
			return _isoCopter;
		}
		
		public function get isoCopterData():BitmapData{
			return _isoCopter.bitmapData;
		}
		
	}
}