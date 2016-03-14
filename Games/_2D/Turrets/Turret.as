package emptyLib.Games._2D.Turrets
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	
	public class Turret extends Sprite
	{
		public var graphic:Graphics;
		public var t_color:uint;
		public var radius:Number;
		
		public function Turret(color:uint,radius:Number)
		{
			super();
			this.t_color = color;
			this.radius = radius;
			this.draw();
			this.alpha = 0.5;
			this.mouseEnabled = false;
			this.visible = false;
		}
		
		private function draw():void{
			this.graphic = new Graphics();
			this.graphic.beginFill(this.t_color);
			this.graphic.drawCircle(0,0,this.radius);
			this.graphic.beginFill(0x800000);
			this.graphic.drawRect(0,-5,25,10);
			this.graphic.endFill();
		}
	}
}