package emptyLib._3D.Tutorials.away3d  {		import emptyLib._3D.Template;	import away3d.materials.ColorMaterial;	import away3d.core.base.Mesh;	import away3d.loaders.Obj;	import away3d.core.utils.Cast;	import away3d.core.base.Face;	import flash.events.Event;	[SWF(height="430",width="680",frameRate="30")]	public class Mig extends Template {				[Embed(source="../../../Assets/War/ferrari.obj",mimeType='application/octet-stream')]		protected var objModel:Class;				public var tankMesh:Mesh;		public function Mig() {			super();		}				protected override function initEngine():void		{			super.initEngine();			camera.z = -2000;			camera.x = -500;			camera.y = 300;		}				protected override function initScene():void{			super.initScene();			var modelMaterial:ColorMaterial = new ColorMaterial("darkgreen");					tankMesh = Obj.parse(Cast.bytearray(objModel),{z:200,useMtl:false}) as Mesh;			/*for each(var face:Face in tankMesh.faces){				face.material = modelMaterial;			}*/			tankMesh.scale(200);			tankMesh.y = -200;			this.scene.addChild(tankMesh);			addEventListener( Event.ENTER_FRAME, onRender );		}				 private function onRender( e:Event ):void        {            tankMesh.rotationY += 1;             //_view.render();        }	}	}