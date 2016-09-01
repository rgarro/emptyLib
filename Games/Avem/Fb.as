package emptyLib.Games.Avem {
	import com.adobe.serialization.json.JSONEncoder;
	import com.adobe.serialization.json.JSON;
	import com.facebook.graph.Facebook;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Fb extends Sprite {
		
		protected static const APP_ID:String = "206674886413786"; //Place your application id here
		public var message:String;
		
		public function Fb(msg:String):void {
			this.message = msg;
			this.configUI();
		}
		
		protected function configUI():void {
			//Initialize Facebook library
			Facebook.init(APP_ID, onInit);			
		}
		
		protected function onInit(result:Object, fail:Object):void {	
			ExternalInterface.call("console.log",result);	
			ExternalInterface.call("console.log",result);					
			if (result) { //already logged in because of existing session
				this.sendMessage();
			} else {
				var opts:Object = {scope:"publish_stream, user_photos"};
				Facebook.login(onLogin, opts);
			}
		}
		
		
		
		protected function onLogin(result:Object, fail:Object):void {
			if (result) { //successfully logged in
				this.sendMessage();
			} 
		}
		
		protected function sendMessage():void{
			var params:Object = {
				message: this.message,
				link: 'your link here',
				caption: 'Text to display 1',
				name: 'Text to display 2',
				description: 'Description'
				//picture: 'image url here'
				};

			Facebook.api( 'me/feed', onComplete, params, "POST" );
		}
		
		public function onComplete( response:Object, fail:Object ):void {
			//ExternalInterface.call("console.log",com.adobe.serialization.json.JSON.encode(response));
			//ExternalInterface.call("console.log",com.adobe.serialization.json.JSON.encode(fail));
		}
		
	}
}