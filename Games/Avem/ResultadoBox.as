package emptyLib.Games.Avem {
	import flash.media.Sound;
	import emptyLib.Particles.Firework;
	import org.flintparticles.twoD.emitters.Emitter2D;
	import flash.events.MouseEvent;
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;
  import org.flintparticles.twoD.renderers.BitmapRenderer;
  import flash.filters.BlurFilter;
  import flash.filters.ColorMatrixFilter;
  import flash.geom.Rectangle;
	

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class ResultadoBox extends Sprite {
		
		protected var bg:Bitmap;
		protected var percentTxt:TextField;
		protected var endBtn:Bitmap;
		protected var endBtnCont:Sprite;
		protected var myMap:Map;
		
		[Embed(source="../../Assets/Sounds/idg-expl-intermed-772_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
	
		
		private var emitter:Emitter2D;
		
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
			
			this.clickSound = new clickSoundClass() as Sound;
			
			emitter = new Firework();
      
      var renderer:BitmapRenderer = new BitmapRenderer( new Rectangle( 0, 0, 500, 400 ) );
      renderer.addFilter( new BlurFilter( 2, 2, 1 ) );
      renderer.addFilter( new ColorMatrixFilter( [ 1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.95,0 ] ) );
      renderer.addEmitter( emitter );
      addChild( renderer );
      
	  this.clickSound.play(0,3);
      emitter.x = 145;
      emitter.y = 95;
      emitter.start();		
		}
		
		protected function reload(e:MouseEvent):void{
			this.myMap.trivia.restart();
		}
		
	}
}