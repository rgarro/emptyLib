package emptyLib.Iso.Tutorial {
	import as3isolib.display.scene.IsoScene;
	import as3isolib.enum.RenderStyleType;
	import as3isolib.display.primitive.IsoBox;
	import flash.display.Sprite;

	/**
	 * @author Rolando <rolando2emptyart.xyz>
	 */
	public class Wiki3 extends Sprite {
		public function Wiki3():void {
			var box:IsoBox = new IsoBox();
			box.styleType = RenderStyleType.SHADED;
			//box.fills = [0xff0000,0xff0000,0xff0000,0xff0000,0xff0000,0xff0000];
			box.setSize(25, 30, 40);
			box.moveTo(200, 0, 0);
			
			var scene:IsoScene = new IsoScene();
			scene.hostContainer = this;
			scene.addChild(box);
			scene.render();
		}
	}
}