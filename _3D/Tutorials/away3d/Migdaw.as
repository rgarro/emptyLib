package emptyLib._3D.Tutorials.away3d {
	import away3d.loaders.AWData;
	import away3d.loaders.Loader3D;
	import emptyLib._3D.Template;
	import flash.events.Event;

	/**
	 * @author rolando
	 */
	public class Migdaw extends Template {
		
		public var monsterMesh:Loader3D;
		
		public function Migdaw() {
			super();
		}
		
		protected override function initEngine():void
		{
			super.initEngine();
			camera.z = -2000;
			camera.x = -500;
			camera.y = 300;
		}
		
		protected override function initScene():void{
			super.initScene();
			monsterMesh = AWData.load("Ferrari/Ferrari.awd");
	
			this.scene.addChild(monsterMesh);
		//addEventListener( Event.ENTER_FRAME, onRender );
		}
		
		 private function onRender( e:Event ):void
        {
            monsterMesh.rotationY += 1;
 
            //_view.render();
        }
	}
}