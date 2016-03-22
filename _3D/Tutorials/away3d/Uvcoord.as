package emptyLib._3D.Tutorials.away3d
{
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	import away3d.entities.Mesh;
	import away3d.materials.ColorMaterial;
	import away3d.primitives.CapsuleGeometry;
	import away3d.primitives.ConeGeometry;
	import away3d.primitives.SphereGeometry;
	
	import emptyLib._3D.Template;
	
	public class Uvcoord extends Template
	{
		public var mesh:Mesh;
		public var color:uint = 0xffe5ad;
		
		public function Uvcoord()
		{
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			this.initCone();
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
			this.mesh.rotationX++;
			this.mesh.rotationY++;
			this.mesh.rotationZ++;
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
				case 51:
					this.initCapsule();
					break
				default:
					this.initSphere();
					break;
			}
		}
		
		protected function initCone():void{
			var geometry:ConeGeometry = new ConeGeometry();
			this.mesh = new Mesh(geometry,new ColorMaterial(this.color));
			this.scene.addChild(this.mesh);
		}
		
		protected function initSphere():void{
			var geometry:SphereGeometry = new SphereGeometry();
			this.mesh = new Mesh(geometry,new ColorMaterial(this.color));
			this.scene.addChild(this.mesh);
		}
		
		protected function initCapsule():void{
			var geometry:CapsuleGeometry = new CapsuleGeometry();
			this.mesh = new Mesh(geometry,new ColorMaterial(this.color));
			this.scene.addChild(this.mesh);
		}
	}
}