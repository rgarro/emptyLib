package emptyLib.Iso.Tutorial {
	import as3isolib.display.scene.IsoScene;
	import as3isolib.display.primitive.IsoBox;
	import flash.display.Sprite;

	/**
	 * @author rolando
	 */
	public class Wiki2 extends Sprite {
		public function Wiki2() {
			var box0:IsoBox = new IsoBox();
			box0.setSize(25, 25, 25);
			box0.moveTo(200, 0, 0);
			
			var box1:IsoBox = new IsoBox();
			box1.width = 10;
			box1.length = 25;
			box1.height = 50;
			box1.moveTo(230, -15, 20);
			
			var box2:IsoBox = new IsoBox();
			box2.setSize(10, 50, 5);
			box2.moveTo(200, 30, 10);
			
			var scene:IsoScene = new IsoScene();
			scene.hostContainer = this;
			scene.addChild(box2);
			scene.addChild(box1);
			scene.addChild(box0);
			scene.render();
		}
	}
}