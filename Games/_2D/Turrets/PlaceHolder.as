package emptyLib.Games._2D.Turrets
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	
	public class PlaceHolder extends Sprite
	{
		public function PlaceHolder(x:int,y:int,color:uint)
		{
			super();
			var g:Graphics = this.graphics;
			g.beginFill(color);
			g.drawCircle(0,0,20);
			g.endFill();
			this.x = x;
			this.y = y;
		}
	}
}