﻿package emptyLib._3D.Tutorials.away3d{    import away3d.cameras.Camera3D;    import away3d.containers.Scene3D;    import away3d.containers.View3D;    import away3d.core.base.Object3D;	import away3d.core.render.Renderer;    import away3d.events.Loader3DEvent;    import away3d.loaders.Loader3D;    import away3d.loaders.Obj;    import flash.display.Sprite;    import flash.events.Event;     public class Tanqueb extends Sprite    {         protected var _scene:Scene3D;        protected var _view:View3D;        protected var _camera:Camera3D;        protected var _loader:Loader3D;        protected var _mesh:Object3D;         public function Tanqueb()        {            initAway();        }         private function initAway():void        {            _camera = new Camera3D( { x: -50, y:50, z: -50 } );             _scene = new Scene3D();             _view = new View3D( { x:stage.stageWidth / 2, y:stage.stageHeight / 2, scene:_scene, camera:_camera, renderer:Renderer.CORRECT_Z_ORDER } );            addChild( _view );             _loader = Obj.load( "../../../Assets/War/m4_sherman.obj", { scaling:10, bothsides:true } );            _loader.addOnSuccess( onObjLoad );        }         private function onObjLoad( e:Loader3DEvent ):void        {            _mesh = e.loader.handle;            _mesh.scaleX = -1;             _scene.addChild( _mesh );             addEventListener( Event.ENTER_FRAME, onRender );        }         private function onRender( e:Event ):void        {            _mesh.rotationY += 1;             _view.render();        }     } }