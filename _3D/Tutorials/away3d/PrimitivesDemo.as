package emptyLib._3D.Tutorials.away3d
{
	import away3d.core.base.Object3D;
	import away3d.materials.BitmapFileMaterial;
	import away3d.primitives.Cone;
	import away3d.primitives.Cube;
	import away3d.primitives.Cylinder;
	
	import emptyLib._3D.Template;
	
	import flash.events.Event;
	import flash.events.KeyboardEvent;

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
			camera.z = -5500;
			camera.x = -500;
			camera.y = 300;
		}
		
		protected override function initScene():void
		{
			super.initScene();
			this.initCone();
		}
		
		protected override function initListeners():void
		{
			super.initListeners();
			this.stage.addEventListener(KeyboardEvent.KEY_UP,onKeyUp);
		}
		
		protected override function onEnterFrame(event:Event):void{
			super.onEnterFrame(event);
			this.currentPrimitive.rotationX += 1;
			this.currentPrimitive.rotationZ += 1;
			this.currentPrimitive.rotationY += 1;
		}
		
		protected function onKeyUp(event:KeyboardEvent):void{
			
		}
		
		protected function removeCurrentPrimitive():void{
			this.scene.removeChild(this.currentPrimitive);
			this.currentPrimitive = null;
		}
		
		protected function initCone():void{
			this.currentPrimitive = new Cone({height:150});
			this.scene.addChild(currentPrimitive);
		}
	
	}
}