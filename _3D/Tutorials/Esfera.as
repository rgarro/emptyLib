package emptyLib._3D.Tutorials
{
	import away3d.entities.Mesh;
	import away3d.primitives.SphereGeometry;
	
	import emptyLib._3D.Template;
	
	public class Esfera extends Template
	{
	
		
		public function Esfera()
		{
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			
			var sphere:SphereGeometry = new SphereGeometry();
			var mesh:Mesh = new Mesh(sphere);
			
			this.scene.addChild(mesh);
		}
	}
}