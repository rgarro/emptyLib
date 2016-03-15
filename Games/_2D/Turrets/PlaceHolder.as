package emptyLib.Games._2D.Turrets
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	import emptyLib.Games._2D.Turrets.Turret;
	
	public class PlaceHolder extends Sprite
	{
		
		public var turret:Turret;
		
		public function PlaceHolder(x:int,y:int,color:uint,turret:Turret)
		{
			super();
			this.turret = turret;
			var g:Graphics = this.graphics;
			g.beginFill(color);
			g.drawCircle(0,0,20);
			g.endFill();
			this.x = x;
			this.y = y;
			this.addChild(this.turret);
			this.addEventListener(MouseEvent.MOUSE_OVER,mouseOverHandler);
			this.addEventListener(MouseEvent.MOUSE_OUT,mouseOutHandler);
		}
		
		private function mouseOverHandler(event:MouseEvent):void{			
			this.turret.show();
		}
		
		private function mouseOutHandler(event:MouseEvent):void{
			this.turret.hide();
		}

	}
}