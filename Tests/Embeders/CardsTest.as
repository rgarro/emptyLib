package emptyLib.Tests.Embeders
{
	import flexunit.framework.Assert;
	import flash.display.Bitmap;
	import emptyLib.Embeders.Cards;
	
	public class CardsTest
	{		
		[Test]
		public function testGettersSetsRectangularBitmapClass():void
		{
			var card_is_rectangular_bitmap:Boolean = false;
			var assets:Cards = new Cards();
			var card_image:Bitmap = new Bitmap(assets.black_aceData);
			if(card_image.bitmapData.height > 500 && card_image.bitmapData.width > 300){
				card_is_rectangular_bitmap = true;
			}
			if(card_image.bitmapData.height < 600 && card_image.bitmapData.width < 400){
				card_is_rectangular_bitmap = true;
			}else{
				card_is_rectangular_bitmap = false;
			}
			Assert.assertTrue(card_is_rectangular_bitmap);
		}
	}
}