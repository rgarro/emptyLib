package emptyLib._3D.Tutorials.away3d {
	import emptyLib._3D.Tutorials.away3d.Migs.Migs;
	import emptyLib._3D.Tutorials.away3d.Mige.Mige;
	import away3d.core.base.Mesh;
	import away3d.core.base.Object3D;
	import away3d.materials.ColorMaterial;
	import away3d.core.utils.Cast;
	import away3d.loaders.AWData;
	import away3d.containers.ObjectContainer3D;
	import emptyLib._3D.Template;
	import flash.events.Event;

	/**
	 * @author rolando
	 */
	public class Sok extends Template {
		
		[Embed(source="Migf/Migf.awd",mimeType='application/octet-stream')]
		protected var MonsterModel:Class;
		
		public var migMesh:ObjectContainer3D; 
		
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
			
			var modelMaterial:ColorMaterial = new ColorMaterial("darkgreen");
			//migMesh = AWData.parse(Cast.bytearray(MonsterModel),{z:200}) as ObjectContainer3D;
			migMesh = new Migs();
			/*for each (var object:Object3D in migMesh.children) {
				var mesh:Mesh = object as Mesh;
				if(mesh != null){
					 mesh.material = modelMaterial;
				}
			}*/
			migMesh.x = 200;
			migMesh.y = -600;
			this.scene.addChild(migMesh);
		addEventListener( Event.ENTER_FRAME, onRender );
		}
		
		 private function onRender( e:Event ):void
        {
            migMesh.rotationY += 1;
 
            //_view.render();
        }
	}
}