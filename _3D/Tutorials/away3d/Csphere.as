package emptyLib._3D.Tutorials.away3d
{
	import away3d.primitives.Sphere;
	import emptyLib._3D.Template;
	
	public class Csphere extends Template
	{
	
	public function Csphere()
		{
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			
			var sphere:Sphere = new Sphere();
			sphere.x = 210; sphere.y = -310; sphere.z = -200;
			this.scene.addChild(sphere);
		}
	}
}