package emptyLib.Games.Avem {

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**
	 * @author rolando
	 */
	public class Assets {
		[Embed(source="Assets/map.png")]//black ace
		private var map:Class;
		private var _map:Bitmap = new map() as Bitmap;
		
		public function get mapClass():Bitmap{
			return _map;
		}
		
		public function get mapData():BitmapData{
			return _map.bitmapData;
		}
	}
}