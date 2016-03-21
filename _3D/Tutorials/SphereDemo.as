package emptyLib._3D.Tutorials
{
	
	import away3d.containers.ObjectContainer3D;
	import emptyLib._3D.Template;
	
	public class SphereDemo extends Template
	{
		
		[Embed(source="../../Assets/War/caleroMap.png")]
		public static var EarthSurfaceDiffuse:Class;
		
		private var _earth:ObjectContainer3D;
		

		public function SphereDemo()
		{
			super();
		}
		
		protected override function initScene():void{
			super.initScene();
			/*var earthSurfaceTexture:BitmapTexture = Cast.bitmapTexture( EarthSurfaceDiffuse );
			var earthSurfaceMaterial:TextureMaterial = new TextureMaterial( earthSurfaceTexture );
			// Geometry.
			var earthSurfaceGeometry:SphereGeometry = new SphereGeometry( 100, 200, 100 );
			// Mesh.
			var earthSurfaceMesh:Mesh = new Mesh( earthSurfaceGeometry, earthSurfaceMaterial );
			// Container.
			_earth = new ObjectContainer3D();
			_earth.rotationY = Math.random();//rand( 0, 360 );
			this.view.scene.addChild( _earth );
			_earth.addChild( earthSurfaceMesh );*/
		}
	}
}