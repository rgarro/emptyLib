package emptyLib.Games.Avem {
	import flash.display.Sprite;
	import flash.external.ExternalInterface;

	/**
	 * @author rolando
	 */
	[SWF(height="480",width="640",frameRate="35")] 
	public class TriviaMap extends Sprite {
		public function TriviaMap() {
			ExternalInterface.call("console.log", "starting trivia");
		}
	}
}