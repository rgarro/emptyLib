package emptyLib.Embeders
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;

	public class War
	{	
		[Embed(source="../Assets/War/caleroMap.png")]
		private var caleromap:Class;
		private var _caleroMap:Bitmap = new caleromap() as Bitmap;
		
		public function get caleroMap():Bitmap{
			return _caleroMap;
		}
		
		public function get caleroMapData():BitmapData{
			return _caleroMap.bitmapData;
		}
		
		[Embed(source="../Assets/War/heinekenMig.png")]
		private var heinekenMig21:Class;
		private var _heinekenMig:Bitmap = new heinekenMig21() as Bitmap;
		
		public function get heinekenMig():Bitmap{
			return _heinekenMig;
		}
		
		public function get heinekenMigData():BitmapData{
			return _heinekenMig.bitmapData;
		}
		
		[Embed(source="../Assets/War/libianToyota.png")]
		private var libianToyotac:Class;
		private var _libianToyota:Bitmap = new libianToyotac() as Bitmap;
		
		public function get libianToyota():Bitmap{
			return _libianToyota;
		}
		
		public function get libianToyotaData():BitmapData{
			return _libianToyota.bitmapData;
		}
	}
}