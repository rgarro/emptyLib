package emptyLib.Games.Avem {
	import flash.events.MouseEvent;
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;

	/**
	 * @author rolando
	 */
	public class ResultadoBox extends Sprite {
		
		protected var bg:Bitmap;
		protected var percentTxt:TextField;
		protected var endBtn:Bitmap;
		protected var endBtnCont:Sprite;
		protected var myMap:Map;
		
		
		public function ResultadoBox(percent:String,map:Map):void {
			this.myMap = map;
			var assets:Assets = new Assets();
			bg = new Bitmap(assets.ResultadoBoxData);
			this.addChild(bg);
			this.x = 100;
			this.y = 100;
			
			var tf:TextFormat = new TextFormat();
			tf.size = 20;
			tf.color = 0x000000;
			
			this.percentTxt = new TextField();
			this.percentTxt.defaultTextFormat = tf;
			this.addChild(percentTxt);
			percentTxt.width = 250;
			percentTxt.text = percent;
			percentTxt.x = 85;
			percentTxt.y = 150;
			
			this.endBtnCont = new Sprite();
			this.addChild(endBtnCont);
			this.endBtn = new Bitmap(assets.endBtnData);
			this.endBtnCont.addChild(endBtn);
			this.endBtnCont.useHandCursor = true;
			this.endBtnCont.buttonMode = true;
			this.endBtnCont.x = 110;
			this.endBtnCont.y = 182;
			this.endBtnCont.addEventListener(MouseEvent.CLICK, reload);			
		}
		
		protected function reload(e:MouseEvent):void{
			this.myMap.trivia.restart();
		}
		
	}
}