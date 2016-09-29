package emptyLib.Iso.Games.SideCopter {
	import eDpLib.events.ProxyEvent;
	import flash.media.Sound;
	import flash.ui.Keyboard;
	import flash.events.KeyboardEvent;
	import flash.display.Bitmap;
	import emptyLib.Iso.Tutorial.IsoAssets;
	import as3isolib.display.scene.IsoScene;
	import flash.display.Scene;
	import as3isolib.display.IsoSprite;
import flash.external.ExternalInterface;
	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Copter extends IsoSprite {
		
		[Embed(source="Assets/Sounds/Helicopt-Diode111-8858_hifi.mp3")] 
        protected var heliSoundClass:Class; 
		protected var heliSound:Sound;
		
		public var scene:IsoScene;
		protected var assets:IsoAssets;
		
		public function Copter(descriptor : Object = null) {
			super(descriptor);
			
			this.assets = new IsoAssets();
			this.sprites = [new Bitmap(assets.sideCombatCopterAData)];
			this.addEventListener(KeyboardEvent.KEY_UP, controls);
			
			this.heliSound = new heliSoundClass() as Sound;
			this.heliSound.play(0,100);	
		}
		
		protected function controls(e:ProxyEvent):void{
ExternalInterface.call("alert", "el timon funciona");
/*var evtb:KeyboardEvent = new KeyboardEvent(e);			
			switch(evtb.keyCode){
				case Keyboard.UP: //up
					this.elevationUp();
					break;
				default:
					//this.initSphere();
					break;
			}*/
		}
		
		protected function elevationUp():void{
			this.z = this.z + 10;
			this.scene.render();
		}		
		
	}
}