package emptyLib._3D.Tutorials.away3d {
	import mx.controls.TextInput;
	import emptyLib._3D.Tutorials.away3d.Migs.Migs;
	import away3d.containers.ObjectContainer3D;
	import emptyLib._3D.Template;
	import flash.events.Event;

	[SWF(height="480",width="640",frameRate="35")]//la hora en el pais de los locos ...
	public class Sok extends Template {
		
		public var migMesh:ObjectContainer3D; 
		public var xInfo:TextInput;
		
		public function Sok() {
			super();
			
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
			
			migMesh = new Migs();
			
			//migMesh.x = 200;
			migMesh.y = -600;
			this.scene.addChild(migMesh);
			//trace(migMesh.children[0]);
			addEventListener( Event.ENTER_FRAME, onRender );
		}
		
		private function onRender(e:Event):void
		{
            migMesh.children[0].rotationY += 1;
			migMesh.children[0].y += 1;
 trace(migMesh.children[0].rotationY);
 trace(migMesh.children[0].y);
            //_view.render();
        }
	}
}