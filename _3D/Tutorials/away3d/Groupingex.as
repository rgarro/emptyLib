package emptyLib._3D.Tutorials.away3d
{
	import away3d.containers.ObjectContainer3D;
	import away3d.entities.Mesh;
	import away3d.materials.ColorMaterial;
	import away3d.primitives.SphereGeometry;
	
	import emptyLib._3D.Template;
	
	public class Groupingex extends Template
	{
		public function Groupingex()
		{
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			var container:ObjectContainer3D = new ObjectContainer3D();
			container.x = 0; container.y = 0; container.z = 500;
			this.scene.addChild(container);
			var geometry:SphereGeometry = new SphereGeometry();
			var mesh:Mesh = new Mesh(geometry,new ColorMaterial(0xb1916e));
			mesh.x = 0;mesh.y = 0; mesh.z = 0;
			container.addChild(mesh);
		}
	}
}