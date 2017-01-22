/**
 * Basic 3D Template 
 * 
 * 
 *                               _|_
 *                              /   \
 *                              |\   \
 *                              | \   \
 *                               \ \   \
 *                                \ \   \
 *                                 \ \   \
 *                                  \ \   \
 *                                   \ \   \
 *                                    \ \   \
 *                                    |\ \   \
 *                                    | \ \   \
 *                                    | |\ \   \
 *                                    | | \ \   \
 *                                    \ |_|\ \   \
 *                                     \  | \ \   \
 *                                      \ |  \ \   \
 *                                       \|   \ \  _\
 *                                        |    \ \/  \
 *                                        |     \ |  |
 *                                        |     |\|__|
 *                                        |     |  |
 *                                        |     |  |
 *                                        |     |  |
 *                                        |     |  |
 *                                         \    |  |
 *                                          \   |  |
 *                                           \  |  |
 *                                            \ |  |
 *                                             \|__|
 *
 *
 * @autor Rolo <rolando@emptyart.xyz>
 * @copyright EmptyArt.xyz
 * 
 */
package emptyLib._3D
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import away3d.cameras.Camera3D;
	import away3d.containers.Scene3D;
	import away3d.containers.View3D;
	
	public class Template extends Sprite
	{
		protected var scene:Scene3D;
		protected var camera:Camera3D;
		protected var view:View3D;
		public var init_camera_z:int = -2000;
		public var init_camera_x:int = -500;
		public var init_camera_y:int = 300;
		
		
		public function Template()
		{
			this.initUI();
			this.initEngine();
			this.initScene();
			this.initListeners();
		}
		
		protected function initUI():void{}
		
		protected function initEngine():void{
			this.view = new View3D();
			this.scene = this.view.scene;
			this.camera = this.view.camera;
			this.addChild(this.view);
		}
		
		protected function initListeners():void{
			this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
			this.addEventListener(Event.ADDED_TO_STAGE,onStageAdded);
		}
		
		protected function onStageAdded(e:Event):void{
			//this.view.x = stage.stageWidth / 2;
			//this.view.y = stage.stageHeight / 2;
		}
		
		protected function onEnterFrame(e:Event):void{
			view.render();
		}
		
		protected function initScene():void{}
		
	}
}