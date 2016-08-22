package emptyLib.Games.Avem {
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.display.Sprite;

	
	public class ScoreBox extends Sprite {
		
		protected var nombreLabel:TextField;
		protected var pointsLabel:TextField;
		public var nombreTxt:TextField;
		public var puntosTxt:TextField;
		
		public function ScoreBox():void {
			var tf:TextFormat = new TextFormat();
			tf.size = 20;
			tf.color = 0xff8000;
			var pf:TextFormat = new TextFormat();
			pf.size = 14;
			pf.color = 0x0040FF;
			this.nombreLabel = new TextField();
			this.nombreLabel.defaultTextFormat = tf;
			this.addChild(this.nombreLabel);
			nombreLabel.width = 300;
			nombreLabel.text = "Nombre:";
			nombreLabel.x = 10;
			nombreLabel.y = 10;
			
			this.nombreTxt = new TextField();
			this.nombreTxt.defaultTextFormat = tf;
			this.addChild(this.nombreTxt);
			nombreTxt.width = 300;
			nombreTxt.text = " ";
			nombreTxt.x = 100;
			nombreTxt.y = 10;
			
			this.pointsLabel = new TextField();
			this.pointsLabel.defaultTextFormat = tf;
			this.addChild(this.pointsLabel);
			pointsLabel.width = 300;
			pointsLabel.text = "Puntos:";
			pointsLabel.x = 300;
			pointsLabel.y = 10;
			
			this.puntosTxt = new TextField();
			this.puntosTxt.defaultTextFormat = tf;
			this.addChild(this.puntosTxt);
			puntosTxt.width = 300;
			puntosTxt.text = "0";
			puntosTxt.x = 400;
			puntosTxt.y = 10;			
		}
	}
}