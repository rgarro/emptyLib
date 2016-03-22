package emptyLib._3D.Tutorials.away3d
{
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	import away3d.core.base.Geometry;
	import away3d.debug.Trident;
	import away3d.entities.Mesh;
	import away3d.materials.ColorMaterial;
	import away3d.primitives.CapsuleGeometry;
	import away3d.primitives.ConeGeometry;
	import away3d.primitives.CylinderGeometry;
	import away3d.primitives.PlaneGeometry;
	import away3d.primitives.RegularPolygonGeometry;
	import away3d.primitives.SphereGeometry;
	import away3d.primitives.TorusGeometry;
	
	import emptyLib._3D.Template;
	
	public class Uvcoord extends Template
	{
		protected var mesh:Mesh;
		protected var color:uint = 0xffe5ad;
		protected var geometry:Geometry;
		protected var speed:int = 3;
		
		public function Uvcoord()
		{
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			var trident:Trident = new Trident(50);
			trident.x = 10,
				trident.y = 10,
				trident.z = 10,
				view.camera.addChild(trident);
			this.scene.addChild(view.camera); 
			this.initCone();
			this.renderEnd();
		}
		
		protected override function initEngine():void{
			super.initEngine();
			//this.camera.z =  500;
		}
		
		protected override function initListeners():void{
			super.initListeners();
			
		}
		
		protected override function onEnterFrame(e:Event):void{
			super.onEnterFrame(e);
			this.mesh.rotationX = this.mesh.rotationX + this.speed;
			this.mesh.rotationY = this.mesh.rotationY + this.speed;
			this.mesh.rotationZ = this.mesh.rotationZ + this.speed;
		}
		
		protected override function onStageAdded(e:Event):void{
			super.onStageAdded(e);
			stage.addEventListener(KeyboardEvent.KEY_UP,onKeyUp);
		}
		
		protected function removeCurrentPrimitive():void{
			this.scene.removeChild(mesh);
			mesh = null;
		}
		
		protected function onKeyUp(e:KeyboardEvent):void{
			this.removeCurrentPrimitive();
			switch(e.keyCode){
				case 49: //1
					this.initCone();
					break;
				case 50: //2
					this.initSphere();
					break;
				case 51: //3
					this.initCapsule();
					break;
				case 52://4
					this.initCylinder();
					break;
				case 53://5
					this.initPlane();
					break;
				case 54://6
					this.initRegular();
					break;
				case 55://6
					this.initTorus();
					break;
				default:
					this.initSphere();
					break;
			}
			this.renderEnd();
		}
		
		protected function initCone():void{
			this.geometry = new ConeGeometry();
		}
		
		protected function initSphere():void{
			this.geometry = new SphereGeometry();
		}
		
		protected function initCapsule():void{
			this.geometry = new CapsuleGeometry();
		}
		
		protected function initCylinder():void{
			this.geometry = new CylinderGeometry();
		}
		
		protected function initPlane():void{
			this.geometry = new PlaneGeometry();
		}
		
		protected function initRegular():void{
			this.geometry = new RegularPolygonGeometry();
		}
		
		protected function initTorus():void{
			this.geometry = new TorusGeometry();
		}
		
		protected function renderEnd():void{
			this.mesh = new Mesh(this.geometry,new ColorMaterial(this.color));
			this.scene.addChild(this.mesh);
		}
		
	}
}