package emptyLib._3D.Tutorials.away3d {
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
	public class Conio extends Template {
		
		[Embed(source="Ferrari/Ferrari.awd",mimeType='application/octet-stream')]
		protected var MonsterModel:Class;
		
		public var monsterMesh:ObjectContainer3D; 
		
		public function Conio() {
			super();
		}
		
		protected override function  initScene():void{
			super.initScene();
			
			var modelMaterial:ColorMaterial = new ColorMaterial("darkgreen");
			monsterMesh = AWData.parse(Cast.bytearray(MonsterModel),{z:200}) as ObjectContainer3D;
			for each (var object:Object3D in monsterMesh.children) {
				var mesh:Mesh = object as Mesh;
				if(mesh != null){
					 mesh.material = modelMaterial;
				}
			}
			monsterMesh.x = 200;
			monsterMesh.y = -200;
			this.scene.addChild(monsterMesh);
		addEventListener( Event.ENTER_FRAME, onRender );
		}
		
		 private function onRender( e:Event ):void
        {
            monsterMesh.rotationY += 1;
 
            //_view.render();
        }
	}
}