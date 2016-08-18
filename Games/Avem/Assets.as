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
		
		[Embed(source="Assets/mapmarker.png")]//black ace
		private var mapmarker:Class;
		private var _mapmarker:Bitmap = new mapmarker() as Bitmap;
		
		public function get mapmarkerClass():Bitmap{
			return _mapmarker;
		}
		
		public function get mapmarkerData():BitmapData{
			return _mapmarker.bitmapData;
		}
		
		[Embed(source="Assets/mapmarkeroff.png")]//black ace
		private var mapmarkeroff:Class;
		private var _mapmarkeroff:Bitmap = new mapmarkeroff() as Bitmap;
		
		public function get mapmarkeroffClass():Bitmap{
			return _mapmarkeroff;
		}
		
		public function get mapmarkeroffData():BitmapData{
			return _mapmarkeroff.bitmapData;
		}
	}
}