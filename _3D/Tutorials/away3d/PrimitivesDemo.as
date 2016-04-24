package emptyLib._3D.Tutorials.away3d
{
	import emptyLib._3D.Template;
	import away3d.core.base.Object3D;
	import away3d.primitives.Cone;
	import away3d.primitives.Cube;
	import away3d.primitives.Cylinder;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import away3d.materials.BitmapFileMaterial;

	public class PrimitivesDemo extends Template
	{
	
		protected var currentPrimitive:Object3D;
		
		public function PrimitivesDemo():void
		{
			super();
		}
		
		protected override function initEngine():void
		{
			super.initEngine();
			camera.z = - 500;
		}
		
		protected override function initScene():void
		{
			super.initScene();
			this.initCone();
		}
		
		protected override function initListeners():void
		{
			super.initListeners();
		}
	
	}
}