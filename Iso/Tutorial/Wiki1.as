package emptyLib.Iso.Tutorial {
	import as3isolib.display.scene.IsoScene;
	import as3isolib.display.primitive.IsoBox;
	import flash.display.Sprite;

	/**
	 * @author rolando
	 */
	public class Wiki1 extends Sprite {
		public function Wiki1() {
			var box:IsoBox = new IsoBox();
			box.setSize(25, 25, 25);
			box.moveTo(200, 0, 0);
			
			var scene:IsoScene = new IsoScene();
			scene.hostContainer = this;
			scene.addChild(box);
			scene.render();
		}
	}
}