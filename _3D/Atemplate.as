package emptyLib._3D
{
	import flash.display.Sprite;
	import away3d.cameras.Camera3D;
	import away3d.containers.Scene3D;
	import away3d.containers.View3D

	public class Atemplate extends Sprite
	{
		protected var scene:Scene3D;
		protected var camera:Camera3D;
		protected var view:View3D;
		
		protected function Atemplate():void{
			
		}
		
		protected function initEngine():void{
			this.view = new View3D();
			this.scene = this.view.scene;
			this.camera = this.view.camera;
			this.addChild(this.view);
		}
	}
}