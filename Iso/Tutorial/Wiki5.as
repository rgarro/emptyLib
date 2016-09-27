package emptyLib.Iso.Tutorial {
	import as3isolib.display.IsoView;
	import as3isolib.display.scene.IsoScene;
	import as3isolib.display.scene.IsoGrid;
	import as3isolib.display.primitive.IsoBox;
	import flash.display.Sprite;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	[SWF(width="800",height="600",backgroundColor="#ffffff",frameRate="30")]   
	public class Wiki5 extends Sprite {
		
		
		public function Wiki5():void {
			var box:IsoBox =  new IsoBox();
			box.moveTo(15, 15, 0);
			
			var grid:IsoGrid = new IsoGrid();
			
			var scene:IsoScene = new IsoScene();
			scene.addChild(box);
			scene.addChild(grid);
			scene.render();
			
			var view:IsoView;
			view.setSize(150, 100);
			view.addScene(scene);
			
			this.addChild(view);	
		}
	}
}