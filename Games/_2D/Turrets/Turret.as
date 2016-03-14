package emptyLib.Games._2D.Turrets
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	
	public class Turret extends Sprite
	{
		public var graphict:Graphics;
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
		
		public function show():void{
			this.visible = true;
		}
		
		public function hide():void{
			this.visible = false;
		}
		
		private function draw():void{
			this.graphict = this.graphics;
			this.graphict.beginFill(this.t_color);
			this.graphict.drawCircle(0,0,this.radius);
			this.graphict.beginFill(0x800000);
			this.graphict.drawRect(0,-5,25,10);
			this.graphict.endFill();
		}
	}
}