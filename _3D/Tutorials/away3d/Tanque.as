﻿package emptyLib._3D.Tutorials.away3d  {	import emptyLib._3D.Template;	import away3d.core.base.Mesh;	import away3d.loaders.Obj;	import away3d.core.utils.Cast;	import away3d.loaders.Loader3D;	import away3d.events.Loader3DEvent;	import away3d.core.base.Object3D;		public class Tanque extends Template {		[Embed(source="../../../Assets/War/m4_sherman.obj",mimeType='application/octet-stream')]		protected var objModel:Class;				protected var objMesh:Object3D;		protected var _loader:Loader3D;				public function Tanque() {			super();		}				protected override function initEngine():void		{			super.initEngine();			camera.z = -2000;			camera.x = -500;			camera.y = 300;		}				protected override function initScene():void{			super.initScene();			this._loader = Obj.load( "../../../Assets/War/t34.obj", { scaling:10, bothsides:true } );            _loader.addOnSuccess( onObjLoad );        }         private function onObjLoad( e:Loader3DEvent ):void        {//trace(e);			            objMesh = e.loader.handle;            objMesh.scaleX = -1;            this.scene.addChild(objMesh);		   objMesh.x = 500;             //addEventListener( Event.ENTER_FRAME, onRender );		}	}	}