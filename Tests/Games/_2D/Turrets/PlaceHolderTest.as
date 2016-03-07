package emptyLib.Tests.Games._2D.Turrets
{
	import flash.display.Sprite;
	
	import emptyLib.Games._2D.Turrets.PlaceHolder;
	
	import flexunit.framework.Assert;
	
	
	public class PlaceHolderTest
	{	
		[Test]
		public function testPlaceHolderType():void{
			Assert.assertTrue(PlaceHolder is Sprite);
		}
	}
}