package emptyLib.Iso.Tutorial {
	import as3isolib.display.IsoView;
	import as3isolib.display.renderers.DefaultShadowRenderer;
	import as3isolib.core.ClassFactory;
	import as3isolib.core.IFactory;
	import as3isolib.display.primitive.IsoBox;
	import as3isolib.display.scene.IsoGrid;
	import as3isolib.display.scene.IsoScene;
	import flash.display.Sprite;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Wiki6 extends Sprite {
		
		public function Wiki6():void {
			
			var scene:IsoScene = new IsoScene();
			scene.hostContainer = this;
			
			var g:IsoGrid = new IsoGrid();
			g.showOrigin = true;
			scene.addChild(g);
			g.x = 200;
				
			var box:IsoBox = new IsoBox();
			g.addChild(box);
			box.setSize(25, 25, 25);
			box.moveBy(20, 20, 15);
			//scene.addChild(box);
			
			var factory:ClassFactory = new ClassFactory(DefaultShadowRenderer);	
			factory.properties = {shadowColor:0x000000,shadowAlpha:0.15,drawAll:false};
			scene.styleRenderers = [factory];
			scene.render();
			
			var view:IsoView = new IsoView();
			view.y = 50;
			view.setSize(150, 100);
			addChild(view);
		}
		
		
	}
}