package emptyLib.Particles {
	import org.flintparticles.twoD.emitters.Emitter2D;
	import org.flintparticles.common.actions.Age;
	import org.flintparticles.common.actions.Fade;
  	import org.flintparticles.common.counters.Blast;
  	import org.flintparticles.common.displayObjects.Dot;
  	import org.flintparticles.common.easing.Quadratic;
  	import org.flintparticles.common.events.EmitterEvent;
  	import org.flintparticles.common.initializers.ColorInit;
  	import org.flintparticles.common.initializers.Lifetime;
  	import org.flintparticles.common.initializers.SharedImage;
  	import org.flintparticles.twoD.actions.Accelerate;
  	import org.flintparticles.twoD.actions.LinearDrag;
  	import org.flintparticles.twoD.actions.Move;
  	import org.flintparticles.twoD.emitters.Emitter2D;
  	import org.flintparticles.twoD.initializers.Velocity;
  	import org.flintparticles.twoD.zones.DiscZone;

  	import flash.geom.Point;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Firework extends Emitter2D {
		public function Firework() {
			counter = new Blast( 700 );
      
      		addInitializer( new SharedImage( new Dot( 2 ) ) );
      		addInitializer( new ColorInit( 0xFFFFFF00, 0xFFFF6600 ) );
      		addInitializer( new Velocity( new DiscZone( new Point( 0, 0 ), 200, 120 ) ) );
     		addInitializer( new Lifetime( 5 ) );
      
      		addAction( new Age( Quadratic.easeIn ) );
      		addAction( new Move() );
      		addAction( new Fade() );
      		addAction( new Accelerate( 0, 50 ) );
      		addAction( new LinearDrag( 0.5 ) );
      
      		addEventListener( EmitterEvent.EMITTER_EMPTY, restart, false, 0, true );
		}
		
		public function restart(ev:EmitterEvent):void
		{
			start();
		}
	}
}