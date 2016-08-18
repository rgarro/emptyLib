package emptyLib.Games.Avem {
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;

	/**
	 * @author rolando
	 */
	public class Station extends Sprite {
		
		public var marker:Bitmap;
		protected var markerX:Number;
		protected var markerY:Number;
		
		public function Station(mX:Number,mY:Number) {
			markerX = mX;
			markerY = mY;
			this.addEventListener(Event.ADDED_TO_STAGE,init);
		}
		
		protected function init(event:Event):void{
			var assets:Assets = new Assets();
			this.marker = new Bitmap(assets.mapmarkerData);
			this.addChild(this.marker);
			this.marker.x = this.markerX;
			this.marker.y = this.markerY;
			
			//this.addEventListener(MouseEvent.CLICK, iniciarClick);
		}
	}
}