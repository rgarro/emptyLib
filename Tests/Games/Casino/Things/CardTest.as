package emptyLib.Tests.Games.Casino.Things
{
	import emptyLib.Embeders.Cards;
	import emptyLib.Games.Casino.Things.Card;
	
	import flexunit.framework.Assert;

	public class CardTest
	{		
			
			public var card:emptyLib.Games.Casino.Things.Card;
			/**/
			
			[Before]
			public function setUp():void
			{
				var assets:Cards = new Cards();
				card  = new Card("black","ace","spades",assets.black_aceData);
			}
			
			[Test]
			public function testCardProperties():void{
				Assert.assertTrue(card.color is String);
			}
			
		
	}
}