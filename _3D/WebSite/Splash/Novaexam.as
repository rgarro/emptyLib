package emptyLib._3D.WebSite.Splash
{
	
	
	import com.adobe.serialization.json.JSON;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.system.Security;
	import flash.net.URLLoader;
	import flash.net.URLRequestMethod;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequest;
	import away3d.core.base.Object3D;
	
	import away3d.primitives.Cone;
	import away3d.primitives.Cube;
	import away3d.primitives.Cylinder;
	
	import emptyLib._3D.Template;
	
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import away3d.primitives.GeodesicSphere;
	import away3d.primitives.GridPlane;
	import away3d.primitives.LineSegment;
	import away3d.primitives.Plane;
	import away3d.primitives.RegularPolygon;
	import away3d.primitives.RoundedCube;
	import away3d.primitives.SeaTurtle;
	import flash.external.ExternalInterface;
	import com.adobe.serialization.json.JSON;
	

	[SWF(height="480",width="640",frameRate="35")]
	public class Novaexam extends Template
	{
	
		protected var currentPrimitive:Object3D;
		
		public function Novaexam():void
		{
			super();
		}
		
		protected override function initEngine():void
		{
			super.initEngine();
			camera.z = -2000;
			camera.x = -500;
			camera.y = 300;
		}
		
		protected override function initScene():void
		{
			super.initScene();
			//this.initCone();
			
			/*var myc:Cone = new Cone({height:75});
			this.scene.addChild(myc);
			myc.x = 100; myc.y = -500; myc.z = 500;
			
			var mxc:Cone = new Cone({height:75});
			this.scene.addChild(mxc);
			mxc.x = 300; mxc.y = -100; mxc.z = 800;
			
			var mzc:Cone = new Cone({height:75});
			this.scene.addChild(mzc);
			mzc.x = 400; mzc.y = 100; mzc.z = -800;*/
			
			
	ExternalInterface.call("console.log", "here before");
			var request:URLRequest=new URLRequest();
			request.url="http://10.novaexams.com/public/moleculelist";
			//request.url="http://localhost:2026/public/moleculelist";
			request.requestHeaders=[new URLRequestHeader("Content-Type", "application/json")];
			request.method=URLRequestMethod.GET;
			var loader:URLLoader=new URLLoader();
			loader.addEventListener(Event.COMPLETE, receive);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, notAllowed);
			//loader.addEventListener(IOErrorEvent.IO_ERROR, notFound);
			loader.load(request);
		}
		
		protected function notAllowed(event:Event):void{
		//ExternalInterface.call("console.log", "not allowed");
		//ExternalInterface.call("console.log", event);
		}
		
		protected function receive(event:Event):void{
			var myResults:String = event.target.data;
			var objR:Object = com.adobe.serialization.json.JSON.decode(myResults);
			var molecules:Array;
		
			for each(var og:Object in objR.molecules){
			//ExternalInterface.call("console.log", Number(og.Molecule.x));
			var mxc:Cone = new Cone({height:75});
			this.scene.addChild(mxc);
			mxc.x = Number(og.Molecule.x); mxc.y = Number(og.Molecule.y); mxc.z = Number(og.Molecule.z);
			//molecules.push(mxc);
		
			}

	 
}
		
		protected override function initListeners():void
		{
			super.initListeners();
			this.stage.addEventListener(KeyboardEvent.KEY_UP,onKeyUp);
			this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
			this.addEventListener(KeyboardEvent.KEY_UP,onKeyUp);
		}
		
		protected override function onEnterFrame(event:Event):void{
			super.onEnterFrame(event);
			this.currentPrimitive.rotationX += 1;
			this.currentPrimitive.rotationZ += 1;
			this.currentPrimitive.rotationY += 1;
		}
		
		protected function onKeyUp(event:KeyboardEvent):void{
			this.removeCurrentPrimitive();
			switch(event.keyCode){
				case 49:
					this.initCone();
				break;
				case 50:
					this.initCube();
				break;
				case 51:
					this.initCylinder();
				break;
				case 52:
					this.initGeodesicSphere();
				break;
				case 53:
					this.initGridPlane();
				break;
				case 54:
					this.initLineSegment();
				break;
				case 55:
					this.initPlane();
				break;
				case 56:
					this.initRegularPolygon();
				break;
				case 57:
					this.initRoundedCube();
				break;
				
				default:
					this.initCone();
				break;	
			}
		}
		
		protected function removeCurrentPrimitive():void{
			this.scene.removeChild(this.currentPrimitive);
			this.currentPrimitive = null;
		}
		
		protected function initCone():void{
			this.currentPrimitive = new Cone({height:150});
			this.scene.addChild(currentPrimitive);
		}
		
		protected function initCube():void{
			this.currentPrimitive = new Cube({height:150});
			this.scene.addChild(currentPrimitive);
		}
	
		protected function initCylinder():void{
			this.currentPrimitive = new Cylinder({height:150});
			this.scene.addChild(this.currentPrimitive);
		}
	
		protected function initGeodesicSphere():void{
			this.currentPrimitive = new GeodesicSphere({height:150});
			this.scene.addChild(this.currentPrimitive);
		}
	
		protected function initGridPlane():void{
			this.currentPrimitive = new GridPlane({segments:4});
			this.scene.addChild(this.currentPrimitive);
		}
		
		protected function initLineSegment():void{
			this.currentPrimitive = new LineSegment({edge:500});
			this.scene.addChild(this.currentPrimitive);
		}
		
		protected function initPlane():void{
			this.currentPrimitive = new Plane({bothsides:true});
			this.scene.addChild(this.currentPrimitive);
		}
		
		protected function initRegularPolygon():void{
			this.currentPrimitive = new RegularPolygon({bothsides:true});
			this.scene.addChild(this.currentPrimitive);
		}
		
		protected function initRoundedCube():void{
			this.currentPrimitive = new RoundedCube({height:150});
			this.scene.addChild(this.currentPrimitive);
		}
		
		protected function initSeaTurtle():void{
			this.currentPrimitive = new SeaTurtle({scale:0.3});
			this.scene.addChild(this.currentPrimitive);
		}
	
	}
}