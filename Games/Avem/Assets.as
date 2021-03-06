package emptyLib.Games.Avem {

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**
	 * @author rolando
	 */
	public class Assets {
		[Embed(source="Assets/map.png")]//black ace
		private var map:Class;
		private var _map:Bitmap = new map() as Bitmap;
		
		public function get mapClass():Bitmap{
			return _map;
		}
		
		public function get mapData():BitmapData{
			return _map.bitmapData;
		}
		
		[Embed(source="Assets/mapmarker.png")]//black ace
		private var mapmarker:Class;
		private var _mapmarker:Bitmap = new mapmarker() as Bitmap;
		
		public function get mapmarkerClass():Bitmap{
			return _mapmarker;
		}
		
		public function get mapmarkerData():BitmapData{
			return _mapmarker.bitmapData;
		}
		
		[Embed(source="Assets/mapmarkeroff.png")]
		private var mapmarkeroff:Class;
		private var _mapmarkeroff:Bitmap = new mapmarkeroff() as Bitmap;
		
		public function get mapmarkeroffClass():Bitmap{
			return _mapmarkeroff;
		}
		
		public function get mapmarkeroffData():BitmapData{
			return _mapmarkeroff.bitmapData;
		}
		
		[Embed(source="Assets/PreguntaBox.png")]
		private var PreguntaBox:Class;
		private var _PreguntaBox:Bitmap = new PreguntaBox() as Bitmap;
		
		public function get PreguntaBoxClass():Bitmap{
			return _PreguntaBox;
		}
		
		public function get PreguntaBoxData():BitmapData{
			return _PreguntaBox.bitmapData;
		}
		
		[Embed(source="Assets/PreguntaBoxBGoff.png")]
		private var PreguntaBoxBGoff:Class;
		private var _PreguntaBoxBGoff:Bitmap = new PreguntaBoxBGoff() as Bitmap;
		
		public function get PreguntaBoxBGoffClass():Bitmap{
			return _PreguntaBoxBGoff;
		}
		
		public function get PreguntaBoxBGoffData():BitmapData{
			return _PreguntaBoxBGoff.bitmapData;
		}
		
		[Embed(source="Assets/PreguntaBoxBGon.png")]
		private var PreguntaBoxBGon:Class;
		private var _PreguntaBoxBGon:Bitmap = new PreguntaBoxBGon() as Bitmap;
		
		public function get PreguntaBoxBGonClass():Bitmap{
			return _PreguntaBoxBGon;
		}
		
		public function get PreguntaBoxBGonData():BitmapData{
			return _PreguntaBoxBGon.bitmapData;
		}
		
		[Embed(source="Assets/yiguirro.png")]
		private var yiguirro:Class;
		private var _yiguirro:Bitmap = new yiguirro() as Bitmap;
		
		public function get yiguirroClass():Bitmap{
			return _yiguirro;
		}
		
		public function get yiguirroData():BitmapData{
			return _yiguirro.bitmapData;
		}
		
		[Embed(source="Assets/zopilote.png")]
		private var zopilote:Class;
		private var _zopilote:Bitmap = new zopilote() as Bitmap;
		
		public function get zopiloteClass():Bitmap{
			return _zopilote;
		}
		
		public function get zopiloteData():BitmapData{
			return _zopilote.bitmapData;
		}
		
		[Embed(source="Assets/ResultadoBox.png")]
		private var ResultadoBox:Class;
		private var _ResultadoBox:Bitmap = new ResultadoBox() as Bitmap;
		
		public function get ResultadoBoxClass():Bitmap{
			return _ResultadoBox;
		}
		
		public function get ResultadoBoxData():BitmapData{
			return _ResultadoBox.bitmapData;
		}
		
		[Embed(source="Assets/endBtn.png")]
		private var endBtn:Class;
		private var _endBtn:Bitmap = new endBtn() as Bitmap;
		
		public function get endBtnClass():Bitmap{
			return _endBtn;
		}
		
		public function get endBtnData():BitmapData{
			return _endBtn.bitmapData;
		}
		
		[Embed(source="Assets/onSound.png")]
		private var onSound:Class;
		private var _onSound:Bitmap = new onSound() as Bitmap;
		
		public function get onSoundClass():Bitmap{
			return _onSound;
		}
		
		public function get onSoundData():BitmapData{
			return _onSound.bitmapData;
		}
		
		[Embed(source="Assets/offSound.png")]
		private var offSound:Class;
		private var _offSound:Bitmap = new offSound() as Bitmap;
		
		public function get offSoundClass():Bitmap{
			return _offSound;
		}
		
		public function get offSoundData():BitmapData{
			return _offSound.bitmapData;
		}
		
		[Embed(source="Assets/NombreBoxBG.png")]
		private var NombreBoxBG:Class;
		private var _NombreBoxBG:Bitmap = new NombreBoxBG() as Bitmap;
		
		public function get NombreBoxBGClass():Bitmap{
			return _NombreBoxBG;
		}
		
		public function get NombreBoxBGData():BitmapData{
			return _NombreBoxBG.bitmapData;
		}
		
		[Embed(source="Assets/NombreBoxBtn.png")]
		private var NombreBoxBtn:Class;
		private var _NombreBoxBtn:Bitmap = new NombreBoxBtn() as Bitmap;
		
		public function get NombreBoxBtnClass():Bitmap{
			return _NombreBoxBtn;
		}
		
		public function get NombreBoxBtnData():BitmapData{
			return _NombreBoxBtn.bitmapData;
		}
		
		[Embed(source="Assets/NombreBoxErrMsg.png")]
		private var NombreBoxErrMsg:Class;
		private var _NombreBoxErrMsg:Bitmap = new NombreBoxErrMsg() as Bitmap;
		
		public function get NombreBoxErrMsgClass():Bitmap{
			return _NombreBoxErrMsg;
		}
		
		public function get NombreBoxErrMsgData():BitmapData{
			return _NombreBoxErrMsg.bitmapData;
		}
		
		[Embed(source="Assets/fbbutton.png")]
		private var fbbutton:Class;
		private var _fbbutton:Bitmap = new fbbutton() as Bitmap;
		
		public function get fbbuttonClass():Bitmap{
			return _fbbutton;
		}
		
		public function get fbbuttonData():BitmapData{
			return _fbbutton.bitmapData;
		}
		
	}
}