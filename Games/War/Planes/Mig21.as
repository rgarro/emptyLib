package emptyLib.Games.War.Planes
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	
	import emptyLib.Embeders.War;
	
	public class Mig21 extends Sprite
	{
		private var body:Bitmap;
		public var speed:int = 3;
		
		public function Mig21()
		{
			super();			
			var assets:War = new War();
			this.body = new Bitmap(assets.heinekenMigData);
			this.addChild(this.body);
			
			this.addEventListener(Event.ADDED_TO_STAGE,init);
		}
		
		private function init(e:Event):void{
			this.x = Math.round(stage.width/2);
			this.y = Math.round(stage.height/2);
			this.addEventListener(Event.ENTER_FRAME,loop);
		}
		
		private function loop(e:Event):void{			
			this.y = this.y - 3;
			if(this.y < 0){
				this.y = stage.height;
			}
		}
	}
}