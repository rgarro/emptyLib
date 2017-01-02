
package emptyLib._3D.WebSite.Splash {
	import flash.text.TextField;
	import away3d.core.base.Object3D;
	import away3d.primitives.Trident;

	import emptyLib._3D.Template;

	import mx.controls.sliderClasses.Slider;
	/**
	 * @author Rolando
	 */

	import emptyLib._3D.Tutorials.away3d.Migs.Migs;
	import away3d.containers.ObjectContainer3D;
	import flash.events.Event;

	[SWF(height="480",width="800",frameRate="35")]//Under the arc of a weather stain boards ...
	public class SadHill extends Template {
		
		public var Western:ObjectContainer3D; 
		protected var Horse:Object3D;
		
		public var bad:TextField;//x
		public var ugly:TextField;//y
		public var good:TextField;//z
		public var mig_rotation:TextField;//z
		
		public var flag:int = 1; 
		
		public function SadHill():void {
			super();
		}
		
		protected function blackHat():TextField{
			var hat:TextField = new TextField();
			hat.textColor = 0x000000;
			hat.width = 50;
			hat.y = 5;
			return hat;
		}
		
		protected function tucoCapturesBlondie():void{
			bad = blackHat();
			this.addChild(bad);
			bad.x = 200;
			
			ugly = blackHat();
			this.addChild(ugly);
			ugly.x = 300;
			
			good = blackHat();
			this.addChild(good);
			good.x = 450;
			
			mig_rotation = blackHat();
			this.addChild(mig_rotation);
			mig_rotation.x = 550;
			
		}
		
		protected override function initEngine():void
		{
			super.initEngine();
			camera.z = -2000;
			camera.x = -500;
			camera.y = 300;
		}
		
		protected override function  initScene():void{
			super.initScene();
			this.view.scene.addChild(new Trident(50));
			Western = new Migs();
			
			//Western.x = 200;
			Western.y = -600;
			this.scene.addChild(Western);
			Horse = Western.children[0];
			tucoCapturesBlondie();
			addEventListener( Event.ENTER_FRAME, onRiding );
		}
		
		private function onRiding(e:Event):void
		{
			stantonRoad();
 			bad.text = "X:" + Horse.x.toString();
			ugly.text = "Y:" + Horse.y.toString();
			good.text = "Z:" + Horse.z.toString();
            mig_rotation.text = "RotY:" + Horse.rotationY.toString();
        }
		
		private function stantonRoad():void{//taking off sumatoria
			if(this.flag == 1){
				if(Horse.y < 550){
					Horse.rotationY += 4;
					Horse.y += 10;
				}else{
					Horse.rotationY = 180;
					this.flag = 2;
					//show the throttle button ...
				}
			}
		}
	}
}