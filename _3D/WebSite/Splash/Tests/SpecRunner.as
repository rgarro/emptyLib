package emptyLib._3D.WebSite.Splash.Tests {
	import org.libspark.as3unit.components.AS3Unit;
	import org.libspark.as3unit.runner.AS3UnitCore;

	import flash.display.Sprite;

	import emptyLib._3D.WebSite.Splash.Tests.NavDashTest;

	/**
	 * @author rolando
	 */
	public class SpecRunner extends Sprite {
		public function SpecRunner() {
			trace("here");
			AS3UnitCore.main(AllTests);
			
			
		}
	}
	
}