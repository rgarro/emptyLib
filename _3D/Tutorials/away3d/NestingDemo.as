﻿package emptyLib._3D.Tutorials.away3d  {	import emptyLib._3D.Template;	import emptyLib.Embeders.War;	import flash.display.Bitmap;	import away3d.materials.BitmapMaterial;		public class NestingDemo extends Template {		public var texture:Bitmap;		public function NestingDemo() {			super();		}				protected override function initScene():void{			super.initScene();			var assets:War = new War();			this.texture = new Bitmap(assets.spaceGunData);			var material:BitmapMaterial(texture);		}	}	}