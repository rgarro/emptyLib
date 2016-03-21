package emptyLib._3D.Tutorials.away3d
{
	
	import flash.geom.Vector3D;
	
	import away3d.core.base.Geometry;
	import away3d.entities.Mesh;
	import away3d.materials.ColorMaterial;
	import away3d.primitives.RegularPolygonGeometry;
	import away3d.primitives.SphereGeometry;
	import away3d.primitives.TorusGeometry;
	
	import emptyLib._3D.Template;
	import emptyLib._3D.Triangle;
	
	public class Vertex extends Template
	{
		public function Vertex()
		{
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			//var triangleG:Geometry = new RegularPolygonGeometry(34,32);
			var material:ColorMaterial = new ColorMaterial(0xff4500);
			var triang:Triangle = new Triangle(material,new Vector3D(0,128,0),new Vector3D(-128,0,0),new Vector3D(128,0,0));
			var mesh:Mesh = new Mesh(triang);
			//this.scene.addChild(mesh);
			//var sphere:SphereGeometry = new SphereGeometry();
			//var mesh:Mesh = new Mesh(sphere);
			
			this.scene.addChild(mesh);
		}
	}
}