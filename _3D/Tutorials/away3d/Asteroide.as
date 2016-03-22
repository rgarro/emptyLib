package emptyLib._3D.Tutorials.away3d
{
	import away3d.core.base.Geometry;
	import away3d.entities.Mesh;
	import away3d.entities.Sprite3D;
	import away3d.materials.MaterialBase;
	import away3d.materials.TextureMaterial;
	import away3d.primitives.SphereGeometry;
	import away3d.utils.Cast;
	
	import emptyLib._3D.Template;
	
	public class Asteroide extends Template
	{
		
		[Embed(source="../../../Assets/Places/parkingSpot.png")]
		public static var FloorDiffuse:Class;
		
		[Embed(source="../../../Assets/War/caleroMap.png")]
		public static var caleroMap:Class;
		
		public function Asteroide()
		{
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			var material:MaterialBase = new TextureMaterial(Cast.bitmapTexture(FloorDiffuse));
			
			var sphere:SphereGeometry = new SphereGeometry(300);
			var mesh:Mesh = new Mesh(sphere,material);
			
			this.scene.addChild(mesh);
			var sprite:Sprite3D = new Sprite3D(new TextureMaterial(Cast.bitmapTexture(FloorDiffuse)),250,250);
			this.scene.addChild(sprite);
		}
	}
}