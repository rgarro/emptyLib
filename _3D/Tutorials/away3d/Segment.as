package emptyLib._3D.Tutorials.away3d
{
	import flash.events.Event;
	import flash.geom.Vector3D;
	
	import away3d.core.base.Geometry;
	import away3d.core.base.SubGeometry;
	import away3d.entities.Mesh;
	import away3d.entities.SegmentSet;
	import away3d.materials.ColorMaterial;
	import away3d.primitives.LineSegment;
	import away3d.primitives.data.Segment;
	
	import emptyLib._3D.Template;
	
	public class Segment extends Template
	{
		public var mesh:Mesh;
		
		public function Segment()
		{
			super();
			this.addEventListener(Event.ENTER_FRAME,render);
		}
		
		protected function render(e:Event):void{
			mesh.rotationY++;
		}
		
		protected override function initScene():void{
			super.initScene();
			var geometry:Geometry = new Geometry();
			var subgeometry:SubGeometry = new SubGeometry();
			var verts:Vector.<Number> = new Vector.<Number>();
			verts.push(-50,50,0);
			verts.push(50,50,0);
			verts.push(-50,-50,0);
			var indices:Vector.<uint> = new Vector.<uint>();
			indices.push(0,1,2);
			subgeometry.updateVertexData(verts);
			subgeometry.updateIndexData(indices);
			geometry.addSubGeometry(subgeometry);
			mesh = new Mesh(geometry,new ColorMaterial(0xc69f59));
			this.scene.addChild(mesh);
		}
		
	}
}