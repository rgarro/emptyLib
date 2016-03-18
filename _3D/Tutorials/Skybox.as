package emptyLib._3D.Tutorials
{
	import away3d.cameras.lenses.*;
	import away3d.containers.*;
	import away3d.entities.*;
	import away3d.materials.*;
	import away3d.materials.methods.*;
	import away3d.primitives.*;
	import away3d.textures.*;
	import away3d.utils.*;
	
	import flash.display.*;
	import flash.events.*;
	import flash.geom.Vector3D;
	
	[SWF(backgroundColor="#000000", frameRate="60", quality="LOW")]
	
	public class Skybox extends Sprite
	{
		// Environment map.
		[Embed(source="../../Assets/3d/cubicle/positiveXd.jpg")]
		private var EnvPosX:Class;
		[Embed(source="../../Assets/3d/cubicle/positiveYd.jpg")]
		private var EnvPosY:Class;
		[Embed(source="../../Assets/3d/cubicle/positiveZd.jpg")]
		private var EnvPosZ:Class;
		[Embed(source="../../Assets/3d/cubicle/negativeYd.jpg")]//../embeds/skybox/snow_negative_x.jpg
		private var EnvNegX:Class;
		[Embed(source="../../Assets/3d/cubicle/negativeYd.jpg")]
		private var EnvNegY:Class;
		[Embed(source="../../Assets/3d/cubicle/negativeYd.jpg")]//../embeds/skybox/snow_negative_z.jpg
		private var EnvNegZ:Class;
		
		//engine variables
		private var _view:View3D;
		
		//scene objects
		private var _skyBox:SkyBox; 
		private var _torus:Mesh;
		
		/**
		 * Constructor
		 */
		public function Skybox()
		{
			//setup the view
			_view = new View3D();
			addChild(_view);
			
			//setup the camera
			_view.camera.z = -600;
			_view.camera.y = 0;
			_view.camera.lookAt(new Vector3D());
			_view.camera.lens = new PerspectiveLens(90);
			
			//setup the cube texture
			var cubeTexture:BitmapCubeTexture = new BitmapCubeTexture(Cast.bitmapData(EnvPosX), Cast.bitmapData(EnvNegX), Cast.bitmapData(EnvPosY), Cast.bitmapData(EnvNegY), Cast.bitmapData(EnvPosZ), Cast.bitmapData(EnvNegZ));
			/*var xEnvNegX:Bitmap = new EnvNegX() as Bitmap; 
			var xEnvPosY:Bitmap = new EnvPosY() as Bitmap;
			var xEnvNegY:Bitmap = new EnvNegY() as Bitmap;
			var xEnvPosZ:Bitmap = new EnvPosZ() as Bitmap; 
			var xEnvNegZ:Bitmap = new EnvNegZ() as Bitmap;
			var xEnvPosX:Bitmap = new EnvPosX() as Bitmap;
			var cubeTexture:BitmapCubeTexture = new BitmapCubeTexture(xEnvPosX.bitmapData, xEnvNegX.bitmapData, xEnvPosY.bitmapData, xEnvNegY.bitmapData, xEnvPosZ.bitmapData,xEnvNegZ.bitmapData);			
		*/
			//setup the environment map material
			var material:ColorMaterial = new ColorMaterial();
			material.addMethod(new EnvMapMethod(cubeTexture, 1));
			
			//setup the scene
			_torus = new Mesh(new TorusGeometry(150, 60, 40, 20), material);
			_view.scene.addChild(_torus);
			
			_skyBox = new SkyBox(cubeTexture);
			_view.scene.addChild(_skyBox);
			
			//setup the render loop
			this.addEventListener(Event.ENTER_FRAME, _onEnterFrame);
			this.addEventListener(Event.ADDED_TO_STAGE,init);
			
			//onResize();
		}
		
		private function init(e:Event):void{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.RESIZE, onResize);
		}
		
		/**
		 * render loop
		 */
		private function _onEnterFrame(e:Event):void
		{
			_torus.rotationX += 2;
			_torus.rotationY += 1;
			
			_view.camera.position = new Vector3D();
			_view.camera.rotationY += 0.5*(stage.mouseX-stage.stageWidth/2)/800;
			_view.camera.moveBackward(600);
			
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