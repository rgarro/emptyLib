package emptyLib.Iso {
	import as3isolib.display.IsoView;
	import as3isolib.display.scene.IsoScene;
	import as3isolib.display.scene.IsoGrid;
	import flash.display.Sprite;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class IsoTemplate extends Sprite {
		
		protected var grid:IsoGrid;
		protected var scene:IsoScene;
		protected var view:IsoView;
		public var cellSize:Number = 50;
		
		public function IsoTemplate():void {
			this.grid = new IsoGrid();
			
			this.scene = new IsoScene();
			this.scene.addChild(this.grid);
			this.scene.render();
			
			this.view = new IsoView();
		}
	}
}