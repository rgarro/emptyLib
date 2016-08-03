

package emptyLib._3D.Tutorials.away3d
{
	import away3d.containers.ObjectContainer3D;
	import away3d.containers.Scene3D;
	import away3d.materials.*;
	import away3d.core.base.*;
	import away3d.loaders.utils.*;
	import away3d.loaders.data.*;
	import flash.utils.Dictionary;
	import away3d.primitives.*;
	import flash.display.Bitmap;
	import flash.display.BitmapData;

	import away3d.core.base.Vertex;

	import flash.geom.*;

	public class Mig extends ObjectContainer3D
	{
		[Embed(source="images/ID4.jpg")]
		private var Id4_Bitmap_Bitmap:Class;

		[Embed(source="images/ID45.jpg")]
		private var Id45_Bitmap_Bitmap:Class;

		[Embed(source="images/ID54.jpg")]
		private var Id54_Bitmap_Bitmap:Class;

		[Embed(source="images/ID63.jpg")]
		private var Id63_Bitmap_Bitmap:Class;

		[Embed(source="images/ID100.jpg")]
		private var Id100_Bitmap_Bitmap:Class;

		[Embed(source="images/ID154.jpg")]
		private var Id154_Bitmap_Bitmap:Class;

		[Embed(source="images/ID184.jpg")]
		private var Id184_Bitmap_Bitmap:Class;

		[Embed(source="images/ID191.jpg")]
		private var Id191_Bitmap_Bitmap:Class;

		[Embed(source="images/ID306.jpg")]
		private var Id306_Bitmap_Bitmap:Class;

		[Embed(source="images/ID315.jpg")]
		private var Id315_Bitmap_Bitmap:Class;

		[Embed(source="images/ID322.jpg")]
		private var Id322_Bitmap_Bitmap:Class;

		[Embed(source="images/ID353.jpg")]
		private var Id353_Bitmap_Bitmap:Class;

		[Embed(source="images/ID411.jpg")]
		private var Id411_Bitmap_Bitmap:Class;

		private var objs:Object = {};
		private var geos:Array = [];
		private var oList:Array =[];
		private var aC:Array;
		private var aV:Array;
		private var aU:Array;
		private var _scale:Number;

		public function Mig(scale:Number = 1)
		{
			_scale = scale;
			setSource();
			addContainers();
			buildMeshes();
			buildMaterials();
			cleanUp();
		}

		private function buildMeshes():void
		{
			var m0:Matrix3D = new Matrix3D();
			m0.rawData = Vector.<Number>([0.140571,0.0110632,1.4933578,0,0.0615833,0.9980148,-0.0131904,0,-1.4905391,0.0938201,0.1396106,0,430.1436124152862*_scale,29.08135996251973*_scale,136.39685973622096*_scale,1]);
			transform = m0;

			objs.obj0 = {name:"ID4",  transform:m0, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj0.geo=geos[0];
			var m1:Matrix3D = new Matrix3D();
			m1.rawData = Vector.<Number>([0.3398144,7.9163099,0,0,0,0,-1.24,0,-6.8137253,0.292485,0,0,481.6049067*_scale,24.8335394*_scale,138.113402686*_scale,1]);
			transform = m1;

			objs.obj1 = {name:"ID45",  transform:m1, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj1.geo=geos[1];
			var m2:Matrix3D = new Matrix3D();
			m2.rawData = Vector.<Number>([2.0565058,0.0179469,0.1185819,0,-0.0179767,2.0599216,0,0,-0.2110677,-0.001842,3.6607198,0,229.71800591232557*_scale,34.09285777968196*_scale,109.75360984880899*_scale,1]);
			transform = m2;

			objs.obj2 = {name:"ID54",  transform:m2, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj2.geo=geos[2];
			var m3:Matrix3D = new Matrix3D();
			m3.rawData = Vector.<Number>([1.1099577,0.0096865,0,0,-0.0096865,1.1099577,0,0,0,0,1.11,0,224.0567403126512*_scale,33.174138864134804*_scale,168.136538463*_scale,1]);
			transform = m3;

			objs.obj3 = {name:"ID63",  transform:m3, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj3.geo=geos[3];
			var m4:Matrix3D = new Matrix3D();
			m4.rawData = Vector.<Number>([1.1499562,0.0100355,0,0,-0.0100355,1.1499562,0,0,0,0,1.15,0,269.0915571781951*_scale,31.19870999023156*_scale,168.38860471750002*_scale,1]);
			transform = m4;

			objs.obj4 = {name:"ID100",  transform:m4, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj4.geo=geos[4];
			var m5:Matrix3D = new Matrix3D();
			m5.rawData = Vector.<Number>([2.5791242,-0.6645943,-0.0576954,0,0.6670911,2.570121,0.215322,0,0.0019453,-0.2229093,2.654657,0,254.05099155000846*_scale,49.83089963693396*_scale,487.34462815291096*_scale,1]);
			transform = m5;

			objs.obj5 = {name:"ID154",  transform:m5, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj5.geo=geos[5];
			var m6:Matrix3D = new Matrix3D();
			m6.rawData = Vector.<Number>([0.9598734,7.8652451,0,0,0,0,-1.24,0,-6.7697727,0.8261821,0,0,10.999385*_scale,1.0599798*_scale,80.184880486*_scale,1]);
			transform = m6;

			objs.obj6 = {name:"ID184",  transform:m6, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj6.geo=geos[6];
			var m7:Matrix3D = new Matrix3D();
			m7.rawData = Vector.<Number>([1.5,0,0,0,0,1.5,0,0,0,0,1.5,0,75.79558315*_scale,11.438590825*_scale,89.00772319999999*_scale,1]);
			transform = m7;

			objs.obj7 = {name:"ID191",  transform:m7, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj7.geo=geos[7];
			var m8:Matrix3D = new Matrix3D();
			m8.rawData = Vector.<Number>([-0.9999619,-0.0087265,0,0,0,0,1,0,-0.0087265,0.9999619,0,0,246.9379176*_scale,77.7488158*_scale,396.4288096*_scale,1]);
			transform = m8;

			objs.obj8 = {name:"ID306",  transform:m8, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj8.geo=geos[8];
			var m9:Matrix3D = new Matrix3D();
			m9.rawData = Vector.<Number>([-2.0599216,-0.0179767,0,0,-0.0179767,2.0599216,0,0,0,0,3.6668,0,265.2382617954025*_scale,34.71619375571922*_scale,110.3567958694*_scale,1]);
			transform = m9;

			objs.obj9 = {name:"ID315",  transform:m9, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj9.geo=geos[9];
			var m10:Matrix3D = new Matrix3D();
			m10.rawData = Vector.<Number>([-1.0259257,-0.0122825,0.0012937,0,-0.0123381,1.0240624,-0.061806,0,-0.0005514,-0.0618171,-1.0241359,0,246.80156718999834*_scale,62.915287539866725*_scale,411.363964615965*_scale,1]);
			transform = m10;

			objs.obj10 = {name:"ID322",  transform:m10, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj10.geo=geos[10];
			var m11:Matrix3D = new Matrix3D();
			m11.rawData = Vector.<Number>([0.9999619,0.0087265,0,0,-0.0087265,0.9999619,0,0,0,0,1,0,238.50040088490547*_scale,14.136809607400966*_scale,476.1697147*_scale,1]);
			transform = m11;

			objs.obj11 = {name:"ID353",  transform:m11, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj11.geo=geos[11];
			var m12:Matrix3D = new Matrix3D();
			m12.rawData = Vector.<Number>([0.9999619,0.0087265,0,0,-0.0087265,0.9999619,0,0,0,0,1,0,231.59367838490547*_scale,17.104600207400964*_scale,478.1070707*_scale,1]);
			transform = m12;

			objs.obj12 = {name:"ID411",  transform:m12, pivotPoint:new Vector3D(0,0,0), container:1, bothsides:false, material:null, ownCanvas:false, pushfront:false, pushback:false};
			objs.obj12.geo=geos[12];

			var ref:Object;
			var mesh:Mesh;
			var j:int;
			var av:Array;
			var au:Array;
			var v0:Vertex;
			var v1:Vertex;
			var v2:Vertex;
			var u0:UV;
			var u1:UV;
			var u2:UV;
			var aRef:Vector.<Face>;
			for(var i:int = 0;i<13;++i){
				ref = objs["obj"+i];
				if(ref != null){
					mesh = new Mesh();
					mesh.type = ".as";
					mesh.bothsides = ref.bothsides;
					mesh.name = ref.name;
					mesh.pushfront = ref.pushfront;
					mesh.pushback = ref.pushback;
					mesh.ownCanvas = ref.ownCanvas;
					if(aC[ref.container]!= null)
						aC[ref.container].addChild(mesh);

					oList.push(mesh);
					mesh.transform = ref.transform;
					mesh.movePivot(ref.pivotPoint.x, ref.pivotPoint.y, ref.pivotPoint.z);
					if (ref.geo.geometry != null) {
						mesh.geometry = ref.geo.geometry;
						continue;
					}
					ref.geo.geometry = new Geometry();
					mesh.geometry = ref.geo.geometry;
					aRef = ref.geo.f;
					for(j = 0;j<aRef.length;++j){
						Face(aRef[j]).material = ref.material;
						ref.geo.geometry.addFace( Face(aRef[j]));
					}

				}
			}
		}

		private function setSource():void
		{
			var geo0vert:String ="-5.27e9478c72d01/0/-7.ba4811db5b01,-6.22b56b254b9210/0/-4.2c19798ba7402,-7.ca60dd17ddc0e/0/-4.2a8a797034502,-5.13688b497a580f/0/-6.33329a5e42503,-2.89d639e7cfe20/0/-7.057ee58951c03,-2.d7c5694a34c11/0/-6.2d923beb46f03,6.354cdc62d04ff/0/3.1442256a5e47db,7.365356/0/3.14e6d9e1838de8,3.1bffddb1617ff/0/7.ba4811db5b01,3.121db41d1499e5/0/6.2c45cc08e2dfd";
			var geo0uvs:String ="0.270f/0,0.5/1,0/0";
			var geo0faces:String ="0,1,2,0,1,2,1,0,3,0,1,2,3,0,4,0,1,2,3,4,5,0,1,2,5,4,6,0,1,2,6,4,7,0,1,2,1,8,2,0,1,2,8,1,9,0,1,2,8,9,7,0,1,2,7,9,6,0,1,2";
			var geo0:FacesDefinition = new FacesDefinition();
			geo0.f = buildFaces( geo0faces.split(","),  buildVertices(read(geo0vert).split(",")), buildUVs(read(geo0uvs).split(",")) );
			geos.push(geo0);
			var geo1vert:String ="0.04f52a/14.18a66bd/0.0bf808,0.09291b/-14.18a66bd/0.09291b,0.04f52a/-14.18a66bd/0.0bf808,0.09291b/14.18a66bd/0.09291b,0.09291b/14.18a66bd/0.09291b,0.04f52a/14.18a66bd/0.0bf808,0.09291b/-14.18a66bd/0.09291b,0.04f52a/-14.18a66bd/0.0bf808,0.0bf808/14.18a66bd/0.04f52a,0.0bf808/-14.18a66bd/0.04f52a,0.0bf808/14.18a66bd/0.04f52a,0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/-14.18a66bd/-0.04f52a,-0.0cf47b/-14.18a66bd/0,-0.09291b/-14.18a66bd/-0.09291b,-0.09291b/-14.18a66bd/0.09291b,-0.04f52a/-14.18a66bd/-0.0bf808,-0.04f52a/-14.18a66bd/0.0bf808,0/-14.18a66bd/-0.0cf47b,0/-14.18a66bd/0.0cf47b,0.04f52a/-14.18a66bd/-0.0bf808,0.04f52a/-14.18a66bd/0.0bf808,0.09291b/-14.18a66bd/0.09291b,0.09291b/-14.18a66bd/-0.09291b,0.0bf808/-14.18a66bd/-0.04f52a,0.0bf808/-14.18a66bd/0.04f52a,0.0cf47b/-14.18a66bd/0,0.0cf47b/-14.18a66bd/0,0.0bf808/-14.18a66bd/0.04f52a,0.0bf808/-14.18a66bd/-0.04f52a,0.09291b/-14.18a66bd/0.09291b,0.09291b/-14.18a66bd/-0.09291b,0.04f52a/-14.18a66bd/-0.0bf808,0.04f52a/-14.18a66bd/0.0bf808,0/-14.18a66bd/0.0cf47b,0/-14.18a66bd/-0.0cf47b,-0.04f52a/-14.18a66bd/0.0bf808,-0.04f52a/-14.18a66bd/-0.0bf808,-0.09291b/-14.18a66bd/0.09291b,-0.09291b/-14.18a66bd/-0.09291b,-0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/-14.18a66bd/-0.04f52a,-0.0cf47b/-14.18a66bd/0,0/14.18a66bd/0.0cf47b,0/-14.18a66bd/0.0cf47b,0/14.18a66bd/0.0cf47b,0/-14.18a66bd/0.0cf47b,-0.0bf808/14.18a66bd/-0.04f52a,-0.0bf808/14.18a66bd/0.04f52a,-0.0cf47b/14.18a66bd/0,-0.09291b/14.18a66bd/-0.09291b,-0.09291b/14.18a66bd/0.09291b,-0.04f52a/14.18a66bd/-0.0bf808,-0.04f52a/14.18a66bd/0.0bf808,0/14.18a66bd/-0.0cf47b,0/14.18a66bd/0.0cf47b,0.04f52a/14.18a66bd/-0.0bf808,0.04f52a/14.18a66bd/0.0bf808,0.09291b/14.18a66bd/0.09291b,0.09291b/14.18a66bd/-0.09291b,0.0bf808/14.18a66bd/-0.04f52a,0.0bf808/14.18a66bd/0.04f52a,0.0cf47b/14.18a66bd/0,0.0cf47b/14.18a66bd/0,0.0bf808/14.18a66bd/-0.04f52a,0.0bf808/14.18a66bd/0.04f52a,0.09291b/14.18a66bd/0.09291b,0.09291b/14.18a66bd/-0.09291b,0.04f52a/14.18a66bd/-0.0bf808,0.04f52a/14.18a66bd/0.0bf808,0/14.18a66bd/0.0cf47b,0/14.18a66bd/-0.0cf47b,-0.04f52a/14.18a66bd/0.0bf808,-0.04f52a/14.18a66bd/-0.0bf808,-0.09291b/14.18a66bd/0.09291b,-0.09291b/14.18a66bd/-0.09291b,-0.0bf808/14.18a66bd/0.04f52a,-0.0bf808/14.18a66bd/-0.04f52a,-0.0cf47b/14.18a66bd/0,0.0cf47b/14.18a66bd/0,0.0cf47b/-14.18a66bd/0,0.0cf47b/14.18a66bd/0,0.0cf47b/-14.18a66bd/0,0.0bf808/14.18a66bd/-0.04f52a,0.0bf808/-14.18a66bd/-0.04f52a,0.0bf808/14.18a66bd/-0.04f52a,0.0bf808/-14.18a66bd/-0.04f52a,0.09291b/14.18a66bd/-0.09291b,0.09291b/-14.18a66bd/-0.09291b,0.09291b/14.18a66bd/-0.09291b,0.09291b/-14.18a66bd/-0.09291b,0.04f52a/-14.18a66bd/-0.0bf808,0.04f52a/14.18a66bd/-0.0bf808,0.04f52a/14.18a66bd/-0.0bf808,0.04f52a/-14.18a66bd/-0.0bf808,0/-14.18a66bd/-0.0cf47b,0/14.18a66bd/-0.0cf47b,0/14.18a66bd/-0.0cf47b,0/-14.18a66bd/-0.0cf47b,-0.04f52a/-14.18a66bd/-0.0bf808,-0.04f52a/14.18a66bd/-0.0bf808,-0.04f52a/14.18a66bd/-0.0bf808,-0.04f52a/-14.18a66bd/-0.0bf808,-0.09291b/-14.18a66bd/-0.09291b,-0.09291b/14.18a66bd/-0.09291b,-0.09291b/14.18a66bd/-0.09291b,-0.09291b/-14.18a66bd/-0.09291b,-0.0bf808/14.18a66bd/-0.04f52a,-0.0bf808/-14.18a66bd/-0.04f52a,-0.0bf808/-14.18a66bd/-0.04f52a,-0.0bf808/14.18a66bd/-0.04f52a,-0.0cf47b/14.18a66bd/0,-0.0cf47b/-14.18a66bd/0,-0.0cf47b/-14.18a66bd/0,-0.0cf47b/14.18a66bd/0,-0.0bf808/14.18a66bd/0.04f52a,-0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/14.18a66bd/0.04f52a,-0.09291b/14.18a66bd/0.09291b,-0.09291b/-14.18a66bd/0.09291b,-0.09291b/-14.18a66bd/0.09291b,-0.09291b/14.18a66bd/0.09291b,-0.04f52a/-14.18a66bd/0.0bf808,-0.04f52a/14.18a66bd/0.0bf808,-0.04f52a/14.18a66bd/0.0bf808,-0.04f52a/-14.18a66bd/0.0bf808";
			var geo1uvs:String ="0.270f/0,0.5/1,0/0";
			var geo1faces:String ="0,1,2,0,1,2,1,0,3,0,1,2,4,5,6,0,1,2,7,6,5,0,1,2,1,8,9,0,1,2,8,1,3,0,1,2,4,6,a,0,1,2,b,a,6,0,1,2,c,d,e,0,1,2,d,c,f,0,1,2,f,c,10,0,1,2,f,10,11,0,1,2,11,10,12,0,1,2,11,12,13,0,1,2,13,12,14,0,1,2,13,14,15,0,1,2,15,14,16,0,1,2,15,16,17,0,1,2,15,17,18,0,1,2,18,17,19,0,1,2,19,17,1a,0,1,2,19,1a,1b,0,1,2,1c,1d,1e,0,1,2,1d,1f,1e,0,1,2,1e,1f,20,0,1,2,20,1f,21,0,1,2,1f,22,21,0,1,2,22,23,21,0,1,2,21,23,24,0,1,2,23,25,24,0,1,2,24,25,26,0,1,2,25,27,26,0,1,2,26,27,28,0,1,2,27,29,28,0,1,2,28,29,2a,0,1,2,2b,2a,29,0,1,2,2c,2,2d,0,1,2,2,2c,0,0,1,2,5,2e,7,0,1,2,2f,7,2e,0,1,2,30,31,32,0,1,2,31,30,33,0,1,2,31,33,34,0,1,2,34,33,35,0,1,2,34,35,36,0,1,2,36,35,37,0,1,2,36,37,38,0,1,2,38,37,39,0,1,2,38,39,3a,0,1,2,3a,39,3b,0,1,2,3b,39,3c,0,1,2,3b,3c,3d,0,1,2,3b,3d,3e,0,1,2,3e,3d,3f,0,1,2,40,41,42,0,1,2,42,41,43,0,1,2,41,44,43,0,1,2,44,45,43,0,1,2,43,45,46,0,1,2,46,45,47,0,1,2,45,48,47,0,1,2,47,48,49,0,1,2,48,4a,49,0,1,2,49,4a,4b,0,1,2,4a,4c,4b,0,1,2,4b,4c,4d,0,1,2,4c,4e,4d,0,1,2,4f,4d,4e,0,1,2,9,50,51,0,1,2,50,9,8,0,1,2,a,b,52,0,1,2,53,52,b,0,1,2,51,54,55,0,1,2,54,51,50,0,1,2,52,53,56,0,1,2,57,56,53,0,1,2,55,58,59,0,1,2,58,55,54,0,1,2,56,57,5a,0,1,2,5b,5a,57,0,1,2,58,5c,59,0,1,2,5c,58,5d,0,1,2,5e,5a,5f,0,1,2,5b,5f,5a,0,1,2,5d,60,5c,0,1,2,60,5d,61,0,1,2,62,5e,63,0,1,2,5f,63,5e,0,1,2,61,64,60,0,1,2,64,61,65,0,1,2,66,62,67,0,1,2,63,67,62,0,1,2,65,68,64,0,1,2,68,65,69,0,1,2,6a,66,6b,0,1,2,67,6b,66,0,1,2,6c,68,69,0,1,2,68,6c,6d,0,1,2,6e,6f,6b,0,1,2,6a,6b,6f,0,1,2,70,6d,6c,0,1,2,6d,70,71,0,1,2,72,73,6e,0,1,2,6f,6e,73,0,1,2,74,71,70,0,1,2,71,74,75,0,1,2,76,77,72,0,1,2,73,72,77,0,1,2,78,75,74,0,1,2,75,78,79,0,1,2,7a,7b,76,0,1,2,77,76,7b,0,1,2,78,7c,79,0,1,2,7c,78,7d,0,1,2,7e,7b,7f,0,1,2,7a,7f,7b,0,1,2,7d,2d,7c,0,1,2,2d,7d,2c,0,1,2,2e,7e,2f,0,1,2,7f,2f,7e,0,1,2";
			var geo1:FacesDefinition = new FacesDefinition();
			geo1.f = buildFaces( geo1faces.split(","),  buildVertices(read(geo1vert).split(",")), buildUVs(read(geo1uvs).split(",")) );
			geos.push(geo1);
			var geo2vert:String ="-1.1541c11/0.2289c3288b2d00/3.20acaf7eb84204,-1.2ab08db/-0.01ff45d1afdb210/4.191175c911d01,-1.2caffe7/-0.01fd739362c2205/3.1fad0bb0c55c03,-1.140eb37/0.213dcc34ce2702/4.476f4b,-1.e8f80f/-1.ca9879/3.20892bec8cf1fc,-1.d96dc7/-1.094d90f/4.107f89b1f151fb,-0.10b13a47e85b01/1.012c6ef/-4.1b514c,-0.443d191/-0.011942cdc534def/-4.1f9b43,-0.2dea12d/1.493ff09/3.234397ee2e3008,-0.2f1fd1d/1.432eb6f/4.1e9d0f20b3201,-1.a229e2bac5d02/-0.01e606e081b5df1/4.22543493a10bfc,-1.06ea3f7/0.4f8a12f/4.384f5aaf26c01,-0.2250e75/-1.53b60e1/3.f0ae7,-0.85d11ad08131f8/-1.4dee555/4.1e3dfe2dc2101,-0.261c9b9/-1.034a75476bacff/-4.1be9d4,-1.06a6aee793b01/-0.5e4efc1/4.f1062,-0.ca8d9a7f8d501/0.22dbd6f5b61f00/-4.6d4429,-0.389d723/-0.0fc7f191ee0203/-4.2a3f8772bd6ff,0.9a632790f08ff/1.1cb6bf65279502/-4.103221,0.121577f2d308ff/2.05f085b87bf02/4.60a44c,0.3520d43/2.0817dab/4.0528506e81101,-0.98e86237c33a08/1.1297867f6c2efe/5.01e8bec39d31fb,-0.5ea9237/-0.01b36f61a29f605/5.f55772d4ab5fb,-0.4e17be9/0.17f3c0b75de6ff/5.44e420,0.16e72a55b1e8ff/-2.0556897/4.163bb106fb09fb,0.4285551/-2.bebed7/4.0ca720,0.df84c951ac0ff/-1.1dc2363b1714fe/-4.113a53,-0.b8c869b21b101/-1.1686fd6cedb4ff/5.02b8c1e135801,-0.a4000b2242f01/-1.04f6217/-4.6dd77f,-0.1b53f0ab287701/-0.1ced4ab6e93cff/5.ff11e476871fb,-0.46c10606ee701/0.1f6d1b9470df02/-5.1f4df8,-0.20297cd/-0.07c37fb660453b4/-5.2304d6,0.225159b/1.1aa50ffe0f8702/-4.24b3ee1b1c1ff,1.b04aff3ce78fe/2.bebed7/-4.001f44,0.a69f819302c9f8/1.4c1212d/5.152b07,-0.68a7d3a371f1fc/1.86b6de1f19b02/5.4cc161,-0.14f1828a25f901/-0.016af19d6c6560f/5.7ae110,-0.a5ca82f7403df8/0.2c8a6b1/5.7d060c,1.1001e78488c6ff/-2.0817dab/-4.08fd2e81b2ffb,0.14fba711259902/-1.1e224d41051cff/5.1422d6,0.a9941b0ef3fdf0/-1.4996e5d/-4.638533,-0.4a1a8240186604/-1.208598d/5.1c525e9949001,-0.061246b/-0.2156518da21100/-5.1fd211,-0.f54f258d78d01/-0.14cc6783d9ccff/5.7cb9c8,0.4a9637dfe0adfc/0.19e68e1f248d02/-5.5d85cb,0.0cddcb4f5b21f9/-0.04d4d493393dbbc/-5.608e2d,0.1263e9d30a76ff/1.14632b259cf502/-5.15ac3f,1.229e3e1/2.0556897/-4.540f28,0.9c3d7fb09bbe08/1.2bf6af1/5.2089c49d46d01,-0.0221563326b4a08/0.1ebb255ffe3901/5.8295a1,-0.3ad495aef9301/-0.01b597522bc4ff/6.0232cdee3bc405,-0.0e2d81c1d5e1fa/0.80dcb808e0aff/6.0a8d66,0.1326e0cc52a2fe/-1.3131a61/5.203968d0f7701,0.3b6915f/-1.37a6ccf/-5.16910c,-0.07cccc67de6f3e0/-0.220847fdaf80fe/5.30744c6866901,0.18c1b9d/-0.486b777/-5.5df1a7,-0.04d36bb00631c6c/-0.710313948f8604/6.03dfa4a706c01,0.2fce2d7/-0.001441fbf8bdd40e/-5.8d3cab,0.162c55cc5b1cff/0.12a89500ee4302/-5.8b17af,0.1a15be8a230efe/1.1bd4e61/-5.13f1a3039badfa,1.27c5a31/1.1e224d056a5303/-5.08b45d,0.35ffc297baba00/0.f5f575e53beff/6.0d6e4d,0.1d23e047459cff/-1.a2ab963df46ff/-5.56635b,0.412e8ef3fefa08/-0.30b9a9d/6.021b3,0.176ba3bf7062fe/-0.3248f7b/-5.8b63f3,1.0eeaf06c102fe/0.02b06d848a47b64/-6.0d6e4d,1.03310501819902/0.65ef55ee79e218/-6.0c5220,0.5ee02af/0.20cbff0a05eb02/-5.d5a69,1.2caffe7/1.3131a57/-5.4b11de,1.01fa26cb1bab01/-0.1ff76e53a7ceff/-5.860c32,1.a4cd97/-0.5b9dae57962df0/-6.02e791b8324dfa,1.a0258a4100eff/0.af1ecc9832ea18/-6.0f1b9,1.1ddeb8f/-0.a01e9f1c788a00/-6.09b59a";
			var geo2uvs:String ="0.270f/0,0.5/1,0/0";
			var geo2faces:String ="0,1,2,0,1,2,1,0,3,0,1,2,1,4,2,0,1,2,4,1,5,0,1,2,6,2,7,0,1,2,2,6,0,0,1,2,8,3,0,0,1,2,3,8,9,0,1,2,3,a,1,0,1,2,a,3,b,0,1,2,5,c,4,0,1,2,c,5,d,0,1,2,2,e,7,0,1,2,e,2,4,0,1,2,a,5,1,0,1,2,5,a,f,0,1,2,10,7,11,0,1,2,7,10,6,0,1,2,12,0,6,0,1,2,0,12,8,0,1,2,8,13,9,0,1,2,13,8,14,0,1,2,9,b,3,0,1,2,b,9,15,0,1,2,b,16,a,0,1,2,16,b,17,0,1,2,18,c,d,0,1,2,c,18,19,0,1,2,c,e,4,0,1,2,e,c,1a,0,1,2,f,d,5,0,1,2,d,f,1b,0,1,2,7,1c,11,0,1,2,1c,7,e,0,1,2,16,f,a,0,1,2,f,16,1d,0,1,2,1e,11,1f,0,1,2,11,1e,10,0,1,2,20,6,10,0,1,2,6,20,12,0,1,2,12,14,8,0,1,2,14,12,21,0,1,2,13,15,9,0,1,2,15,13,22,0,1,2,15,17,b,0,1,2,17,15,23,0,1,2,17,24,16,0,1,2,24,17,25,0,1,2,19,1a,c,0,1,2,1a,19,26,0,1,2,1b,18,d,0,1,2,18,1b,27,0,1,2,1a,1c,e,0,1,2,1c,1a,28,0,1,2,1d,1b,f,0,1,2,1b,1d,29,0,1,2,11,2a,1f,0,1,2,2a,11,1c,0,1,2,16,2b,1d,0,1,2,2b,16,24,0,1,2,2c,1f,2d,0,1,2,1f,2c,1e,0,1,2,2e,10,1e,0,1,2,10,2e,20,0,1,2,20,21,12,0,1,2,21,20,2f,0,1,2,22,23,15,0,1,2,23,22,30,0,1,2,17,31,25,0,1,2,31,17,23,0,1,2,25,32,24,0,1,2,32,25,33,0,1,2,29,27,1b,0,1,2,27,29,34,0,1,2,28,2a,1c,0,1,2,2a,28,35,0,1,2,1d,36,29,0,1,2,36,1d,2b,0,1,2,1f,37,2d,0,1,2,37,1f,2a,0,1,2,24,38,2b,0,1,2,38,24,32,0,1,2,39,2c,2d,0,1,2,2c,39,3a,0,1,2,3b,1e,2c,0,1,2,1e,3b,2e,0,1,2,2e,2f,20,0,1,2,2f,2e,3c,0,1,2,25,3d,33,0,1,2,3d,25,31,0,1,2,3e,2a,35,0,1,2,2a,3e,37,0,1,2,2b,3f,36,0,1,2,3f,2b,38,0,1,2,40,2d,37,0,1,2,2d,40,39,0,1,2,41,3a,39,0,1,2,3a,41,42,0,1,2,43,2c,3a,0,1,2,2c,43,3b,0,1,2,3b,3c,2e,0,1,2,3c,3b,44,0,1,2,45,37,3e,0,1,2,37,45,40,0,1,2,46,39,40,0,1,2,39,46,41,0,1,2,47,3a,42,0,1,2,3a,47,43,0,1,2,48,40,45,0,1,2,40,48,46,0,1,2";
			var geo2:FacesDefinition = new FacesDefinition();
			geo2.f = buildFaces( geo2faces.split(","),  buildVertices(read(geo2vert).split(",")), buildUVs(read(geo2uvs).split(",")) );
			geos.push(geo2);
			var geo3vert:String ="0.847b40c2ac4600/2.a5d2f/-6.01fca3ef37efd,0.1a03aefd19db01/0.023436d16ed0006/-8.045a8f6f3dffe,0.4807295/0.6a2e25ef9c603/-8.1715de71c4eff,0.87cd64e0548e08/2.3a14d1/-5.3382d680565fd,-0.54d1f9d/2.177b47631bb605/8.f7f6c8a0d902,-0.5066bc5/2.ce4a397e99e04/7.37d446ec84a03,-0.3268173/-2.30dd0c/8.5b7be6209505,0.54d1f9d/-2.a5d2f/-7.2641b3cc724fd,0.50e5beb/-2.39f837/-7.192653da0a0fe,-0.330347f/-2.5e3842/8.1715de71c4f02";
			var geo3uvs:String ="0.270f/0,0.5/1,0/0";
			var geo3faces:String ="0,1,2,0,1,2,1,0,3,0,1,2,3,0,4,0,1,2,3,4,5,0,1,2,5,4,6,0,1,2,1,7,2,0,1,2,7,1,8,0,1,2,7,8,9,0,1,2,9,8,6,0,1,2,9,6,4,0,1,2";
			var geo3:FacesDefinition = new FacesDefinition();
			geo3.f = buildFaces( geo3faces.split(","),  buildVertices(read(geo3vert).split(",")), buildUVs(read(geo3uvs).split(",")) );
			geos.push(geo3);
			var geo4vert:String ="-0.1a9396bbd2aa01/-2.3aebbb5/-7.27ec8083a037b,-0.1226c0c74bc601/0.5ce0d52a51301/-8.0575dd0ffcc7c,-0.4fb95f/0.588e7a8fc8e624/-8.17351f6fc847d,-0.1923da51cd05ff/-2.bf70b7f85e6fb/-7.1b4fde5b0b77c,0.9214ec5cb5a01/-2.4405417/8.17351f6fc8481,0.97012d6735202/-2.28ee2e1/8.6de6f0cef283,0.1a9396bbd2aa01/2.13ba61459ccb05/8.129926731ed83,-0.3180125012d404/2.4405417/-6.006fe037d407b,-0.5a1c8df926dff/2.28f780f/-5.327cf1853f17d,0.1904c985f30402/2.9ce3f67323104/8.02c0a1d210b85,0.97012d6735202/-2.28ee2e1/8.6de6f0cef283,0.1904c985f30402/2.9ce3f67323104/8.02c0a1d210b85,0.1a9396bbd2aa01/2.13ba61459ccb05/8.129926731ed83,-0.5a1c8df926dff/2.28f780f/-5.327cf1853f17d,-0.3180125012d404/2.4405417/-6.006fe037d407b,-0.1226c0c74bc601/0.5ce0d52a51301/-8.0575dd0ffcc7c,-0.4fb95f/0.588e7a8fc8e624/-8.17351f6fc847d,0.9214ec5cb5a01/-2.4405417/8.17351f6fc8481,-0.1923da51cd05ff/-2.bf70b7f85e6fb/-7.1b4fde5b0b77c,-0.1a9396bbd2aa01/-2.3aebbb5/-7.27ec8083a037b";
			var geo4uvs:String ="0.639307/0.0197c4,0.6375e9/0.0d9c8b,0.642cd4/0.0e532d,0.3ff33a/0.01667f,0.3fa65f/0.0eba76,0.3a4a3e/0.083715,0.5bfe4/0.086f3c,0.644d6f/0.00de04,0.3bd22d/0.01d431,0.97af/0.0011c69";
			var geo4faces:String ="0,1,2,0,0,0,1,0,3,0,0,0,3,0,4,0,0,0,3,4,5,0,0,0,5,4,6,0,0,0,1,7,2,0,0,0,7,1,8,0,0,0,7,8,6,0,0,0,6,8,9,0,0,0,6,9,5,0,0,0,a,b,c,0,1,2,b,d,c,1,3,2,c,d,e,2,3,4,d,f,e,3,5,4,10,e,f,6,4,5,c,11,a,2,7,0,a,11,12,0,7,8,11,13,12,7,9,8,12,13,f,8,9,5,10,f,13,6,5,9";
			var geo4:FacesDefinition = new FacesDefinition();
			geo4.f = buildFaces( geo4faces.split(","),  buildVertices(read(geo4vert).split(",")), buildUVs(read(geo4uvs).split(",")) );
			geos.push(geo4);
			var geo5vert:String ="0.a078c15394fff/0.a078c15394fff/0.01bb60f053f801d,0.5a0d1/0.3647781ff25bf8/-0.01bb60f053f801d,0.a078c15394fff/0.a078c15394fff/-0.01bb60f053f801d,0.5a0d1/0.3647781ff25bf8/0.01bb60f053f801d,0.8dd69a51b00400/-1.3ea78fa49dc2de-10/-0.01bb60f053f801d,0.8dd69a51b00400/-1.3ea78fa49dc2de-10/0.01bb60f053f801d,0.3647781ff25bf8/0.5a0d1/-0.01bb60f053f801d,0.3647781ff25bf8/0.5a0d1/0.01bb60f053f801d,0.5a0d1/-0.3647781ff25c04/-0.01bb60f053f801d,0.5a0d1/-0.3647781ff25c04/0.01bb60f053f801d,-1.3ea78fa49dc2de-10/0.8dd69a51b00400/-0.01bb60f053f801d,-1.3ea78fa49dc2de-10/0.8dd69a51b00400/0.01bb60f053f801d,0.a078c15394fff/-0.a078c15395001/-0.01bb60f053f801d,0.a078c15394fff/-0.a078c15395001/0.01bb60f053f801d,-0.3647781ff25c04/0.5a0d1/-0.01bb60f053f801d,-0.3647781ff25c04/0.5a0d1/0.01bb60f053f801d,0.3647781ff25bf8/-0.d1aa980352401/0.01bb60f053f801d,0.3647781ff25bf8/-0.d1aa980352401/-0.01bb60f053f801d,-0.a078c15395001/0.a078c15394fff/-0.01bb60f053f801d,-0.a078c15395001/0.a078c15394fff/0.01bb60f053f801d,-1.3ea78fa49dc2de-10/-0.e2f0f6e919a01/0.01bb60f053f801d,-1.3ea78fa49dc2de-10/-0.e2f0f6e919a01/-0.01bb60f053f801d,-0.d1aa980352401/0.3647781ff25bf8/0.01bb60f053f801d,-0.d1aa980352401/0.3647781ff25bf8/-0.01bb60f053f801d,-0.3647781ff25c04/-0.d1aa980352401/0.01bb60f053f801d,-0.3647781ff25c04/-0.d1aa980352401/-0.01bb60f053f801d,-0.e2f0f6e919a01/-1.3ea78fa49dc2de-10/0.01bb60f053f801d,-0.e2f0f6e919a01/-1.3ea78fa49dc2de-10/-0.01bb60f053f801d,-0.a078c15395001/-0.a078c15395001/0.01bb60f053f801d,-0.a078c15395001/-0.a078c15395001/-0.01bb60f053f801d,-0.d1aa980352401/-0.3647781ff25c04/0.01bb60f053f801d,-0.d1aa980352401/-0.3647781ff25c04/-0.01bb60f053f801d";
			var geo5uvs:String ="0.270f/0,0.5/1,0/0";
			var geo5faces:String ="0,1,2,0,1,2,1,0,3,0,1,2,3,4,1,0,1,2,4,3,5,0,1,2,0,6,7,0,1,2,6,0,2,0,1,2,5,8,4,0,1,2,8,5,9,0,1,2,7,a,b,0,1,2,a,7,6,0,1,2,9,c,8,0,1,2,c,9,d,0,1,2,b,e,f,0,1,2,e,b,a,0,1,2,c,10,11,0,1,2,10,c,d,0,1,2,f,12,13,0,1,2,12,f,e,0,1,2,11,14,15,0,1,2,14,11,10,0,1,2,16,12,17,0,1,2,12,16,13,0,1,2,15,18,19,0,1,2,18,15,14,0,1,2,1a,17,1b,0,1,2,17,1a,16,0,1,2,19,1c,1d,0,1,2,1c,19,18,0,1,2,1e,1b,1f,0,1,2,1b,1e,1a,0,1,2,1c,1f,1d,0,1,2,1f,1c,1e,0,1,2";
			var geo5:FacesDefinition = new FacesDefinition();
			geo5.f = buildFaces( geo5faces.split(","),  buildVertices(read(geo5vert).split(",")), buildUVs(read(geo5uvs).split(",")) );
			geos.push(geo5);
			var geo6vert:String ="-0.0bf808/14.18a66bd/0.04f52a,-0.0cf47b/-14.18a66bd/0,-0.0cf47b/14.18a66bd/0,-0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/14.18a66bd/0.04f52a,-0.0cf47b/-14.18a66bd/0,-0.0cf47b/14.18a66bd/0,-0.09291b/14.18a66bd/0.09291b,-0.09291b/-14.18a66bd/0.09291b,-0.09291b/-14.18a66bd/0.09291b,-0.09291b/14.18a66bd/0.09291b,-0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/-14.18a66bd/-0.04f52a,-0.0cf47b/-14.18a66bd/0,-0.09291b/-14.18a66bd/-0.09291b,-0.09291b/-14.18a66bd/0.09291b,-0.04f52a/-14.18a66bd/-0.0bf808,-0.04f52a/-14.18a66bd/0.0bf808,0/-14.18a66bd/-0.0cf47b,0/-14.18a66bd/0.0cf47b,0.04f52a/-14.18a66bd/-0.0bf808,0.04f52a/-14.18a66bd/0.0bf808,0.09291b/-14.18a66bd/0.09291b,0.09291b/-14.18a66bd/-0.09291b,0.0bf808/-14.18a66bd/-0.04f52a,0.0bf808/-14.18a66bd/0.04f52a,0.0cf47b/-14.18a66bd/0,0.0cf47b/-14.18a66bd/0,0.0bf808/-14.18a66bd/0.04f52a,0.0bf808/-14.18a66bd/-0.04f52a,0.09291b/-14.18a66bd/0.09291b,0.09291b/-14.18a66bd/-0.09291b,0.04f52a/-14.18a66bd/-0.0bf808,0.04f52a/-14.18a66bd/0.0bf808,0/-14.18a66bd/0.0cf47b,0/-14.18a66bd/-0.0cf47b,-0.04f52a/-14.18a66bd/0.0bf808,-0.04f52a/-14.18a66bd/-0.0bf808,-0.09291b/-14.18a66bd/0.09291b,-0.09291b/-14.18a66bd/-0.09291b,-0.0bf808/-14.18a66bd/0.04f52a,-0.0bf808/-14.18a66bd/-0.04f52a,-0.0cf47b/-14.18a66bd/0,-0.0bf808/-14.18a66bd/-0.04f52a,-0.0bf808/14.18a66bd/-0.04f52a,-0.0bf808/-14.18a66bd/-0.04f52a,-0.0bf808/14.18a66bd/-0.04f52a,-0.0bf808/14.18a66bd/-0.04f52a,-0.0bf808/14.18a66bd/0.04f52a,-0.0cf47b/14.18a66bd/0,-0.09291b/14.18a66bd/-0.09291b,-0.09291b/14.18a66bd/0.09291b,-0.04f52a/14.18a66bd/-0.0bf808,-0.04f52a/14.18a66bd/0.0bf808,0/14.18a66bd/-0.0cf47b,0/14.18a66bd/0.0cf47b,0.04f52a/14.18a66bd/-0.0bf808,0.04f52a/14.18a66bd/0.0bf808,0.09291b/14.18a66bd/0.09291b,0.09291b/14.18a66bd/-0.09291b,0.0bf808/14.18a66bd/-0.04f52a,0.0bf808/14.18a66bd/0.04f52a,0.0cf47b/14.18a66bd/0,0.0cf47b/14.18a66bd/0,0.0bf808/14.18a66bd/-0.04f52a,0.0bf808/14.18a66bd/0.04f52a,0.09291b/14.18a66bd/0.09291b,0.09291b/14.18a66bd/-0.09291b,0.04f52a/14.18a66bd/-0.0bf808,0.04f52a/14.18a66bd/0.0bf808,0/14.18a66bd/0.0cf47b,0/14.18a66bd/-0.0cf47b,-0.04f52a/14.18a66bd/0.0bf808,-0.04f52a/14.18a66bd/-0.0bf808,-0.09291b/14.18a66bd/0.09291b,-0.09291b/14.18a66bd/-0.09291b,-0.0bf808/14.18a66bd/0.04f52a,-0.0bf808/14.18a66bd/-0.04f52a,-0.0cf47b/14.18a66bd/0,-0.04f52a/-14.18a66bd/0.0bf808,-0.04f52a/14.18a66bd/0.0bf808,-0.04f52a/14.18a66bd/0.0bf808,-0.04f52a/-14.18a66bd/0.0bf808,0.0bf808/-14.18a66bd/0.04f52a,0.0cf47b/14.18a66bd/0,0.0cf47b/-14.18a66bd/0,0.0bf808/14.18a66bd/0.04f52a,0.0bf808/14.18a66bd/0.04f52a,0.0bf808/-14.18a66bd/0.04f52a,0.0cf47b/14.18a66bd/0,0.0cf47b/-14.18a66bd/0,0.0bf808/14.18a66bd/-0.04f52a,0.0bf808/-14.18a66bd/-0.04f52a,0.0bf808/14.18a66bd/-0.04f52a,0.0bf808/-14.18a66bd/-0.04f52a,0.09291b/14.18a66bd/-0.09291b,0.09291b/-14.18a66bd/-0.09291b,0.09291b/14.18a66bd/-0.09291b,0.09291b/-14.18a66bd/-0.09291b,0.04f52a/-14.18a66bd/-0.0bf808,0.04f52a/14.18a66bd/-0.0bf808,0.04f52a/14.18a66bd/-0.0bf808,0.04f52a/-14.18a66bd/-0.0bf808,0/-14.18a66bd/-0.0cf47b,0/14.18a66bd/-0.0cf47b,0/14.18a66bd/-0.0cf47b,0/-14.18a66bd/-0.0cf47b,-0.04f52a/-14.18a66bd/-0.0bf808,-0.04f52a/14.18a66bd/-0.0bf808,-0.04f52a/14.18a66bd/-0.0bf808,-0.04f52a/-14.18a66bd/-0.0bf808,-0.09291b/-14.18a66bd/-0.09291b,-0.09291b/14.18a66bd/-0.09291b,-0.09291b/14.18a66bd/-0.09291b,-0.09291b/-14.18a66bd/-0.09291b,0/-14.18a66bd/0.0cf47b,0/14.18a66bd/0.0cf47b,0/14.18a66bd/0.0cf47b,0/-14.18a66bd/0.0cf47b,0.04f52a/-14.18a66bd/0.0bf808,0.04f52a/14.18a66bd/0.0bf808,0.04f52a/14.18a66bd/0.0bf808,0.04f52a/-14.18a66bd/0.0bf808,0.09291b/-14.18a66bd/0.09291b,0.09291b/14.18a66bd/0.09291b,0.09291b/14.18a66bd/0.09291b,0.09291b/-14.18a66bd/0.09291b";
			var geo6uvs:String ="0.270f/0,0.5/1,0/0";
			var geo6faces:String ="0,1,2,0,1,2,1,0,3,0,1,2,4,5,6,0,1,2,7,6,5,0,1,2,8,3,0,0,1,2,3,8,9,0,1,2,a,b,4,0,1,2,5,4,b,0,1,2,c,d,e,0,1,2,d,c,f,0,1,2,f,c,10,0,1,2,f,10,11,0,1,2,11,10,12,0,1,2,11,12,13,0,1,2,13,12,14,0,1,2,13,14,15,0,1,2,15,14,16,0,1,2,15,16,17,0,1,2,15,17,18,0,1,2,18,17,19,0,1,2,19,17,1a,0,1,2,19,1a,1b,0,1,2,1c,1d,1e,0,1,2,1d,1f,1e,0,1,2,1e,1f,20,0,1,2,20,1f,21,0,1,2,1f,22,21,0,1,2,22,23,21,0,1,2,21,23,24,0,1,2,23,25,24,0,1,2,24,25,26,0,1,2,25,27,26,0,1,2,26,27,28,0,1,2,27,29,28,0,1,2,28,29,2a,0,1,2,2b,2a,29,0,1,2,2,2c,2d,0,1,2,2c,2,1,0,1,2,6,7,2e,0,1,2,2f,2e,7,0,1,2,30,31,32,0,1,2,31,30,33,0,1,2,31,33,34,0,1,2,34,33,35,0,1,2,34,35,36,0,1,2,36,35,37,0,1,2,36,37,38,0,1,2,38,37,39,0,1,2,38,39,3a,0,1,2,3a,39,3b,0,1,2,3b,39,3c,0,1,2,3b,3c,3d,0,1,2,3b,3d,3e,0,1,2,3e,3d,3f,0,1,2,40,41,42,0,1,2,42,41,43,0,1,2,41,44,43,0,1,2,44,45,43,0,1,2,43,45,46,0,1,2,46,45,47,0,1,2,45,48,47,0,1,2,47,48,49,0,1,2,48,4a,49,0,1,2,49,4a,4b,0,1,2,4a,4c,4b,0,1,2,4b,4c,4d,0,1,2,4c,4e,4d,0,1,2,4f,4d,4e,0,1,2,8,50,9,0,1,2,50,8,51,0,1,2,52,b,53,0,1,2,a,53,b,0,1,2,54,55,56,0,1,2,55,54,57,0,1,2,58,59,5a,0,1,2,5b,5a,59,0,1,2,56,5c,5d,0,1,2,5c,56,55,0,1,2,5a,5b,5e,0,1,2,5f,5e,5b,0,1,2,5d,60,61,0,1,2,60,5d,5c,0,1,2,5e,5f,62,0,1,2,63,62,5f,0,1,2,60,64,61,0,1,2,64,60,65,0,1,2,66,62,67,0,1,2,63,67,62,0,1,2,65,68,64,0,1,2,68,65,69,0,1,2,6a,66,6b,0,1,2,67,6b,66,0,1,2,69,6c,68,0,1,2,6c,69,6d,0,1,2,6e,6a,6f,0,1,2,6b,6f,6a,0,1,2,6d,70,6c,0,1,2,70,6d,71,0,1,2,72,6e,73,0,1,2,6f,73,6e,0,1,2,2d,70,71,0,1,2,70,2d,2c,0,1,2,2e,2f,73,0,1,2,72,73,2f,0,1,2,51,74,50,0,1,2,74,51,75,0,1,2,76,52,77,0,1,2,53,77,52,0,1,2,75,78,74,0,1,2,78,75,79,0,1,2,7a,76,7b,0,1,2,77,7b,76,0,1,2,79,7c,78,0,1,2,7c,79,7d,0,1,2,7e,7a,7f,0,1,2,7b,7f,7a,0,1,2,7c,57,54,0,1,2,57,7c,7d,0,1,2,7e,7f,58,0,1,2,59,58,7f,0,1,2";
			var geo6:FacesDefinition = new FacesDefinition();
			geo6.f = buildFaces( geo6faces.split(","),  buildVertices(read(geo6vert).split(",")), buildUVs(read(geo6uvs).split(",")) );
			geos.push(geo6);
			var geo7vert:String ="-4.1f41110315304/-0.18edfeabbfb702/-7.032219a0f3eff,-6.251f012a18f04/-1.0128f56ac36703/-2.10b3f60daae1fc,-6.189bf78f08c60f/-1.01473f603f8d03/-5.2523910afedfe,3.f9185ea67a9dc/0.12baafbafd56fe/7.032219a0f3f01,6.275ff27e746fe/1.01473f603f8d03/3.65a0e5";
			var geo7uvs:String ="0.270f/0,0.5/1,0/0";
			var geo7faces:String ="0,1,2,0,1,2,1,0,3,0,1,2,3,0,4,0,1,2";
			var geo7:FacesDefinition = new FacesDefinition();
			geo7.f = buildFaces( geo7faces.split(","),  buildVertices(read(geo7vert).split(",")), buildUVs(read(geo7uvs).split(",")) );
			geos.push(geo7);
			var geo8vert:String ="-1.2d3a6b/1.5cd619/1.2d3a6b,-0.6b0eab/-1.5cd619/1.a964e,-1.2d3a6b/-1.5cd619/1.2d3a6b,-0.6b0eab/1.5cd619/1.a964e,-0.6b0eab/1.5cd619/1.a964e,-1.2d3a6b/1.5cd619/1.2d3a6b,-0.6b0eab/-1.5cd619/1.a964e,-1.2d3a6b/-1.5cd619/1.2d3a6b,0/-1.5cd619/1.cb775,0/1.5cd619/1.cb775,0/1.5cd619/1.cb775,0/-1.5cd619/1.cb775,-1.a964e/-1.5cd619/0.6b0eab,-1.a964e/-1.5cd619/-0.6b0eab,-1.cb775/-1.5cd619/0,-1.2d3a6b/-1.5cd619/-1.2d3a6b,-1.2d3a6b/-1.5cd619/1.2d3a6b,-0.6b0eab/-1.5cd619/-1.a964e,-0.6b0eab/-1.5cd619/1.a964e,0/-1.5cd619/-1.cb775,0/-1.5cd619/1.cb775,0.6b0eab/-1.5cd619/-1.a964e,0.6b0eab/-1.5cd619/1.a964e,1.2d3a6b/-1.5cd619/1.2d3a6b,1.2d3a6b/-1.5cd619/-1.2d3a6b,1.a964e/-1.5cd619/-0.6b0eab,1.a964e/-1.5cd619/0.6b0eab,1.cb775/-1.5cd619/0,1.cb775/-1.5cd619/0,1.a964e/-1.5cd619/0.6b0eab,1.a964e/-1.5cd619/-0.6b0eab,1.2d3a6b/-1.5cd619/1.2d3a6b,1.2d3a6b/-1.5cd619/-1.2d3a6b,0.6b0eab/-1.5cd619/-1.a964e,0.6b0eab/-1.5cd619/1.a964e,0/-1.5cd619/1.cb775,0/-1.5cd619/-1.cb775,-0.6b0eab/-1.5cd619/1.a964e,-0.6b0eab/-1.5cd619/-1.a964e,-1.2d3a6b/-1.5cd619/1.2d3a6b,-1.2d3a6b/-1.5cd619/-1.2d3a6b,-1.a964e/-1.5cd619/0.6b0eab,-1.a964e/-1.5cd619/-0.6b0eab,-1.cb775/-1.5cd619/0,-1.a964e/-1.5cd619/0.6b0eab,-1.a964e/1.5cd619/0.6b0eab,-1.a964e/-1.5cd619/0.6b0eab,-1.a964e/1.5cd619/0.6b0eab,-1.a964e/1.5cd619/-0.6b0eab,-1.a964e/1.5cd619/0.6b0eab,-1.cb775/1.5cd619/0,-1.2d3a6b/1.5cd619/-1.2d3a6b,-1.2d3a6b/1.5cd619/1.2d3a6b,-0.6b0eab/1.5cd619/-1.a964e,-0.6b0eab/1.5cd619/1.a964e,0/1.5cd619/-1.cb775,0/1.5cd619/1.cb775,0.6b0eab/1.5cd619/-1.a964e,0.6b0eab/1.5cd619/1.a964e,1.2d3a6b/1.5cd619/1.2d3a6b,1.2d3a6b/1.5cd619/-1.2d3a6b,1.a964e/1.5cd619/-0.6b0eab,1.a964e/1.5cd619/0.6b0eab,1.cb775/1.5cd619/0,1.cb775/1.5cd619/0,1.a964e/1.5cd619/-0.6b0eab,1.a964e/1.5cd619/0.6b0eab,1.2d3a6b/1.5cd619/1.2d3a6b,1.2d3a6b/1.5cd619/-1.2d3a6b,0.6b0eab/1.5cd619/-1.a964e,0.6b0eab/1.5cd619/1.a964e,0/1.5cd619/1.cb775,0/1.5cd619/-1.cb775,-0.6b0eab/1.5cd619/1.a964e,-0.6b0eab/1.5cd619/-1.a964e,-1.2d3a6b/1.5cd619/1.2d3a6b,-1.2d3a6b/1.5cd619/-1.2d3a6b,-1.a964e/1.5cd619/0.6b0eab,-1.a964e/1.5cd619/-0.6b0eab,-1.cb775/1.5cd619/0,0.6b0eab/-1.5cd619/1.a964e,0.6b0eab/1.5cd619/1.a964e,0.6b0eab/1.5cd619/1.a964e,0.6b0eab/-1.5cd619/1.a964e,1.a964e/-1.5cd619/0.6b0eab,1.cb775/1.5cd619/0,1.cb775/-1.5cd619/0,1.a964e/1.5cd619/0.6b0eab,1.a964e/1.5cd619/0.6b0eab,1.a964e/-1.5cd619/0.6b0eab,1.cb775/1.5cd619/0,1.cb775/-1.5cd619/0,1.a964e/1.5cd619/-0.6b0eab,1.a964e/-1.5cd619/-0.6b0eab,1.a964e/1.5cd619/-0.6b0eab,1.a964e/-1.5cd619/-0.6b0eab,1.2d3a6b/1.5cd619/-1.2d3a6b,1.2d3a6b/-1.5cd619/-1.2d3a6b,1.2d3a6b/1.5cd619/-1.2d3a6b,1.2d3a6b/-1.5cd619/-1.2d3a6b,0.6b0eab/-1.5cd619/-1.a964e,0.6b0eab/1.5cd619/-1.a964e,0.6b0eab/1.5cd619/-1.a964e,0.6b0eab/-1.5cd619/-1.a964e,0/-1.5cd619/-1.cb775,0/1.5cd619/-1.cb775,0/1.5cd619/-1.cb775,0/-1.5cd619/-1.cb775,-0.6b0eab/-1.5cd619/-1.a964e,-0.6b0eab/1.5cd619/-1.a964e,-0.6b0eab/1.5cd619/-1.a964e,-0.6b0eab/-1.5cd619/-1.a964e,-1.2d3a6b/-1.5cd619/-1.2d3a6b,-1.2d3a6b/1.5cd619/-1.2d3a6b,-1.2d3a6b/1.5cd619/-1.2d3a6b,-1.2d3a6b/-1.5cd619/-1.2d3a6b,-1.a964e/1.5cd619/-0.6b0eab,-1.a964e/-1.5cd619/-0.6b0eab,-1.a964e/-1.5cd619/-0.6b0eab,-1.a964e/1.5cd619/-0.6b0eab,-1.cb775/1.5cd619/0,-1.cb775/-1.5cd619/0,-1.cb775/-1.5cd619/0,-1.cb775/1.5cd619/0,1.2d3a6b/-1.5cd619/1.2d3a6b,1.2d3a6b/1.5cd619/1.2d3a6b,1.2d3a6b/1.5cd619/1.2d3a6b,1.2d3a6b/-1.5cd619/1.2d3a6b";
			var geo8uvs:String ="0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0,0.00e8dd/0.082e49,0.044ec2/0.01c8c7,0.044ec2/0.01c8c7,0.04a99e/0,0.034c04/0.034c04,0.034c04/0.034c04,0.01c8c7/0.044ec2,0.01c8c7/0.044ec2,0/0.04a99e,0/0.04a99e,0.01c8c7/0.044ec2,0.01c8c7/0.044ec2,0.034c04/0.034c04,0.034c04/0.034c04,0.044ec2/0.01c8c7,0.044ec2/0.01c8c7,0.04a99e/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.044ec2/0.01c8c7,0.044ec2/0.01c8c7,0.04a99e/0,0.034c04/0.034c04,0.034c04/0.034c04,0.01c8c7/0.044ec2,0.01c8c7/0.044ec2,0/0.04a99e,0/0.04a99e,0.01c8c7/0.044ec2,0.01c8c7/0.044ec2,0.034c04/0.034c04,0.034c04/0.034c04,0.044ec2/0.01c8c7,0.044ec2/0.01c8c7,0.04a99e/0,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0.082e49,0.00e8dd/0,0.00e8dd/0";
			var geo8faces:String ="0,1,2,0,1,2,1,0,3,1,0,3,4,5,6,3,0,1,7,6,5,2,1,0,3,8,1,4,5,6,8,3,9,5,4,7,a,4,b,7,4,5,6,b,4,6,5,4,c,d,e,8,9,a,d,c,f,9,8,b,f,c,10,b,8,c,f,10,11,b,c,d,11,10,12,d,c,e,11,12,13,d,e,f,13,12,14,f,e,10,13,14,15,f,10,11,15,14,16,11,10,12,15,16,17,11,12,13,15,17,18,11,13,14,18,17,19,14,13,15,19,17,1a,15,13,16,19,1a,1b,15,16,17,1c,1d,1e,17,16,15,1d,1f,1e,16,13,15,1e,1f,20,15,13,14,20,1f,21,14,13,11,1f,22,21,13,12,11,22,23,21,12,10,11,21,23,24,11,10,f,23,25,24,10,e,f,24,25,26,f,e,d,25,27,26,e,c,d,26,27,28,d,c,b,27,29,28,c,8,b,28,29,2a,b,8,9,2b,2a,29,a,9,8,0,2c,2d,18,19,1a,2c,0,2,19,18,1b,7,5,2e,1b,18,19,2f,2e,5,1a,19,18,30,31,32,1c,1d,1e,31,30,33,1d,1c,1f,31,33,34,1d,1f,20,34,33,35,20,1f,21,34,35,36,20,21,22,36,35,37,22,21,23,36,37,38,22,23,24,38,37,39,24,23,25,38,39,3a,24,25,26,3a,39,3b,26,25,27,3b,39,3c,27,25,28,3b,3c,3d,27,28,29,3b,3d,3e,27,29,2a,3e,3d,3f,2a,29,2b,40,41,42,2b,29,2a,42,41,43,2a,29,27,41,44,43,29,28,27,44,45,43,28,25,27,43,45,46,27,25,26,46,45,47,26,25,24,45,48,47,25,23,24,47,48,49,24,23,22,48,4a,49,23,21,22,49,4a,4b,22,21,20,4a,4c,4b,21,1f,20,4b,4c,4d,20,1f,1d,4c,4e,4d,1f,1c,1d,4f,4d,4e,1e,1d,1c,9,50,8,0,2c,2,50,9,51,2c,0,2d,52,a,53,2d,0,2c,b,53,a,2,2c,0,54,55,56,2e,3,1,55,54,57,3,2e,2f,58,59,5a,2f,2e,3,5b,5a,59,1,3,2e,56,5c,5d,30,31,32,5c,56,55,31,30,33,5a,5b,5e,33,30,31,5f,5e,5b,32,31,30,5d,60,61,6,34,35,60,5d,5c,34,6,4,5e,5f,62,4,6,34,63,62,5f,35,34,6,60,64,61,36,32,37,64,60,65,32,36,38,66,62,67,38,36,32,63,67,62,37,32,36,65,68,64,39,3a,3b,68,65,69,3a,39,3c,6a,66,6b,3c,39,3a,67,6b,66,3b,3a,39,69,6c,68,39,3d,3b,6c,69,6d,3d,39,3e,6e,6a,6f,3e,39,3d,6b,6f,6a,3b,3d,39,6d,70,6c,3f,40,41,70,6d,71,40,3f,42,72,6e,73,42,3f,40,6f,73,6e,41,40,3f,74,70,71,3,43,44,70,74,75,43,3,1,76,77,73,1,3,43,72,73,77,44,43,3,78,75,74,38,19,1a,75,78,79,19,38,32,7a,7b,76,32,38,19,77,76,7b,1a,19,38,2d,79,78,45,46,47,79,2d,2c,46,45,48,2e,2f,7a,48,45,46,7b,7a,2f,47,46,45,51,7c,50,49,32,4a,7c,51,7d,32,49,38,7e,52,7f,38,49,32,53,7f,52,4a,32,49,7c,57,54,4b,7,5,57,7c,7d,7,4b,0,7e,7f,58,0,4b,7,59,58,7f,5,7,4b";
			var geo8:FacesDefinition = new FacesDefinition();
			geo8.f = buildFaces( geo8faces.split(","),  buildVertices(read(geo8vert).split(",")), buildUVs(read(geo8uvs).split(",")) );
			geos.push(geo8);
			var geo9vert:String ="-1.140eb37/0.213dcc34ce2702/4.476f4b,-1.1541c11/0.2289c3288b2d00/3.20acaf7eb84204,-1.2ab08db/-0.01ff45d1afdb210/4.191175c911d01,-1.2caffe7/-0.01fd739362c2205/3.1fad0bb0c55c03,-1.d96dc7/-1.094d90f/4.107f89b1f151fb,-1.e8f80f/-1.ca9879/3.20892bec8cf1fc,-0.10b13a47e85b01/1.012c6ef/-4.1b514c,-0.443d191/-0.011942cdc534def/-4.1f9b43,-0.2f1fd1d/1.432eb6f/4.1e9d0f20b3201,-0.2dea12d/1.493ff09/3.234397ee2e3008,-1.06ea3f7/0.4f8a12f/4.384f5aaf26c01,-1.a229e2bac5d02/-0.01e606e081b5df1/4.22543493a10bfc,-0.85d11ad08131f8/-1.4dee555/4.1e3dfe2dc2101,-0.2250e75/-1.53b60e1/3.f0ae7,-0.261c9b9/-1.034a75476bacff/-4.1be9d4,-1.06a6aee793b01/-0.5e4efc1/4.f1062,-0.ca8d9a7f8d501/0.22dbd6f5b61f00/-4.6d4429,-0.389d723/-0.0fc7f191ee0203/-4.2a3f8772bd6ff,0.9a632790f08ff/1.1cb6bf65279502/-4.103221,0.3520d43/2.0817dab/4.0528506e81101,0.121577f2d308ff/2.05f085b87bf02/4.60a44c,-0.98e86237c33a08/1.1297867f6c2efe/5.01e8bec39d31fb,-0.4e17be9/0.17f3c0b75de6ff/5.44e420,-0.5ea9237/-0.01b36f61a29f605/5.f55772d4ab5fb,0.4285551/-2.bebed7/4.0ca720,0.16e72a55b1e8ff/-2.0556897/4.163bb106fb09fb,0.df84c951ac0ff/-1.1dc2363b1714fe/-4.113a53,-0.b8c869b21b101/-1.1686fd6cedb4ff/5.02b8c1e135801,-0.a4000b2242f01/-1.04f6217/-4.6dd77f,-0.1b53f0ab287701/-0.1ced4ab6e93cff/5.ff11e476871fb,-0.46c10606ee701/0.1f6d1b9470df02/-5.1f4df8,-0.20297cd/-0.07c37fb660453b4/-5.2304d6,0.225159b/1.1aa50ffe0f8702/-4.24b3ee1b1c1ff,1.b04aff3ce78fe/2.bebed7/-4.001f44,0.a69f819302c9f8/1.4c1212d/5.152b07,-0.68a7d3a371f1fc/1.86b6de1f19b02/5.4cc161,-0.a5ca82f7403df8/0.2c8a6b1/5.7d060c,-0.14f1828a25f901/-0.016af19d6c6560f/5.7ae110,1.1001e78488c6ff/-2.0817dab/-4.08fd2e81b2ffb,0.14fba711259902/-1.1e224d41051cff/5.1422d6,0.a9941b0ef3fdf0/-1.4996e5d/-4.638533,-0.4a1a8240186604/-1.208598d/5.1c525e9949001,-0.061246b/-0.2156518da21100/-5.1fd211,-0.f54f258d78d01/-0.14cc6783d9ccff/5.7cb9c8,0.4a9637dfe0adfc/0.19e68e1f248d02/-5.5d85cb,0.0cddcb4f5b21f9/-0.04d4d493393dbbc/-5.608e2d,0.1263e9d30a76ff/1.14632b259cf502/-5.15ac3f,1.229e3e1/2.0556897/-4.540f28,0.9c3d7fb09bbe08/1.2bf6af1/5.2089c49d46d01,-0.0221563326b4a08/0.1ebb255ffe3901/5.8295a1,-0.0e2d81c1d5e1fa/0.80dcb808e0aff/6.0a8d66,-0.3ad495aef9301/-0.01b597522bc4ff/6.0232cdee3bc405,0.1326e0cc52a2fe/-1.3131a61/5.203968d0f7701,0.3b6915f/-1.37a6ccf/-5.16910c,-0.07cccc67de6f3e0/-0.220847fdaf80fe/5.30744c6866901,0.18c1b9d/-0.486b777/-5.5df1a7,-0.04d36bb00631c6c/-0.710313948f8604/6.03dfa4a706c01,0.162c55cc5b1cff/0.12a89500ee4302/-5.8b17af,0.2fce2d7/-0.001441fbf8bdd40e/-5.8d3cab,0.1a15be8a230efe/1.1bd4e61/-5.13f1a3039badfa,1.27c5a31/1.1e224d056a5303/-5.08b45d,0.35ffc297baba00/0.f5f575e53beff/6.0d6e4d,0.1d23e047459cff/-1.a2ab963df46ff/-5.56635b,0.412e8ef3fefa08/-0.30b9a9d/6.021b3,0.176ba3bf7062fe/-0.3248f7b/-5.8b63f3,1.03310501819902/0.65ef55ee79e218/-6.0c5220,1.0eeaf06c102fe/0.02b06d848a47b64/-6.0d6e4d,0.5ee02af/0.20cbff0a05eb02/-5.d5a69,1.2caffe7/1.3131a57/-5.4b11de,1.01fa26cb1bab01/-0.1ff76e53a7ceff/-5.860c32,1.a4cd97/-0.5b9dae57962df0/-6.02e791b8324dfa,1.a0258a4100eff/0.af1ecc9832ea18/-6.0f1b9,1.1ddeb8f/-0.a01e9f1c788a00/-6.09b59a";
			var geo9uvs:String ="0.270f/0,0.5/1,0/0";
			var geo9faces:String ="0,1,2,0,1,2,3,2,1,0,1,2,4,2,5,0,1,2,3,5,2,0,1,2,1,6,3,0,1,2,7,3,6,0,1,2,8,9,0,0,1,2,1,0,9,0,1,2,a,0,b,0,1,2,2,b,0,0,1,2,c,4,d,0,1,2,5,d,4,0,1,2,5,3,e,0,1,2,7,e,3,0,1,2,f,b,4,0,1,2,2,4,b,0,1,2,6,10,7,0,1,2,11,7,10,0,1,2,9,12,1,0,1,2,6,1,12,0,1,2,13,9,14,0,1,2,8,14,9,0,1,2,15,8,a,0,1,2,0,a,8,0,1,2,16,a,17,0,1,2,b,17,a,0,1,2,18,19,d,0,1,2,c,d,19,0,1,2,1a,d,e,0,1,2,5,e,d,0,1,2,1b,f,c,0,1,2,4,c,f,0,1,2,e,7,1c,0,1,2,11,1c,7,0,1,2,1d,17,f,0,1,2,b,f,17,0,1,2,10,1e,11,0,1,2,1f,11,1e,0,1,2,12,20,6,0,1,2,10,6,20,0,1,2,21,12,13,0,1,2,9,13,12,0,1,2,22,14,15,0,1,2,8,15,14,0,1,2,23,15,16,0,1,2,a,16,15,0,1,2,24,16,25,0,1,2,17,25,16,0,1,2,26,18,1a,0,1,2,d,1a,18,0,1,2,27,1b,19,0,1,2,c,19,1b,0,1,2,28,1a,1c,0,1,2,e,1c,1a,0,1,2,29,1d,1b,0,1,2,f,1b,1d,0,1,2,1c,11,2a,0,1,2,1f,2a,11,0,1,2,25,17,2b,0,1,2,1d,2b,17,0,1,2,1e,2c,1f,0,1,2,2d,1f,2c,0,1,2,20,2e,10,0,1,2,1e,10,2e,0,1,2,2f,20,21,0,1,2,12,21,20,0,1,2,30,22,23,0,1,2,15,23,22,0,1,2,23,16,31,0,1,2,24,31,16,0,1,2,32,24,33,0,1,2,25,33,24,0,1,2,34,29,27,0,1,2,1b,27,29,0,1,2,35,28,2a,0,1,2,1c,2a,28,0,1,2,2b,1d,36,0,1,2,29,36,1d,0,1,2,2a,1f,37,0,1,2,2d,37,1f,0,1,2,33,25,38,0,1,2,2b,38,25,0,1,2,39,3a,2c,0,1,2,2d,2c,3a,0,1,2,2e,3b,1e,0,1,2,2c,1e,3b,0,1,2,3c,2e,2f,0,1,2,20,2f,2e,0,1,2,31,24,3d,0,1,2,32,3d,24,0,1,2,37,3e,2a,0,1,2,35,2a,3e,0,1,2,38,2b,3f,0,1,2,36,3f,2b,0,1,2,3a,40,2d,0,1,2,37,2d,40,0,1,2,41,42,39,0,1,2,3a,39,42,0,1,2,3b,43,2c,0,1,2,39,2c,43,0,1,2,44,3b,3c,0,1,2,2e,3c,3b,0,1,2,40,45,37,0,1,2,3e,37,45,0,1,2,42,46,3a,0,1,2,40,3a,46,0,1,2,43,47,39,0,1,2,41,39,47,0,1,2,46,48,40,0,1,2,45,40,48,0,1,2";
			var geo9:FacesDefinition = new FacesDefinition();
			geo9.f = buildFaces( geo9faces.split(","),  buildVertices(read(geo9vert).split(",")), buildUVs(read(geo9uvs).split(",")) );
			geos.push(geo9);
			var geo10vert:String ="-2.4263eb/2.121e9e7527cafa/0.2adf7d5,2.4263eb/-2.121e9e7527cb03/-0.2adf7d5,-2.4263eb/-2.121e9e7527cb03/-0.2adf7d5,2.4263eb/2.121e9e7527cafa/0.2adf7d5,2.4263eb/2.121e9e7527cafa/0.2adf7d5,-2.4263eb/2.121e9e7527cafa/0.2adf7d5,2.4263eb/-2.121e9e7527cb03/-0.2adf7d5,-2.4263eb/-2.121e9e7527cb03/-0.2adf7d5";
			var geo10uvs:String ="0.270f/0,0.5/1,0/0";
			var geo10faces:String ="0,1,2,0,1,2,1,0,3,0,1,2,4,5,6,0,1,2,7,6,5,0,1,2";
			var geo10:FacesDefinition = new FacesDefinition();
			geo10.f = buildFaces( geo10faces.split(","),  buildVertices(read(geo10vert).split(",")), buildUVs(read(geo10uvs).split(",")) );
			geos.push(geo10);
			var geo11vert:String ="-0.411de0d6cf9218/-0.012ec084e661c05/1.026a74d6727fea,-0.43909c6f868a18/0/-1.026a74d6727fea,-0.411de0d6cf9218/-0.012ec084e661c05/-1.026a74d6727fea,-0.43909c6f868a18/0/1.026a74d6727fea,-0.411de0d6cf9218/0.012ec084e661c05/1.026a74d6727fea,-0.411de0d6cf9218/0.012ec084e661c05/-1.026a74d6727fea,-0.3a05b2ff9cc61c/-0.24599aab93a814/1.026a74d6727fea,-0.3a05b2ff9cc61c/-0.24599aab93a814/-1.026a74d6727fea,-0.3a05b2ff9cc61c/0.2459985787c3f8/1.026a74d6727fea,-0.3a05b2ff9cc61c/0.2459985787c3f8/-1.026a74d6727fea,-0.2ef8224510de24/-0.15e84f/1.026a74d6727fea,-0.2ef8224510de24/-0.15e84f/-1.026a74d6727fea,-0.2ef8224510de24/0.3301da163f7810/1.026a74d6727fea,-0.2ef8224510de24/0.3301da163f7810/-1.026a74d6727fea,-0.020ebf6eb7c121c/-0.3df9b525ec73f8/-1.026a74d6727fea,-0.020ebf497702e00/-0.3df9b525ec73f8/1.026a74d6727fea,-0.020ebf6eb7c121c/0.3df9b525ec73f8/-1.026a74d6727fea,-0.020ebf497702e00/0.3df9b525ec73f8/1.026a74d6727fea,-0.010ee20f8542a22/-0.1d835b/-1.026a74d6727fea,-0.010ee20f8542a22/-0.1d835b/1.026a74d6727fea,-0.010ee20f8542a22/0.44b72c75da2810/-1.026a74d6727fea,-0.010ee20f8542a22/0.44b72c75da2810/1.026a74d6727fea,4.38d7ea2f6d365e-8/-0.46fbc93707c408/-1.026a74d6727fea,4.38d7ea2f6d365e-8/-0.46fbc93707c408/1.026a74d6727fea,4.38d7ea2f6d365e-8/0.46fbc93707c408/-1.026a74d6727fea,4.38d7ea2f6d365e-8/0.46fbc93707c408/1.026a74d6727fea,0.0a94d60fbc08af8/-0.1d835b/-1.026a74d6727fea,0.0a94d60fbc08af8/-0.1d835b/1.026a74d6727fea,0.0a94d60fbc08af8/0.44b72c75da2810/-1.026a74d6727fea,0.0a94d60fbc08af8/0.44b72c75da2810/1.026a74d6727fea,0.020ebf6eb7c11f0/-0.3df9b525ec73f8/-1.026a74d6727fea,0.020ebf6eb7c11f0/-0.3df9b525ec73f8/1.026a74d6727fea,0.020ebf6eb7c11f0/0.3df9b525ec73f8/-1.026a74d6727fea,0.020ebf6eb7c11f0/0.3df9b525ec73f8/1.026a74d6727fea,0.2ef8224510ddf8/-0.15e84f/-1.026a74d6727fea,0.2ef8224510ddf8/-0.15e84f/1.026a74d6727fea,0.2ef8224510ddf8/0.3301da163f7810/-1.026a74d6727fea,0.2ef8224510ddf8/0.3301da163f7810/1.026a74d6727fea,0.3a05b2ff9cc5f0/-0.24599aab93a814/1.026a74d6727fea,0.3a05b2ff9cc5f0/-0.24599aab93a814/-1.026a74d6727fea,0.3a05b2ff9cc5f0/0.2459985787c3f8/1.026a74d6727fea,0.3a05b2ff9cc5f0/0.2459985787c3f8/-1.026a74d6727fea,0.682fce247f4fe/-0.012ec084e661c05/1.026a74d6727fea,0.682fce247f4fe/-0.012ec084e661c05/-1.026a74d6727fea,0.682fce247f4fe/0.012ec084e661c05/1.026a74d6727fea,0.682fce247f4fe/0.012ec084e661c05/-1.026a74d6727fea,0.43909c6f8689e8/0/1.026a74d6727fea,0.43909c6f8689e8/0/-1.026a74d6727fea,-0.43909c6f868a18/0/1.026a74d6727fea,-0.411de0d6cf9218/-0.012ec084e661c05/1.026a74d6727fea,-0.43909c6f868a18/0/-1.026a74d6727fea,-0.411de0d6cf9218/-0.012ec084e661c05/-1.026a74d6727fea,-0.411de0d6cf9218/0.012ec084e661c05/1.026a74d6727fea,-0.411de0d6cf9218/0.012ec084e661c05/-1.026a74d6727fea,-0.3a05b2ff9cc61c/-0.24599aab93a814/1.026a74d6727fea,-0.3a05b2ff9cc61c/-0.24599aab93a814/-1.026a74d6727fea,-0.3a05b2ff9cc61c/0.2459985787c3f8/1.026a74d6727fea,-0.3a05b2ff9cc61c/0.2459985787c3f8/-1.026a74d6727fea,-0.2ef8224510de24/-0.15e84f/1.026a74d6727fea,-0.2ef8224510de24/-0.15e84f/-1.026a74d6727fea,-0.2ef8224510de24/0.3301da163f7810/1.026a74d6727fea,-0.2ef8224510de24/0.3301da163f7810/-1.026a74d6727fea,-0.020ebf497702e00/-0.3df9b525ec73f8/1.026a74d6727fea,-0.020ebf6eb7c121c/-0.3df9b525ec73f8/-1.026a74d6727fea,-0.020ebf497702e00/0.3df9b525ec73f8/1.026a74d6727fea,-0.020ebf6eb7c121c/0.3df9b525ec73f8/-1.026a74d6727fea,-0.010ee20f8542a22/-0.1d835b/1.026a74d6727fea,-0.010ee20f8542a22/-0.1d835b/-1.026a74d6727fea,-0.010ee20f8542a22/0.44b72c75da2810/1.026a74d6727fea,-0.010ee20f8542a22/0.44b72c75da2810/-1.026a74d6727fea,4.38d7ea2f6d365e-8/-0.46fbc93707c408/1.026a74d6727fea,4.38d7ea2f6d365e-8/-0.46fbc93707c408/-1.026a74d6727fea,4.38d7ea2f6d365e-8/0.46fbc93707c408/1.026a74d6727fea,4.38d7ea2f6d365e-8/0.46fbc93707c408/-1.026a74d6727fea,0.0a94d60fbc08af8/-0.1d835b/1.026a74d6727fea,0.0a94d60fbc08af8/-0.1d835b/-1.026a74d6727fea,0.0a94d60fbc08af8/0.44b72c75da2810/1.026a74d6727fea,0.0a94d60fbc08af8/0.44b72c75da2810/-1.026a74d6727fea,0.020ebf6eb7c11f0/-0.3df9b525ec73f8/1.026a74d6727fea,0.020ebf6eb7c11f0/-0.3df9b525ec73f8/-1.026a74d6727fea,0.020ebf6eb7c11f0/0.3df9b525ec73f8/1.026a74d6727fea,0.020ebf6eb7c11f0/0.3df9b525ec73f8/-1.026a74d6727fea,0.2ef8224510ddf8/-0.15e84f/1.026a74d6727fea,0.2ef8224510ddf8/-0.15e84f/-1.026a74d6727fea,0.2ef8224510ddf8/0.3301da163f7810/1.026a74d6727fea,0.2ef8224510ddf8/0.3301da163f7810/-1.026a74d6727fea,0.3a05b2ff9cc5f0/-0.24599aab93a814/1.026a74d6727fea,0.3a05b2ff9cc5f0/-0.24599aab93a814/-1.026a74d6727fea,0.3a05b2ff9cc5f0/0.2459985787c3f8/1.026a74d6727fea,0.3a05b2ff9cc5f0/0.2459985787c3f8/-1.026a74d6727fea,0.682fce247f4fe/-0.012ec084e661c05/1.026a74d6727fea,0.682fce247f4fe/-0.012ec084e661c05/-1.026a74d6727fea,0.682fce247f4fe/0.012ec084e661c05/1.026a74d6727fea,0.682fce247f4fe/0.012ec084e661c05/-1.026a74d6727fea,0.43909c6f8689e8/0/1.026a74d6727fea,0.43909c6f8689e8/0/-1.026a74d6727fea";
			var geo11uvs:String ="0.37c8b3/0.0879ea,0.37c8b3/0.08751d,0.580fb/0.0879ea,0.580fb/0.08751d,0.37c8b3/0.0794ea,0.580fb/0.0794ea,0.37c8b3/0.0799b7,0.580fb/0.0799b7,0.37c8b3/0.09e5ba,0.37c8b3/0.09e0fe,0.580fb/0.09e5ba,0.580fb/0.09e0fe,0.37c8b3/0.074e1f,0.580fb/0.074e1f,0.37c8b3/0.0752db,0.580fb/0.0752db,0.37c8b3/0.0bc81e,0.37c8b3/0.0bc37f,0.580fb/0.0bc81e,0.580fb/0.0bc37f,0.37c8b3/0.07a70e,0.580fb/0.07a70e,0.37c8b3/0.013a3,0.580fb/0.013a3,0.37c8b3/0.0dff9f,0.580fb/0.0dff9f,0.37c8b3/0.0e041b,0.580fb/0.0e041b,0.37c8b3/0.08a1d9,0.37c8b3/0.089d5d,0.580fb/0.08a1d9,0.580fb/0.089d5d,0.37c8b3/0.107023,0.580fb/0.107023,0.37c8b3/0.2a20,0.580fb/0.2a20,0.37c8b3/0.0a2872,0.37c8b3/0.0a2415,0.580fb/0.0a2872,0.580fb/0.0a2415,0.37c8b3/0.12e8ff,0.580fb/0.12e8ff,0.37c8b3/0.12ed4b,0.580fb/0.12ed4b,0.37c8b3/0.0c2688,0.37c8b3/0.0c223c,0.580fb/0.0c2688,0.580fb/0.0c223c,0.379983/0.0c2616,0.57c43/0.0c2616,0.379983/0.0c21ca,0.57c43/0.0c21ca,0.379983/0.12e971,0.379983/0.12edbd,0.57c43/0.12e971,0.57c43/0.12edbd,0.379983/0.0a273c,0.57c43/0.0a273c,0.379983/0.0a22de,0.57c43/0.0a22de,0.379983/0.107159,0.379983/0.1075b7,0.57c43/0.107159,0.57c43/0.1075b7,0.379983/0.08a032,0.57c43/0.08a032,0.379983/0.0dc5f,0.57c43/0.0dc5f,0.379983/0.0e0145,0.379983/0.0e05c1,0.57c43/0.0e0145,0.57c43/0.0e05c1,0.379983/0.07a569,0.379983/0.07aa07,0.57c43/0.07a569,0.57c43/0.07aa07,0.379983/0.0bc9c2,0.57c43/0.0bc9c2,0.379983/0.0bc524,0.57c43/0.0bc524,0.379983/0.074cec,0.379983/0.0751a8,0.57c43/0.074cec,0.57c43/0.0751a8,0.379983/0.09e6ed,0.57c43/0.09e6ed,0.379983/0.09e231,0.57c43/0.09e231,0.379983/0.07947a,0.379983/0.079947,0.57c43/0.07947a,0.57c43/0.079947,0.379983/0.0d909,0.57c43/0.0d909,0.379983/0.08758e,0.57c43/0.08758e";
			var geo11faces:String ="0,1,2,0,0,0,1,0,3,0,0,0,1,4,5,0,0,0,4,1,3,0,0,0,6,2,7,0,0,0,2,6,0,0,0,0,5,8,9,0,0,0,8,5,4,0,0,0,a,7,b,0,0,0,7,a,6,0,0,0,9,c,d,0,0,0,c,9,8,0,0,0,e,a,b,0,0,0,a,e,f,0,0,0,c,10,d,0,0,0,10,c,11,0,0,0,12,f,e,0,0,0,f,12,13,0,0,0,11,14,10,0,0,0,14,11,15,0,0,0,16,13,12,0,0,0,13,16,17,0,0,0,15,18,14,0,0,0,18,15,19,0,0,0,1a,17,16,0,0,0,17,1a,1b,0,0,0,19,1c,18,0,0,0,1c,19,1d,0,0,0,1e,1b,1a,0,0,0,1b,1e,1f,0,0,0,1d,20,1c,0,0,0,20,1d,21,0,0,0,22,1f,1e,0,0,0,1f,22,23,0,0,0,21,24,20,0,0,0,24,21,25,0,0,0,26,22,27,0,0,0,22,26,23,0,0,0,24,28,29,0,0,0,28,24,25,0,0,0,2a,27,2b,0,0,0,27,2a,26,0,0,0,29,2c,2d,0,0,0,2c,29,28,0,0,0,2e,2b,2f,0,0,0,2b,2e,2a,0,0,0,2d,2e,2f,0,0,0,2e,2d,2c,0,0,0,30,31,32,0,1,2,33,32,31,3,2,1,30,32,34,4,5,6,35,34,32,7,6,5,31,36,33,8,9,a,37,33,36,b,a,9,34,35,38,c,d,e,39,38,35,f,e,d,36,3a,37,10,11,12,3b,37,3a,13,12,11,38,39,3c,14,15,16,3d,3c,39,17,16,15,3e,3f,3a,18,19,1a,3b,3a,3f,1b,1a,19,40,3c,41,1c,1d,1e,3d,41,3c,1f,1e,1d,42,43,3e,20,21,22,3f,3e,43,23,22,21,44,40,45,24,25,26,41,45,40,27,26,25,46,47,42,28,29,2a,43,42,47,2b,2a,29,48,44,49,2c,2d,2e,45,49,44,2f,2e,2d,4a,4b,46,30,31,32,47,46,4b,33,32,31,4c,48,4d,34,35,36,49,4d,48,37,36,35,4e,4f,4a,38,39,3a,4b,4a,4f,3b,3a,39,50,4c,51,3c,3d,3e,4d,51,4c,3f,3e,3d,52,53,4e,40,41,42,4f,4e,53,43,42,41,54,50,55,44,45,46,51,55,50,47,46,45,52,56,53,48,49,4a,57,53,56,4b,4a,49,54,55,58,4c,4d,4e,59,58,55,4f,4e,4d,56,5a,57,50,51,52,5b,57,5a,53,52,51,58,59,5c,54,55,56,5d,5c,59,57,56,55,5a,5e,5b,58,59,5a,5f,5b,5e,5b,5a,59,5c,5d,5e,5c,5d,5e,5f,5e,5d,5f,5e,5d";
			var geo11:FacesDefinition = new FacesDefinition();
			geo11.f = buildFaces( geo11faces.split(","),  buildVertices(read(geo11vert).split(",")), buildUVs(read(geo11uvs).split(",")) );
			geos.push(geo11);
			var geo12vert:String ="-0.411de0d6cf9218/-0.012ec084e661c05/1.026a74d6727fea,-0.43909c6f868a18/0/-1.026a74d6727fea,-0.411de0d6cf9218/-0.012ec084e661c05/-1.026a74d6727fea,-0.43909c6f868a18/0/1.026a74d6727fea,-0.411de0d6cf9218/0.012ec084e661c05/1.026a74d6727fea,-0.411de0d6cf9218/0.012ec084e661c05/-1.026a74d6727fea,-0.3a05b2ff9cc61c/-0.24599aab93a814/1.026a74d6727fea,-0.3a05b2ff9cc61c/-0.24599aab93a814/-1.026a74d6727fea,-0.3a05b2ff9cc61c/0.2459985787c3f8/1.026a74d6727fea,-0.3a05b2ff9cc61c/0.2459985787c3f8/-1.026a74d6727fea,-0.2ef8224510de24/-0.15e84f/1.026a74d6727fea,-0.2ef8224510de24/-0.15e84f/-1.026a74d6727fea,-0.2ef8224510de24/0.3301da163f7810/1.026a74d6727fea,-0.2ef8224510de24/0.3301da163f7810/-1.026a74d6727fea,-0.020ebf6eb7c121c/-0.3df9b525ec73f8/-1.026a74d6727fea,-0.020ebf497702e00/-0.3df9b525ec73f8/1.026a74d6727fea,-0.020ebf6eb7c121c/0.3df9b525ec73f8/-1.026a74d6727fea,-0.020ebf497702e00/0.3df9b525ec73f8/1.026a74d6727fea,-0.010ee20f8542a22/-0.1d835b/-1.026a74d6727fea,-0.010ee20f8542a22/-0.1d835b/1.026a74d6727fea,-0.010ee20f8542a22/0.44b72c75da2810/-1.026a74d6727fea,-0.010ee20f8542a22/0.44b72c75da2810/1.026a74d6727fea,4.38d7ea2f6d365e-8/-0.46fbc93707c408/-1.026a74d6727fea,4.38d7ea2f6d365e-8/-0.46fbc93707c408/1.026a74d6727fea,4.38d7ea2f6d365e-8/0.46fbc93707c408/-1.026a74d6727fea,4.38d7ea2f6d365e-8/0.46fbc93707c408/1.026a74d6727fea,0.0a94d60fbc08af8/-0.1d835b/-1.026a74d6727fea,0.0a94d60fbc08af8/-0.1d835b/1.026a74d6727fea,0.0a94d60fbc08af8/0.44b72c75da2810/-1.026a74d6727fea,0.0a94d60fbc08af8/0.44b72c75da2810/1.026a74d6727fea,0.020ebf6eb7c11f0/-0.3df9b525ec73f8/-1.026a74d6727fea,0.020ebf6eb7c11f0/-0.3df9b525ec73f8/1.026a74d6727fea,0.020ebf6eb7c11f0/0.3df9b525ec73f8/-1.026a74d6727fea,0.020ebf6eb7c11f0/0.3df9b525ec73f8/1.026a74d6727fea,0.2ef8224510ddf8/-0.15e84f/-1.026a74d6727fea,0.2ef8224510ddf8/-0.15e84f/1.026a74d6727fea,0.2ef8224510ddf8/0.3301da163f7810/-1.026a74d6727fea,0.2ef8224510ddf8/0.3301da163f7810/1.026a74d6727fea,0.3a05b2ff9cc5f0/-0.24599aab93a814/1.026a74d6727fea,0.3a05b2ff9cc5f0/-0.24599aab93a814/-1.026a74d6727fea,0.3a05b2ff9cc5f0/0.2459985787c3f8/1.026a74d6727fea,0.3a05b2ff9cc5f0/0.2459985787c3f8/-1.026a74d6727fea,0.682fce247f4fe/-0.012ec084e661c05/1.026a74d6727fea,0.682fce247f4fe/-0.012ec084e661c05/-1.026a74d6727fea,0.682fce247f4fe/0.012ec084e661c05/1.026a74d6727fea,0.682fce247f4fe/0.012ec084e661c05/-1.026a74d6727fea,0.43909c6f8689e8/0/1.026a74d6727fea,0.43909c6f8689e8/0/-1.026a74d6727fea,-0.43909c6f868a18/0/1.026a74d6727fea,-0.411de0d6cf9218/-0.012ec084e661c05/1.026a74d6727fea,-0.43909c6f868a18/0/-1.026a74d6727fea,-0.411de0d6cf9218/-0.012ec084e661c05/-1.026a74d6727fea,-0.411de0d6cf9218/0.012ec084e661c05/1.026a74d6727fea,-0.411de0d6cf9218/0.012ec084e661c05/-1.026a74d6727fea,-0.3a05b2ff9cc61c/-0.24599aab93a814/1.026a74d6727fea,-0.3a05b2ff9cc61c/-0.24599aab93a814/-1.026a74d6727fea,-0.3a05b2ff9cc61c/0.2459985787c3f8/1.026a74d6727fea,-0.3a05b2ff9cc61c/0.2459985787c3f8/-1.026a74d6727fea,-0.2ef8224510de24/-0.15e84f/1.026a74d6727fea,-0.2ef8224510de24/-0.15e84f/-1.026a74d6727fea,-0.2ef8224510de24/0.3301da163f7810/1.026a74d6727fea,-0.2ef8224510de24/0.3301da163f7810/-1.026a74d6727fea,-0.020ebf497702e00/-0.3df9b525ec73f8/1.026a74d6727fea,-0.020ebf6eb7c121c/-0.3df9b525ec73f8/-1.026a74d6727fea,-0.020ebf497702e00/0.3df9b525ec73f8/1.026a74d6727fea,-0.020ebf6eb7c121c/0.3df9b525ec73f8/-1.026a74d6727fea,-0.010ee20f8542a22/-0.1d835b/1.026a74d6727fea,-0.010ee20f8542a22/-0.1d835b/-1.026a74d6727fea,-0.010ee20f8542a22/0.44b72c75da2810/1.026a74d6727fea,-0.010ee20f8542a22/0.44b72c75da2810/-1.026a74d6727fea,4.38d7ea2f6d365e-8/-0.46fbc93707c408/1.026a74d6727fea,4.38d7ea2f6d365e-8/-0.46fbc93707c408/-1.026a74d6727fea,4.38d7ea2f6d365e-8/0.46fbc93707c408/1.026a74d6727fea,4.38d7ea2f6d365e-8/0.46fbc93707c408/-1.026a74d6727fea,0.0a94d60fbc08af8/-0.1d835b/1.026a74d6727fea,0.0a94d60fbc08af8/-0.1d835b/-1.026a74d6727fea,0.0a94d60fbc08af8/0.44b72c75da2810/1.026a74d6727fea,0.0a94d60fbc08af8/0.44b72c75da2810/-1.026a74d6727fea,0.020ebf6eb7c11f0/-0.3df9b525ec73f8/1.026a74d6727fea,0.020ebf6eb7c11f0/-0.3df9b525ec73f8/-1.026a74d6727fea,0.020ebf6eb7c11f0/0.3df9b525ec73f8/1.026a74d6727fea,0.020ebf6eb7c11f0/0.3df9b525ec73f8/-1.026a74d6727fea,0.2ef8224510ddf8/-0.15e84f/1.026a74d6727fea,0.2ef8224510ddf8/-0.15e84f/-1.026a74d6727fea,0.2ef8224510ddf8/0.3301da163f7810/1.026a74d6727fea,0.2ef8224510ddf8/0.3301da163f7810/-1.026a74d6727fea,0.3a05b2ff9cc5f0/-0.24599aab93a814/1.026a74d6727fea,0.3a05b2ff9cc5f0/-0.24599aab93a814/-1.026a74d6727fea,0.3a05b2ff9cc5f0/0.2459985787c3f8/1.026a74d6727fea,0.3a05b2ff9cc5f0/0.2459985787c3f8/-1.026a74d6727fea,0.682fce247f4fe/-0.012ec084e661c05/1.026a74d6727fea,0.682fce247f4fe/-0.012ec084e661c05/-1.026a74d6727fea,0.682fce247f4fe/0.012ec084e661c05/1.026a74d6727fea,0.682fce247f4fe/0.012ec084e661c05/-1.026a74d6727fea,0.43909c6f8689e8/0/1.026a74d6727fea,0.43909c6f8689e8/0/-1.026a74d6727fea";
			var geo12uvs:String ="0.37c8b3/0.0879ea,0.37c8b3/0.08751d,0.580fb/0.0879ea,0.580fb/0.08751d,0.37c8b3/0.0794ea,0.580fb/0.0794ea,0.37c8b3/0.0799b7,0.580fb/0.0799b7,0.37c8b3/0.09e5ba,0.37c8b3/0.09e0fe,0.580fb/0.09e5ba,0.580fb/0.09e0fe,0.37c8b3/0.074e1f,0.580fb/0.074e1f,0.37c8b3/0.0752db,0.580fb/0.0752db,0.37c8b3/0.0bc81e,0.37c8b3/0.0bc37f,0.580fb/0.0bc81e,0.580fb/0.0bc37f,0.37c8b3/0.07a70e,0.580fb/0.07a70e,0.37c8b3/0.013a3,0.580fb/0.013a3,0.37c8b3/0.0dff9f,0.580fb/0.0dff9f,0.37c8b3/0.0e041b,0.580fb/0.0e041b,0.37c8b3/0.08a1d9,0.37c8b3/0.089d5d,0.580fb/0.08a1d9,0.580fb/0.089d5d,0.37c8b3/0.107023,0.580fb/0.107023,0.37c8b3/0.2a20,0.580fb/0.2a20,0.37c8b3/0.0a2872,0.37c8b3/0.0a2415,0.580fb/0.0a2872,0.580fb/0.0a2415,0.37c8b3/0.12e8ff,0.580fb/0.12e8ff,0.37c8b3/0.12ed4b,0.580fb/0.12ed4b,0.37c8b3/0.0c2688,0.37c8b3/0.0c223c,0.580fb/0.0c2688,0.580fb/0.0c223c,0.379983/0.0c2616,0.57c43/0.0c2616,0.379983/0.0c21ca,0.57c43/0.0c21ca,0.379983/0.12e971,0.379983/0.12edbd,0.57c43/0.12e971,0.57c43/0.12edbd,0.379983/0.0a273c,0.57c43/0.0a273c,0.379983/0.0a22de,0.57c43/0.0a22de,0.379983/0.107159,0.379983/0.1075b7,0.57c43/0.107159,0.57c43/0.1075b7,0.379983/0.08a032,0.57c43/0.08a032,0.379983/0.0dc5f,0.57c43/0.0dc5f,0.379983/0.0e0145,0.379983/0.0e05c1,0.57c43/0.0e0145,0.57c43/0.0e05c1,0.379983/0.07a569,0.379983/0.07aa07,0.57c43/0.07a569,0.57c43/0.07aa07,0.379983/0.0bc9c2,0.57c43/0.0bc9c2,0.379983/0.0bc524,0.57c43/0.0bc524,0.379983/0.074cec,0.379983/0.0751a8,0.57c43/0.074cec,0.57c43/0.0751a8,0.379983/0.09e6ed,0.57c43/0.09e6ed,0.379983/0.09e231,0.57c43/0.09e231,0.379983/0.07947a,0.379983/0.079947,0.57c43/0.07947a,0.57c43/0.079947,0.379983/0.0d909,0.57c43/0.0d909,0.379983/0.08758e,0.57c43/0.08758e";
			var geo12faces:String ="0,1,2,0,0,0,1,0,3,0,0,0,1,4,5,0,0,0,4,1,3,0,0,0,6,2,7,0,0,0,2,6,0,0,0,0,5,8,9,0,0,0,8,5,4,0,0,0,a,7,b,0,0,0,7,a,6,0,0,0,9,c,d,0,0,0,c,9,8,0,0,0,e,a,b,0,0,0,a,e,f,0,0,0,c,10,d,0,0,0,10,c,11,0,0,0,12,f,e,0,0,0,f,12,13,0,0,0,11,14,10,0,0,0,14,11,15,0,0,0,16,13,12,0,0,0,13,16,17,0,0,0,15,18,14,0,0,0,18,15,19,0,0,0,1a,17,16,0,0,0,17,1a,1b,0,0,0,19,1c,18,0,0,0,1c,19,1d,0,0,0,1e,1b,1a,0,0,0,1b,1e,1f,0,0,0,1d,20,1c,0,0,0,20,1d,21,0,0,0,22,1f,1e,0,0,0,1f,22,23,0,0,0,21,24,20,0,0,0,24,21,25,0,0,0,26,22,27,0,0,0,22,26,23,0,0,0,24,28,29,0,0,0,28,24,25,0,0,0,2a,27,2b,0,0,0,27,2a,26,0,0,0,29,2c,2d,0,0,0,2c,29,28,0,0,0,2e,2b,2f,0,0,0,2b,2e,2a,0,0,0,2d,2e,2f,0,0,0,2e,2d,2c,0,0,0,30,31,32,0,1,2,33,32,31,3,2,1,30,32,34,4,5,6,35,34,32,7,6,5,31,36,33,8,9,a,37,33,36,b,a,9,34,35,38,c,d,e,39,38,35,f,e,d,36,3a,37,10,11,12,3b,37,3a,13,12,11,38,39,3c,14,15,16,3d,3c,39,17,16,15,3e,3f,3a,18,19,1a,3b,3a,3f,1b,1a,19,40,3c,41,1c,1d,1e,3d,41,3c,1f,1e,1d,42,43,3e,20,21,22,3f,3e,43,23,22,21,44,40,45,24,25,26,41,45,40,27,26,25,46,47,42,28,29,2a,43,42,47,2b,2a,29,48,44,49,2c,2d,2e,45,49,44,2f,2e,2d,4a,4b,46,30,31,32,47,46,4b,33,32,31,4c,48,4d,34,35,36,49,4d,48,37,36,35,4e,4f,4a,38,39,3a,4b,4a,4f,3b,3a,39,50,4c,51,3c,3d,3e,4d,51,4c,3f,3e,3d,52,53,4e,40,41,42,4f,4e,53,43,42,41,54,50,55,44,45,46,51,55,50,47,46,45,52,56,53,48,49,4a,57,53,56,4b,4a,49,54,55,58,4c,4d,4e,59,58,55,4f,4e,4d,56,5a,57,50,51,52,5b,57,5a,53,52,51,58,59,5c,54,55,56,5d,5c,59,57,56,55,5a,5e,5b,58,59,5a,5f,5b,5e,5b,5a,59,5c,5d,5e,5c,5d,5e,5f,5e,5d,5f,5e,5d";
			var geo12:FacesDefinition = new FacesDefinition();
			geo12.f = buildFaces( geo12faces.split(","),  buildVertices(read(geo12vert).split(",")), buildUVs(read(geo12uvs).split(",")) );
			geos.push(geo12);
		}

		private function buildFaces(aFaces:Array, vVerts:Vector.<Vertex>, vUVs:Vector.<UV>):Vector.<Face>
		{
			var vFaces:Vector.<Face> = new Vector.<Face>();
			var f:Face;
			for(var i:int = 0;i<aFaces.length;i+=6){
				f = new Face( vVerts[parseInt(aFaces[i], 16)],
									vVerts[parseInt(aFaces[i+1], 16)],
									vVerts[parseInt(aFaces[i+2], 16)],
									null,
									vUVs[parseInt(aFaces[i+3], 16)],
									vUVs[parseInt(aFaces[i+4], 16)],
									vUVs[parseInt(aFaces[i+5], 16)]);
				vFaces.push(f);
			}

			return vFaces;
		}

		private function buildVertices(aVerts:Array):Vector.<Vertex>
		{
			var tmpv:Array;
			var vVerts:Vector.<Vertex> = new Vector.<Vertex>();
			for(var i:int = 0;i<aVerts.length;i++){
				tmpv = aVerts[i].split("/");
				vVerts[i] = new Vertex( parseFloat(tmpv[0])*_scale, parseFloat(tmpv[1])*_scale, parseFloat(tmpv[2])*_scale  );
			}
			return vVerts;
		}

		private function buildUVs(aUvs:Array):Vector.<UV>
		{
			var tmpv:Array;
			var vUVs:Vector.<UV> = new Vector.<UV>();
			for(var i:int = 0;i<aUvs.length;++i){
				tmpv = aUvs[i].split("/");
				vUVs[i] = new UV(parseFloat(tmpv[0]), parseFloat(tmpv[1]));
			}

			return vUVs;
		}


		private function buildMaterials():void
		{			materialLibrary = new MaterialLibrary();
			var mData_0:MaterialData = materialLibrary.addMaterial("ID402");
			mData_0.materialType = "colorMaterial";
			mData_0.ambientColor = 16777215;
			mData_0.diffuseColor = 2236962;
			mData_0.shininess = NaN;
			mData_0.specularColor = 16777215;
			mData_0.textureFileName = "null";
			var mElements_0:Array = mData_0.elements;
			
			var mData_1:MaterialData = materialLibrary.addMaterial("ID105");
			mData_1.materialType = "textureMaterial";
			mData_1.ambientColor = 0;
			mData_1.diffuseColor = 0;
			mData_1.shininess = NaN;
			mData_1.specularColor = 0;
			mData_1.textureFileName = "mig17/Metal_Corrogated_Shiny.jpg";
			var mElements_1:Array = mData_1.elements;
			
			var mData_2:MaterialData = materialLibrary.addMaterial("ID665");
			mData_2.materialType = "colorMaterial";
			mData_2.ambientColor = 16777215;
			mData_2.diffuseColor = 7368816;
			mData_2.shininess = NaN;
			mData_2.specularColor = 16777215;
			mData_2.textureFileName = "null";
			var mElements_2:Array = mData_2.elements;
			
			var mData_3:MaterialData = materialLibrary.addMaterial("ID163");
			mData_3.materialType = "colorMaterial";
			mData_3.ambientColor = 16777215;
			mData_3.diffuseColor = 16777215;
			mData_3.shininess = NaN;
			mData_3.specularColor = 16777215;
			mData_3.textureFileName = "null";
			var mElements_3:Array = mData_3.elements;
			
			var mData_4:MaterialData = materialLibrary.addMaterial("ID240");
			mData_4.materialType = "colorMaterial";
			mData_4.ambientColor = 16777215;
			mData_4.diffuseColor = 11184810;
			mData_4.shininess = NaN;
			mData_4.specularColor = 16777215;
			mData_4.textureFileName = "null";
			var mElements_4:Array = mData_4.elements;
			
			var mData_5:MaterialData = materialLibrary.addMaterial("ID366");
			mData_5.materialType = "textureMaterial";
			mData_5.ambientColor = 0;
			mData_5.diffuseColor = 0;
			mData_5.shininess = NaN;
			mData_5.specularColor = 0;
			mData_5.textureFileName = "mig17/Metal_Corrogated_Shiny_0.jpg";
			var mElements_5:Array = mData_5.elements;
			
			var mData_6:MaterialData = materialLibrary.addMaterial("ID346");
			mData_6.materialType = "colorMaterial";
			mData_6.ambientColor = 16777215;
			mData_6.diffuseColor = 15658734;
			mData_6.shininess = NaN;
			mData_6.specularColor = 16777215;
			mData_6.textureFileName = "null";
			var mElements_6:Array = mData_6.elements;
			
			var mData_7:MaterialData = materialLibrary.addMaterial("ID14");
			mData_7.materialType = "colorMaterial";
			mData_7.ambientColor = 16777215;
			mData_7.diffuseColor = 13369344;
			mData_7.shininess = NaN;
			mData_7.specularColor = 16777215;
			mData_7.textureFileName = "null";
			var mElements_7:Array = mData_7.elements;
			
			var mData_8:MaterialData = materialLibrary.addMaterial("ID358");
			mData_8.materialType = "colorMaterial";
			mData_8.ambientColor = 16777215;
			mData_8.diffuseColor = 1973790;
			mData_8.shininess = NaN;
			mData_8.specularColor = 16777215;
			mData_8.textureFileName = "null";
			var mElements_8:Array = mData_8.elements;
			
			var mData_9:MaterialData = materialLibrary.addMaterial("ID47");
			mData_9.materialType = "colorMaterial";
			mData_9.ambientColor = 16777215;
			mData_9.diffuseColor = 0;
			mData_9.shininess = NaN;
			mData_9.specularColor = 16777215;
			mData_9.textureFileName = "null";
			var mElements_9:Array = mData_9.elements;
			
			var mData_10:MaterialData = materialLibrary.addMaterial("ID6");
			mData_10.materialType = "colorMaterial";
			mData_10.ambientColor = 16777215;
			mData_10.diffuseColor = 16776960;
			mData_10.shininess = NaN;
			mData_10.specularColor = 16777215;
			mData_10.textureFileName = "null";
			var mElements_10:Array = mData_10.elements;
			
			var mData_11:MaterialData = materialLibrary.addMaterial("ID478");
			mData_11.materialType = "colorMaterial";
			mData_11.ambientColor = 16777215;
			mData_11.diffuseColor = 16777215;
			mData_11.shininess = NaN;
			mData_11.specularColor = 16777215;
			mData_11.textureFileName = "null";
			var mElements_11:Array = mData_11.elements;
			
			var mData_12:MaterialData = materialLibrary.addMaterial("ID795");
			mData_12.materialType = "colorMaterial";
			mData_12.ambientColor = 16777215;
			mData_12.diffuseColor = 16766720;
			mData_12.shininess = NaN;
			mData_12.specularColor = 16777215;
			mData_12.textureFileName = "null";
			var mElements_12:Array = mData_12.elements;
			
			var mData_13:MaterialData = materialLibrary.addMaterial("ID565");
			mData_13.materialType = "colorMaterial";
			mData_13.ambientColor = 16777215;
			mData_13.diffuseColor = 10329501;
			mData_13.shininess = NaN;
			mData_13.specularColor = 16777215;
			mData_13.textureFileName = "null";
			var mElements_13:Array = mData_13.elements;
			
			var mData_14:MaterialData = materialLibrary.addMaterial("ID301");
			mData_14.materialType = "colorMaterial";
			mData_14.ambientColor = 16777215;
			mData_14.diffuseColor = 16777215;
			mData_14.shininess = NaN;
			mData_14.specularColor = 16777215;
			mData_14.textureFileName = "null";
			var mElements_14:Array = mData_14.elements;
			
			var mData_15:MaterialData = materialLibrary.addMaterial("ID329");
			mData_15.materialType = "colorMaterial";
			mData_15.ambientColor = 16777215;
			mData_15.diffuseColor = 0;
			mData_15.shininess = NaN;
			mData_15.specularColor = 16777215;
			mData_15.textureFileName = "null";
			var mElements_15:Array = mData_15.elements;
			
			var mData_16:MaterialData = materialLibrary.addMaterial("ID324");
			mData_16.materialType = "colorMaterial";
			mData_16.ambientColor = 16777215;
			mData_16.diffuseColor = 8034650;
			mData_16.shininess = NaN;
			mData_16.specularColor = 16777215;
			mData_16.textureFileName = "null";
			var mElements_16:Array = mData_16.elements;
			
			var mData_17:MaterialData = materialLibrary.addMaterial("ID487");
			mData_17.materialType = "textureMaterial";
			mData_17.ambientColor = 0;
			mData_17.diffuseColor = 0;
			mData_17.shininess = NaN;
			mData_17.specularColor = 0;
			mData_17.textureFileName = "mig17/Metal_Corrogated_Shiny_1.jpg";
			var mElements_17:Array = mData_17.elements;
			
			var mData_18:MaterialData = materialLibrary.addMaterial("ID245");
			mData_18.materialType = "colorMaterial";
			mData_18.ambientColor = 16777215;
			mData_18.diffuseColor = 11119017;
			mData_18.shininess = NaN;
			mData_18.specularColor = 16777215;
			mData_18.textureFileName = "null";
			var mElements_18:Array = mData_18.elements;
			
			var mData_19:MaterialData = materialLibrary.addMaterial("ID56");
			mData_19.materialType = "colorMaterial";
			mData_19.ambientColor = 16777215;
			mData_19.diffuseColor = 13027014;
			mData_19.shininess = NaN;
			mData_19.specularColor = 16777215;
			mData_19.textureFileName = "null";
			var mElements_19:Array = mData_19.elements;
			
			var mData_20:MaterialData = materialLibrary.addMaterial("ID384");
			mData_20.materialType = "colorMaterial";
			mData_20.ambientColor = 16777215;
			mData_20.diffuseColor = 4276545;
			mData_20.shininess = NaN;
			mData_20.specularColor = 16777215;
			mData_20.textureFileName = "null";
			var mElements_20:Array = mData_20.elements;
			
			var mData_21:MaterialData = materialLibrary.addMaterial("ID170");
			mData_21.materialType = "colorMaterial";
			mData_21.ambientColor = 16777215;
			mData_21.diffuseColor = 0;
			mData_21.shininess = NaN;
			mData_21.specularColor = 16777215;
			mData_21.textureFileName = "null";
			var mElements_21:Array = mData_21.elements;
			
			var mData_22:MaterialData = materialLibrary.addMaterial("ID607");
			mData_22.materialType = "colorMaterial";
			mData_22.ambientColor = 16777215;
			mData_22.diffuseColor = 6707773;
			mData_22.shininess = NaN;
			mData_22.specularColor = 16777215;
			mData_22.textureFileName = "null";
			var mElements_22:Array = mData_22.elements;
			
			var mData_23:MaterialData = materialLibrary.addMaterial("ID590");
			mData_23.materialType = "colorMaterial";
			mData_23.ambientColor = 16777215;
			mData_23.diffuseColor = 7434609;
			mData_23.shininess = NaN;
			mData_23.specularColor = 16777215;
			mData_23.textureFileName = "null";
			var mElements_23:Array = mData_23.elements;
			
			var mData_24:MaterialData = materialLibrary.addMaterial("ID232");
			mData_24.materialType = "colorMaterial";
			mData_24.ambientColor = 16777215;
			mData_24.diffuseColor = 2236962;
			mData_24.shininess = NaN;
			mData_24.specularColor = 16777215;
			mData_24.textureFileName = "null";
			var mElements_24:Array = mData_24.elements;
			

				var id4_Bitmap:Bitmap = new Id4_Bitmap_Bitmap();
				applyMaterialToMesh("ID4", id4_Bitmap.bitmapData);

				var id45_Bitmap:Bitmap = new Id45_Bitmap_Bitmap();
				applyMaterialToMesh("ID45", id45_Bitmap.bitmapData);

				var id54_Bitmap:Bitmap = new Id54_Bitmap_Bitmap();
				applyMaterialToMesh("ID54", id54_Bitmap.bitmapData);

				var id63_Bitmap:Bitmap = new Id63_Bitmap_Bitmap();
				applyMaterialToMesh("ID63", id63_Bitmap.bitmapData);

				var id100_Bitmap:Bitmap = new Id100_Bitmap_Bitmap();
				applyMaterialToMesh("ID100", id100_Bitmap.bitmapData);

				var id154_Bitmap:Bitmap = new Id154_Bitmap_Bitmap();
				applyMaterialToMesh("ID154", id154_Bitmap.bitmapData);

				var id184_Bitmap:Bitmap = new Id184_Bitmap_Bitmap();
				applyMaterialToMesh("ID184", id184_Bitmap.bitmapData);

				var id191_Bitmap:Bitmap = new Id191_Bitmap_Bitmap();
				applyMaterialToMesh("ID191", id191_Bitmap.bitmapData);

				var id306_Bitmap:Bitmap = new Id306_Bitmap_Bitmap();
				applyMaterialToMesh("ID306", id306_Bitmap.bitmapData);

				var id315_Bitmap:Bitmap = new Id315_Bitmap_Bitmap();
				applyMaterialToMesh("ID315", id315_Bitmap.bitmapData);

				var id322_Bitmap:Bitmap = new Id322_Bitmap_Bitmap();
				applyMaterialToMesh("ID322", id322_Bitmap.bitmapData);

				var id353_Bitmap:Bitmap = new Id353_Bitmap_Bitmap();
				applyMaterialToMesh("ID353", id353_Bitmap.bitmapData);

				var id411_Bitmap:Bitmap = new Id411_Bitmap_Bitmap();
				applyMaterialToMesh("ID411", id411_Bitmap.bitmapData);

		}

		private function applyMaterialToMesh(id:String, bmd:BitmapData):void
		{
			for(var i:int;i<meshes.length;++i){
				if(meshes[i].name == id){
					if(!bmd){
						trace("Embed of "+id+" failed! Check source path or if CS4 call 911!");
					} else {
					meshes[i].material = new BitmapMaterial(bmd);
					}
					break;
				}
			}
		}

		private function cleanUp():void
		{
			for(var i:int = 0;i<13;++i){
				objs["obj"+i] == null;
			}
			aV = null;
			aU = null;
		}

		private function addContainers():void
		{
			aC = [];
			aC.push(this);
			var m0:Matrix3D = new Matrix3D();
			m0.rawData = Vector.<Number>([1,0,0,0,0,1,0,0,0,0,1,0,0*_scale,0*_scale,0*_scale,1]);
			transform = m0;
			name = "main";

			var cont1:ObjectContainer3D = new ObjectContainer3D();
			aC.push(cont1);
			addChild(cont1);
			var m1:Matrix3D = new Matrix3D();
			m1.rawData = Vector.<Number>([1,0,0,0,0,1,0,0,0,0,1,0,0*_scale,0*_scale,0*_scale,1]);
			cont1.transform = m1;
			cont1.name = "cont_1";

		}

		public function get containers():Array
		{
			return aC;
		}


		public function get meshes():Array
		{
			return oList;
		}


		private function read(str:String):String
		{
			var start:int= 0;
			var chunk:String;
			var end:int= 0;
			var dec:String = "";
			var charcount:int = str.length;
			for(var i:int = 0;i<charcount;++i){
				if (str.charCodeAt(i)>=44 && str.charCodeAt(i)<= 48 ){
					dec+= str.substring(i, i+1);
				}else{
					start = i;
					chunk = "";
					while(str.charCodeAt(i)!=44 && str.charCodeAt(i)!= 45 && str.charCodeAt(i)!= 46 && str.charCodeAt(i)!= 47 && i<=charcount){
						i++;
					}
					chunk = ""+parseInt("0x"+str.substring(start, i), 16 );
					dec+= chunk;
					i--;
				}
			}
			return dec;
		}

	}
}
class FacesDefinition
{
	import away3d.core.base.Face;
	import away3d.core.base.Geometry;
	public var f:Vector.<Face>;
	public var geometry:Geometry;
}