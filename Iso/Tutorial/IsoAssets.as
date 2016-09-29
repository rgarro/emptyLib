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
		
		[Embed(source="Assets/sideCombatCopterA.png")]
		private var sideCombatCopterA:Class;
		private var _sideCombatCopterA:Bitmap = new sideCombatCopterA() as Bitmap;
		
		public function get sideCombatCopterAClass():Bitmap{
			return _sideCombatCopterA;
		}
		
		public function get sideCombatCopterAData():BitmapData{
			return _sideCombatCopterA.bitmapData;
		}
		
		[Embed(source="Assets/sideCombatCopterB.png")]
		private var sideCombatCopterB:Class;
		private var _sideCombatCopterB:Bitmap = new sideCombatCopterB() as Bitmap;
		
		public function get sideCombatCopterBClass():Bitmap{
			return _sideCombatCopterB;
		}
		
		public function get sideCombatCopterBData():BitmapData{
			return _sideCombatCopterB.bitmapData;
		}
		
	}
}