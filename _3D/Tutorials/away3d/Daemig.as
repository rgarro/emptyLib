package emptyLib._3D.Tutorials.away3d {
	import away3d.core.utils.Cast;
	import away3d.core.base.Mesh;
	import away3d.materials.ColorMaterial;
	import away3d.core.base.Face;
	import away3d.events.Loader3DEvent;
	import away3d.loaders.Collada;
	import away3d.loaders.Loader3D;
	import emptyLib._3D.Template;
	import away3d.loaders.Obj;

	/**
	 * @author rolando
	 */
	public class Daemig extends Template {
		public function Daemig() {
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			var placeHolder:Loader3D = Collada.load("../../../Assets/War/mario_testrun.dae",{rotationY:90});
			placeHolder.addOnSuccess(onLoadSuccess);
			//this.scene.addChild(placeHolder);
		}
		
		protected override function initEngine():void
		{
			super.initEngine();
			camera.z = -2000;
			camera.x = -500;
			camera.y = 300;
		}
		
		protected function onLoadSuccess(event:Loader3DEvent):void{
			var objMesh:Mesh = Obj.parse(Cast.bytearray(event.loader.handle),{z:200,useMtl:false}) as Mesh;
            var modelMaterial:ColorMaterial = new ColorMaterial("darkgreen");
			
			for each(var face:Face in objMesh.faces){
				face.material = modelMaterial;
			}
			objMesh.scale(100);
			objMesh.y = -500;
 
           this.scene.addChild(objMesh);
			//event.loader.handle.scaleX = event.loader.handle.scaleY = event.loader.handle.scaleZ = 20;
			
		}
	}
}