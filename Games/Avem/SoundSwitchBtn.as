package emptyLib.Games.Avem {
	import flash.media.SoundMixer;
	import flash.media.SoundTransform;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.display.Bitmap;
	import flash.display.Sprite;

	/**
	 * @author rolando
	 */
	public class SoundSwitchBtn extends Sprite {
		
		[Embed(source="../../Assets/Sounds/Squeak_7-Intermed-473_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		protected var assets:Assets;
		protected var icon:Bitmap;
		protected var sound_on:Boolean;
		protected var soundTrans:SoundTransform;
		
		public function SoundSwitchBtn():void {
			this.useHandCursor = true;
			this.buttonMode = true;
			this.soundTrans = new SoundTransform(1,0);
			this.sound_on = true;
			this.assets = new Assets();
			this.clickSound = new clickSoundClass() as Sound;
			this.icon = new Bitmap(assets.offSoundData);
			this.addChild(this.icon);
			this.y = 10;this.x = 450;
			this.addEventListener(MouseEvent.CLICK, theClick);
		}
		
		protected function theClick(e:MouseEvent):void{
			var vol:Number = 0.9;
			this.clickSound.play();
			this.removeChild(this.icon);
			if(sound_on){
				sound_on = false;
				this.icon = null;
				this.icon = new Bitmap(assets.onSoundData);
				vol = 0.001;			
			}else{
				sound_on = true;
				this.icon = null;
				this.icon = new Bitmap(assets.offSoundData);
				vol = 1;
			}
			this.addChild(this.icon);
			this.soundTrans.volume = vol;
			SoundMixer.soundTransform = this.soundTrans;
		}
	}
}