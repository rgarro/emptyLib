
package emptyLib._3D.WebSite.Splash {
	import away3d.core.base.Object3D;
	import emptyLib._3D.Template;
	/**
	 * @author Rolando
	 */
	import mx.controls.TextInput;
	import emptyLib._3D.Tutorials.away3d.Migs.Migs;
	import away3d.containers.ObjectContainer3D;
	import flash.events.Event;

	[SWF(height="480",width="640",frameRate="35")]//Under the arc of a weather stain boards ...
	public class SadHill extends Template {
		
		public var Western:ObjectContainer3D; 
		protected var Horse:Object3D;
		
		public var bad:TextInput;//x
		public var ugly:TextInput;//y
		public var good:TextInput;//z
		
		public function SadHill():void {
			super();
		}
		
		protected function tucoCapturesBlondie():void{
		
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
			
			Western = new Migs();
			
			//Western.x = 200;
			Western.y = -600;
			this.scene.addChild(Western);
			Horse = Western.children[0];
			
			addEventListener( Event.ENTER_FRAME, onRiding );
		}
		
		private function onRiding(e:Event):void
		{
            Horse.rotationY += 1;
			Horse.y += 1;
 trace(Horse.rotationY);
 trace(Horse.y);
            //_view.render();
        }
	}
}