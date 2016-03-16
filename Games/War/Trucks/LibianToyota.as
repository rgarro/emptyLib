package emptyLib.Games.War.Trucks
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	import emptyLib.Embeders.War;
	
	public class LibianToyota extends Sprite
	{
		private var body:Bitmap;
		public var speed:Number = 5;
		public var up:Boolean = false;
		public var left:Boolean = false;
		public var down:Boolean = false;
		public var right:Boolean = false;
		
		
		public function LibianToyota()
		{
			super();
			var assets:War = new War();
			this.body = new Bitmap(assets.libianToyotaData);
			this.addChild(this.body);
			
			this.addEventListener(Event.ADDED_TO_STAGE,init);
		}
		
		private function init(e:Event):void{
			this.x = Math.round(stage.width/2);
			this.y = Math.round(stage.height/2);
			this.addEventListener(Event.ENTER_FRAME,loop);
			stage.addEventListener(KeyboardEvent.KEY_DOWN,onPress);
			stage.addEventListener(KeyboardEvent.KEY_UP,onRelease);
		}
		
		private function loop(e:Event):void{			
			if ( left && !right ) {
				this.x -= speed;
				this.rotation = 270;
			}
			if( right && !left ) {
				this.x += speed;
				this.rotation = 90;
			}
			if( up && !down ) {
				this.y -= speed;
				this.rotation = 0;
			}
			if( down && !up ) {
				this.y += speed;
				this.rotation = 180;
			}
			if( left && up && !right && !down ) {
				this.rotation = 315;
			}
			if( right && up && !left && !down ) {
				this.rotation = 45;
			}
			if( left && down && !right && !up ) {
				this.rotation = 225;
			}
			if( right && down && !left && !up ) {
				this.rotation = 135;
			}
			
			if( this.y < stage.y ){
				this.y = stage.height;
			}
			if( this.y > stage.height ){
				this.y = stage.y;
			}
			if( this.x < stage.x ){
				this.x = stage.width;
			}
			if( this.x > stage.width ){
				this.x = stage.x;
			}
		}
		
		private function onRelease(e:KeyboardEvent):void{
			switch(e.keyCode){
				case Keyboard.UP:
					up = false;
					break;
				case Keyboard.DOWN:
					down = false;
					break;
				case Keyboard.LEFT:
					left = false;
					break;
				case Keyboard.RIGHT:
					right = false;
					break;
			}
		}
		
		private function onPress(e:KeyboardEvent):void{
			switch(e.keyCode){
				case Keyboard.UP:
					this.up = true;
					break;
				case Keyboard.DOWN:
					this.down = true;
					break;
				case Keyboard.LEFT:
					this.left = true;
					break;
				case Keyboard.RIGHT:
					this.right = true;
					break;
			}
		}
	}
}