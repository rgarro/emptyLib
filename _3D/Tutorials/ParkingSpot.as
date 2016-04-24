package emptyLib._3D.Tutorials
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Vector3D;
	
	import away3d.containers.View3D;
	import away3d.entities.Mesh;
	import away3d.materials.TextureMaterial;
	import away3d.primitives.PlaneGeometry;
	import away3d.utils.Cast;
	
	[SWF(backgroundColor="#000000", frameRate="60")]
	public class ParkingSpot extends Sprite
	{
	
		//plane texture
		[Embed(source="../../Assets/Places/parkingSpot.png")]
		public static var FloorDiffuse:Class;
		
		//engine variables
		private var _view:View3D;
		
		//scene objects
		private var _plane:away3d.entities.Mesh;
		
		/**
		 * Constructor
		 */
		public function ParkingSpot()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			//setup the view
			_view = new View3D();
			addChild(_view);
			
			//setup the camera
			_view.camera.z = -600;
			_view.camera.y = 500;
			_view.camera.lookAt(new Vector3D());
			
			//setup the scene
			_plane = new Mesh(new PlaneGeometry(700, 700), new TextureMaterial(Cast.bitmapTexture(FloorDiffuse)));
			_view.scene.addChild(_plane);
			
			//setup the render loop
			addEventListener(Event.ENTER_FRAME, _onEnterFrame);
			stage.addEventListener(Event.RESIZE, onResize);
			onResize();
		}
		
		/**
		 * render loop
		 */
		private function _onEnterFrame(e:Event):void
		{
			_plane.rotationY += 1;
			
			_view.render();
		}
		
		/**
		 * stage listener for resize events
		 */
		private function onResize(event:Event = null):void
		{
			_view.width = stage.stageWidth;
			_view.height = stage.stageHeight;
		}
	}
}