package emptyLib.Games.War.Trucks
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.filters.BlurFilter;
	import flash.ui.Keyboard;
	
	import emptyLib.Embeders.War;
	import emptyLib.Games.War.Effects.SmokeParticle;
	import emptyLib.Tools.FPSCounter;
	
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
				this.muffleSmoke();
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
		
		public function muffleSmoke():void
		{
			addChild(new FPSCounter(510, 0));
			
			var particleArray:Array = new Array();
			
			var numberOfParticles:uint = 1; // How many particles to add per frame
			var particleLimit:uint = 80; // 150 is a good number, but the frame-rate suffers =/
			var animating:Boolean = false; // Flag to keep track of whether we are currently animating
			
			// Create a new movie clip to add the particles to.
			// The reason we do this is so that we can add the particles to the
			// new sprite then apply a blur filter to our sprite canvas. This means
			// we can apply the blur to our particles without blurring absolutely
			// everything that we add to the stage (i.e. fps etc. remains unblurred)
			var particleCanvas:Sprite = new Sprite();
			addChild(particleCanvas);
			
			// Add our blur to the canvas sprite we just created.
			// BlurFilter switches: x blur, y-blur-amount, quality (1 = low, 2 = normal, 3 = high)
			// Notice that we're using a number which is a power of 2 for the blur amount;
			// this increases performance because the filters are optimised for powers of 2!
			particleCanvas.filters = [new BlurFilter(8, 8, 1)];
			var smoke:SmokeParticle;
			
			// Loop to create numberOfParticles per frame
			for (var loop:uint = 0; loop < numberOfParticles; loop++) {
				
				// Create a new particle and push it into our array
				smoke = new SmokeParticle(this.x, this.y)
				particleArray.push(smoke);
				
				// Add our particle to the particleCanvas sprite, not directly to the stage!
				particleCanvas.addChild(smoke);
				
				// If we've hit our limit for the number of particles allowed on stage...
				if (particleArray.length == particleLimit) {
					
					// ...call our particle destructor to unbind the particle's event listener
					// and remove the particle from the stage
					particleArray[0].ParticleDestructor();
					
					// Destroy the particle.
					// Note: SOME-ARRAY.shift gets rid of the first element of the array
					// and returns it, so if we weren't removing the particle from the stage
					// in the destructor (which we are!), we could call shift and pass it to
					// removeChild for removal from our canvas and destroy it in one fell swoop
					// like this: particleCanvas_mc.removeChild(particleArray.shift());
					particleArray.shift();
				}
				
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