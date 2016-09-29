package emptyLib.Iso.Tutorial {
	import flash.display.Bitmap;
	import as3isolib.display.IsoSprite;
	import as3isolib.graphics.Stroke;
	import emptyLib.Iso.IsoTemplate;
	import as3isolib.geom.IsoMath;
	import eDpLib.events.ProxyEvent;
	import flash.events.MouseEvent;
	import as3isolib.display.primitive.IsoBox;
	import as3isolib.geom.Pt;
	import emptyLib.Iso.IsoTemplate;
	import as3isolib.display.IsoView;
	import as3isolib.display.scene.IsoScene;
	import as3isolib.display.scene.IsoGrid;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	[SWF(width="800",height="600",backgroundColor="#ffffff",frameRate="30")]
	public class Three extends IsoTemplate {
		
		protected var assets:IsoAssets;
		protected var iso:IsoSprite;
		
		public function Three():void {
			
			this.assets = new IsoAssets();
			
			this.grid = new IsoGrid();
			this.grid.setGridSize(8,8,1);
			this.grid.gridlines = new Stroke(1, 0x000000);
			this.grid.cellSize = this.cellSize;
			this.grid.showOrigin = false;
			//this.grid.addEventListener(MouseEvent.CLICK, gridClick);
			
			this.iso = new IsoSprite();
			this.iso.sprites = [new Bitmap(this.assets.isoCopterData)];
			
			
			//this.box = new IsoBox();
			//this.box.setSize(this.cellSize, this.cellSize, this.cellSize);
			
			this.scene = new IsoScene();
			this.scene.addChild(this.grid);
			//this.scene.addChild(this.box);
			this.scene.addChild(this.iso);
			this.scene.render();
			
			this.view = new IsoView();
			this.view.setSize(800, 600);
			this.view.centerOnPt(new Pt(150,150,0));
			this.view.addScene(this.scene);
			this.addChild(this.view);
		}
	}
}