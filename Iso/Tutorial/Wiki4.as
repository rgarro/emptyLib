package emptyLib.Iso.Tutorial {
	import flash.display.Loader;
	import as3isolib.display.scene.IsoScene;
	import flash.display.Sprite;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	[SWF(width="800",height="600",backgroundColor="#000000",frameRate="30")]  
	public class Wiki4 extends Sprite {
		
		protected var scene:IsoScene;
		protected var loader:Loader;
		protected var assets:Object;
		
		public function Wiki4():void {
			this.loadAssetss();	
		}
		
		protected function loadAssetss():void{
			this.loader = new Loader();
			
		}
		
	}
}