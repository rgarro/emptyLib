package emptyLib.Games.War.Effects
{
	import flash.display.Sprite;
	import flash.events.Event;

	import flash.geom.ColorTransform;
	
	public class SmokeParticle extends Sprite
	{
		// Define our class properties for each individual instance
		private var xSpeed:Number;
		private var ySpeed:Number;
		private var alphaDecay:Number;
		private var particleTargetAlpha:Number;
		private var particleScale:Number;
		private var fadeIn:Boolean;
		private var rotationRate:Number;
		private var removed:Boolean;
		
		// Define our class-wide variables (one copy shared between all instances)
		static var minXSpeed:Number = -1.0;
		static var minYSpeed:Number = -3.0;
		
		static var maxXSpeed:Number = 1.0;
		static var maxYSpeed:Number = -5.0;
		
		static var fadeInRate:Number = 0.1;
		static var minParticleAlpha:Number = 0.4;
		static var maxParticleAlpha:Number = 1.0;
		static var minAlphaDecay:Number = 0.01; // Keep this value less than fadeInRate!
		static var maxAlphaDecay:Number = 0.02;
		
		static var minInitialScale:Number = 0.4;
		static var maxInitialScale:Number = 1.0;
		
		static var rad2deg = 180 / Math.PI; // Constant to convert radians to degrees
		static var particleExpansionRate:Number = 0.03;
		static var minRotationSpeed = 1.5; // In degrees per frame
		static var rotationModifier = 2; // Fudges rotation per frame change into desired rate range
		
		// I don't like having to generate a large number of random numbers per frame because
		// the buggers are computationally expensive (i.e. they take a long time to generate!)
		// so if I generate a bunch of just them just ONCE as soon as we instatiate the class,
		// I can then just pull a number from the array whenever I want one instead of
		// generating a random number on-the-fly. If I keep track of which element we're on by
		// going to the next element once the number's been used and wrapping-around when we
		// hit the end, and assuming our source of random numbers is of sufficient size, there
		// shouldn't be any visual difference between generating on-the-fly and using the
		// pre-calculated array, only the cpu time per frame should be lower, so everything 
		// runs faster and smoother. In theory =D
		static var randArray = new Array();
		static var randElement = 0;				
		initialiseRandArray();
		
		// Does what it says on the tin.
		public static function initialiseRandArray():void
		{
			for (var i:uint = 0; i < 1000; i++)
			{
				randArray[i] = Math.random();
			}
		}
		
		// Function to return a random number from our random number array
		public function getRandNumber():Number
		{
			if (randElement < 999) {
				randElement++;
			}
			else
			{
				randElement = 0;
			}
			return randArray[randElement];
		}
		
		// Function to return us a random number within a specified range.
		// Uses our array of random numbers to try to lower CPU load
		function randRange(low:Number, high:Number):Number {
			return (getRandNumber() * (high - low)) + low;
		} 
		
		// Class Constructor
		public function SmokeParticle(theXLocation:Number, theYLocation:Number):void
		{
			// Add an event listener to each instance of our particle so it's updated
			// when each new frame is drawn
			this.addEventListener(Event.ENTER_FRAME, updateParticle);
			
			// Set the initial particle location as passed to our constructor
			this.x = theXLocation;
			this.y = theYLocation;
			
			// Randomise the x and y speed of the particle between a given range
			this.randomiseSpeeds();
			
			// Uncomment this for multi-coloured smoke particles
			//this.randomiseParticleColour();
			
			// Set the alpha our particle will fade in TO
			this.particleTargetAlpha = randRange(minParticleAlpha, maxParticleAlpha);
			
			// Set our initial particle alpha to be completely transparent
			this.alpha = 0;
			
			// Set an initial random alpha decay within the given range
			this.alphaDecay = randRange(minAlphaDecay, maxAlphaDecay);
			
			// Set an initial random rotation within the given range
			this.rotation = randRange(0, 360);
			
			// Set an initial random scale within the given range
			this.particleScale = randRange(0.4, 1);
			this.scaleX = this.particleScale;
			this.scaleY = this.particleScale;
			
			// Set an initial rotation for the particle which is proportional to the
			// particle's initial scale, where bigger particles rotate slower than small ones.
			this.rotationRate = (minRotationSpeed - this.particleScale) * rotationModifier;
			
			// Initially, we want our smoke to quickly fade in
			this.fadeIn = true;
			
			// Because particles can be removed for being transparent or off the stage,
			// as well as for being old, we need to keep track of whether the particle
			// has been removed so we don't remove it twice (i..e for BOTH of these reasons).
			this.removed = false;
		}
		
		// Destructor to unbind the particle's ENTER_FRAME event listener when we destroy it
		public function ParticleDestructor():void
		{
			// Remove the event listener from our particle
			// Note: We're not removing the particle from the stage here because
			// we're going to do that in the flash file
			
			
			// Remove the particle from the canvas. This gets called when either:
			// 1.) The particle is entirely transparent or off the stage, or
			// 2.) The particle limit is hit and we need to remove old particles.
			// Checking our removed property stops us from trying to remove the particle
			// when both conditions are true (because the particle ALWAYS gets old, but
			// it CAN be transparent/off-stage before that happens).
			// The sooner we can stop drawing the particle, the higher our framerate will be...
			if (this.removed == false) {
				this.removeEventListener(Event.ENTER_FRAME, updateParticle);
				parent.removeChild(this);
				this.removed = true;
			}
		}
		
		public function randomiseParticleColour():void
		{
			var myColourTransform:ColorTransform = this.transform.colorTransform;
			
			// This will change the color of all layers and all sub-symbols within this symbol:
			//myColourTransform.color = 0xff0000;
			
			// Shift each colour channel (you can shift in the range: -255 to 255).
			myColourTransform.redOffset   = (Math.random() * 200) - 100; // Range: -255 to +255
			myColourTransform.greenOffset = (Math.random() * 200) - 100; // Range: -255 to +255
			myColourTransform.blueOffset  = (Math.random() * 200) - 100; // Range: -255 to +255
			
			// This number will multiply by the green channel only (decimal value).  There is also a redMultiplier and blueMultiplier.
			// This will essentially saturate/desaturate the color channel.
			// colorTransform.greenMultiplier = 2;
			
			// re-assign the ColorTransform back to this symbol
			this.transform.colorTransform = myColourTransform;
		}
		
		private function randomiseSpeeds():void
		{
			// Randomise our x and y speeds within a given range
			this.xSpeed = randRange(minXSpeed, maxXSpeed); 
			this.ySpeed = randRange(minYSpeed, maxYSpeed);
		}
		
		// Function to update a particle. Bound to Event.ENTER_FRAME, so called once per frame 
		public function updateParticle(e:Event):void
		{
			// Add our randomised x and y speeds to our particle position
			this.x += xSpeed;
			this.y += ySpeed;
			
			// Subtract a small amount from our object's alpha so it fades out
			this.alpha -= this.alphaDecay;
			
			// Increase the size of our particle as it drifts upwards and then set the new scale
			this.particleScale += particleExpansionRate;
			this.scaleX = this.particleScale;
			this.scaleY = this.particleScale;
			
			// Rotate our particle slightly as it rises
			this.rotation += this.rotationRate;
			
			// If the particle has just been created and is fading in...
			if (this.fadeIn == true) {
				
				// ...then fade that bad-boy in already ;)
				this.alpha += fadeInRate;
				
				// If our particle's alpha has increased to at least it's target alpha then
				// iwe're done fading in, so set the flag accordingly
				if (this.alpha >= this.particleTargetAlpha) {
					this.fadeIn = false;
				}
			}
			
			// Unbind the event listener and remove the particle from the stage as soon
			// as the alpha reaches 0 (i.e. particle is completely transparent) OR the particle
			// has risen off the top of the stage to try to eke out a little bit more performance!
			if ( (this.alpha <= 0) || (this.y < (0 - this.height / 2)) ) {
				this.ParticleDestructor();
			}
			
		} 
}
}