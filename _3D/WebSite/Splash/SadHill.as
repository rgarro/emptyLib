
package emptyLib._3D.WebSite.Splash {
	import cuatroPlumasUI.GrayApp.Gauge;
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.ui.Keyboard;
	
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import away3d.core.base.Object3D;
	import away3d.primitives.Trident;
	import flash.media.Sound;
	import emptyLib._3D.Template;

	import cuatroPlumasUI.GrayApp.Button;

	/**
	 * @author Rolando
	 */

	import emptyLib._3D.Tutorials.away3d.Migs.Migs;
	import away3d.containers.ObjectContainer3D;
	import flash.events.Event;

	[SWF(height="480",width="800",frameRate="35")]//Under the arc of a weather stain boards ...
	public class SadHill extends Template {
		
		[Embed(source="Boeing_7-rogem002-8304_hifi.mp3")] 
        protected var jetSoundClass:Class; 
		protected var jetSound:Sound;
		
		public var Western:ObjectContainer3D; 
		protected var Horse:Object3D;
		
		public var bad:TextField;//x
		public var ugly:TextField;//y
		public var good:TextField;//z
		public var speed_gauge:TextField;//z
		public var mig_rotation:TextField;//z
		public var plus_throttleBtn:Button;
		public var less_throttleBtn:Button;
		
		public var plus_elevationBtn:Button;
		public var less_elevationBtn:Button;
		
		public var dive_rightBtn:Button;
		public var dive_leftBtn:Button;
		
		public var mig_init:int = 0;
		public var camera_init:int = -2000;
		protected var dive_speed:int = 32;
		protected var max_x:int = 6175;
		protected var return_x:int = 0;
		protected var min_x:int = -720;
		protected var min_speed_to_dive:int = 8;
		protected var min_y:int = 100;
		protected var max_y:int = 2000;
		protected var  return_y:int = 500;
		
		public var flag:int = 1;
		public var mig_speed:int = 0; 
		
		protected var images:Images;
		protected var startBtnImg:Bitmap;
		protected var startBtn:Sprite;
		protected var started:Boolean = false;
		protected var speedGauge:Gauge;
		protected var max_speed:int = 35;
		
		public function SadHill():void {
			super();
		}
		
		protected function blackHat():TextField{
			var hat:TextField = new TextField();
			hat.textColor = 0x000000;
			hat.width = 50;
			hat.y = 5;
			return hat;
		}
		
		protected function tucoCapturesBlondie():void{
			
			this.images = new Images();
			this.startBtn = new Sprite();
			this.addChild(startBtn);
			this.startBtnImg = new Bitmap(this.images.startBtnData);
			this.startBtn.addChild(this.startBtnImg);
			this.startBtn.x = 52;
			this.startBtn.y = 419;
			this.startBtn.width = 104;
			this.startBtn.height = 45;
			this.startBtn.buttonMode = true;
			this.startBtn.useHandCursor = true;
			this.startBtn.addEventListener(MouseEvent.CLICK, startBtnClick);
			
			bad = blackHat();
			this.addChild(bad);
			bad.x = 200;
			
			ugly = blackHat();
			this.addChild(ugly);
			ugly.x = 300;
			
			good = blackHat();
			this.addChild(good);
			good.x = 450;
			
			mig_rotation = blackHat();
			this.addChild(mig_rotation);
			mig_rotation.x = 550;
			
			
			speed_gauge = blackHat();
			this.addChild(speed_gauge);
			speed_gauge.x = 650;
			this.jetSound = new jetSoundClass() as Sound;
			plus_throttleBtn = new Button("+ A");
			//addEventListener(Event.ADDED_TO_STAGE, initKeyEvts);
			this.addChild(plus_throttleBtn);
			plus_throttleBtn.x = 180;
			plus_throttleBtn.y = 380;
			this.plus_throttleBtn.addEventListener(MouseEvent.CLICK, doThrottlePlus);
			
			less_throttleBtn = new Button("- S");
			this.addChild(less_throttleBtn);
			less_throttleBtn.x = 180;
			less_throttleBtn.y = 430;
			this.less_throttleBtn.addEventListener(MouseEvent.CLICK, doThrottleless);
			
			dive_rightBtn = new Button("  >");
			this.addChild(dive_rightBtn);
			dive_rightBtn.x = 130;
			dive_rightBtn.y = 320;
			this.dive_rightBtn.addEventListener(MouseEvent.CLICK, diveRight);
			
			dive_leftBtn = new Button("<  ");
			this.addChild(dive_leftBtn);
			dive_leftBtn.x = 20;
			dive_leftBtn.y = 320;
			this.dive_leftBtn.addEventListener(MouseEvent.CLICK, diveLeft);
			
			plus_elevationBtn = new Button(" ^ ");
			this.addChild(plus_elevationBtn);
			plus_elevationBtn.x = 75;
			plus_elevationBtn.y = 280;
			this.plus_elevationBtn.addEventListener(MouseEvent.CLICK, increaseElevation);
			
			less_elevationBtn = new Button("V");
			this.addChild(less_elevationBtn);
			less_elevationBtn.x = 75;
			less_elevationBtn.y = 360;
			this.less_elevationBtn.addEventListener(MouseEvent.CLICK, decreaseElevation);
				
			this.speedGauge = new Gauge(0, this.max_speed, "speed");
			this.addChild(this.speedGauge);
			this.speedGauge.x = 370;
			this.speedGauge.y = 385;	
		}
		
		protected function initKeyEvts(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE,initKeyEvts);
			addEventListener(KeyboardEvent.KEY_DOWN, keyListener);
		}
		
		protected function keyListener(e:KeyboardEvent):void{
			if(e.keyCode == Keyboard.A){
				this.ThrottlePlus();
			}
			if(e.keyCode == Keyboard.S){
				this.Throttleless();
			}
			if(e.keyCode == Keyboard.UP){
				this.doIncreaseElevation();
			}
			if(e.keyCode == Keyboard.DOWN){
				this.doDecreaseElevation();
			}
			if(e.keyCode == Keyboard.LEFT){
				this.doDiveLeft();
			}
			if(e.keyCode == Keyboard.RIGHT){
				this.doDiveRight();	
			}
		}
		
		protected function ThrottlePlus():void{
			if(this.mig_speed < this.max_speed){
				this.mig_speed += 4;
			}
		}
		
		protected function doThrottlePlus(e:MouseEvent):void {
			this.ThrottlePlus();
		}
		
		protected function startBtnClick(e:MouseEvent):void{
			this.startBtn.removeEventListener(MouseEvent.CLICK, startBtnClick);
			jetSound.play(0,100);
			this.removeChild(startBtn);
			this.started = true;
			addEventListener(KeyboardEvent.KEY_DOWN, keyListener);
		}
		
		protected function doDecreaseElevation():void{
			if(this.mig_speed > this.min_speed_to_dive){
				Horse.y -= this.dive_speed;
				camera.y -= this.dive_speed;
			}
			if(Horse.y < this.min_y){
				Horse.y = this.return_y;
				camera.y = 300;//this.return_x;
			}	
			/*if(this.mig_speed < 35){
				this.mig_speed += 4;
			}*/
		}
		
		protected function decreaseElevation(e:MouseEvent):void {
			this.doDecreaseElevation();
		}
		
		protected function increaseElevation(e:MouseEvent):void {
			this.doIncreaseElevation();
		}
		
		protected function doIncreaseElevation():void{
			if(this.mig_speed > this.min_speed_to_dive){
				Horse.y += this.dive_speed;
				camera.y += this.dive_speed;
			}
			if(Horse.y > this.max_y){
				Horse.y = this.return_y;
				camera.y = 300;//this.return_x;
			}	
			/*if(this.mig_speed < 35){
				this.mig_speed += 4;
			}*/
		}
		
		protected function doDiveRight():void{
			if(this.mig_speed > this.min_speed_to_dive){
				Horse.x += this.dive_speed;
				camera.x += this.dive_speed;
			}
			if(Horse.x > this.max_x){
				Horse.x = this.return_x;
				camera.x = this.init_camera_x;//this.return_x;
			}	
			/*if(this.mig_speed < 35){
				this.mig_speed += 4;
			}*/
		}
		
		protected function diveRight(e:MouseEvent):void {
			doDiveRight();
		}
		
		protected function diveLeft(e:MouseEvent):void {
			this.doDiveLeft();
		}
		
		protected function doDiveLeft():void {
			if(this.mig_speed > this.min_speed_to_dive){
				Horse.x -= this.dive_speed;
				camera.x -= this.dive_speed;
			}	
			if(Horse.x < this.min_x){
				Horse.x = this.return_x;
				camera.x = this.init_camera_x;//this.return_x;
			}
			/*if(this.mig_speed < 35){
				this.mig_speed += 4;
			}*/
		}
		
		protected function doThrottleless(e:MouseEvent):void {
			this.Throttleless();
		}
		
		protected function Throttleless():void{
			this.mig_speed -= 4;
			if(this.mig_speed < 0){
				this.mig_speed = 0;
			}
		}
		
		protected override function initEngine():void
		{
			super.initEngine();
			camera.z = this.init_camera_z;
			camera.x = this.init_camera_x;
			camera.y = this.init_camera_y;
		}
		
		protected override function  initScene():void{
			super.initScene();
			this.view.scene.addChild(new Trident(50));
			Western = new Migs();
			
			//Western.x = 200;
			Western.y = -600;
			this.scene.addChild(Western);
			Horse = Western.children[0];
			tucoCapturesBlondie();
			addEventListener( Event.ENTER_FRAME, onRiding );
		}
		
		private function onRiding(e:Event):void
		{
			stantonRoad();
 			bad.text = "Икс:" + Horse.x.toString();
			ugly.text = "год:" + Horse.y.toString();
			good.text = "зет:" + Horse.z.toString();
            mig_rotation.text = "RotY:" + Horse.rotationY.toString();
			speed_gauge.text = "спид:" + mig_speed.toString();
			speedGauge.updateValue(mig_speed);
			if(this.flag == 2 && this.started){
				if(this.mig_speed > 0){
					Horse.z += mig_speed;
					camera.z += mig_speed;
				}
				if(Horse.z > 4200){
					Horse.z = mig_init;
					camera.z = camera_init;				
				}
			}
        }
		
		private function stantonRoad():void{//taking off sumatoria
			if(this.flag == 1){
				if(Horse.y < 550){
					Horse.rotationY += 4;
					Horse.y += 10;
				}else{
					this.mig_init = mig_init - 4200;
					this.camera_init = camera_init - 4200;
					Horse.rotationY = 180;
					this.flag = 2;
					
				}
			}
		}
	}
}