package emptyLib.Iso.Tutorial {

	import as3isolib.geom.Pt;
	import emptyLib.Iso.IsoTemplate;
	import as3isolib.display.IsoView;
	import as3isolib.display.scene.IsoScene;
	import as3isolib.display.scene.IsoGrid;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	[SWF(width="800",height="600",backgroundColor="#000000",frameRate="30")] 
	public class one extends IsoTemplate {
		public function one() {
			
			this.grid = new IsoGrid();
			this.grid.setGridSize(10,10,1);
			this.grid.cellSize = this.cellSize;
			
			this.scene = new IsoScene();
			this.scene.addChild(this.grid);
			this.scene.render();
			
			this.view = new IsoView();
			this.view.setSize(800, 600);
			this.view.centerOnPt(new Pt(200,200,0));
			this.view.addScene(this.scene);
			this.addChild(this.view);
		}
	}
}