package emptyLib.Iso.Tutorial {
	
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
	 [SWF(width="800",height="600",backgroundColor="#000000",frameRate="30")]
	public class two extends IsoTemplate {
		
		protected var box:IsoBox;
		
		public function two() {
			this.grid = new IsoGrid();
			this.grid.setGridSize(10,10,1);
			this.grid.cellSize = this.cellSize;
			this.grid.showOrigin = false;
			this.grid.addEventListener(MouseEvent.CLICK, gridClick);
			
			
			this.box = new IsoBox();
			this.box.setSize(this.cellSize, this.cellSize, this.cellSize);
			
			this.scene = new IsoScene();
			this.scene.addChild(this.grid);
			this.scene.addChild(this.box);
			this.scene.render();
			
			this.view = new IsoView();
			this.view.setSize(800, 600);
			this.view.centerOnPt(new Pt(200,200,0));
			this.view.addScene(this.scene);
			this.addChild(this.view);
		}
		
		protected function gridClick(event:ProxyEvent):void{
			var me:MouseEvent = MouseEvent(event.targetEvent);
			var p:Pt = new  Pt(me.localX,me.localY);
			IsoMath.screenToIso(p);
			//box.moveTo(p.x, p.y, p.z);
			box.moveTo(Math.floor(p.x/this.cellSize) * this.cellSize, Math.floor(p.y/this.cellSize) * this.cellSize, Math.floor(p.z/this.cellSize) * this.cellSize);
			scene.render();
		}
	}
}