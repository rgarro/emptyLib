package emptyLib.Games.SharpFire {
	import feathers.controls.Alert;
	import flash.events.Event;
	import feathers.data.ListCollection;
	import feathers.controls.ButtonGroup;
	import feathers.controls.LayoutGroup;
	
	import feathers.controls.Header;
	import feathers.controls.Button;
	import flash.external.ExternalInterface;
	import starling.events.Event;
	import starling.text.TextFormat;
	import feathers.themes.MetalWorksMobileTheme;
	import starling.text.TextField;
	import starling.display.Sprite;
	
	
	
		//import flash.events.MouseEvent;
	//import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequestMethod;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequest;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import com.adobe.serialization.json.JSON;


	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Ipbtn extends Sprite {
		
		public var btn:Button;
		public var layout:LayoutGroup;
		public var base_url:String = "http://sharpfire.runnerx.site";
		//public var base_url:String = "http://127.0.0.1:3004";
		
		public function Ipbtn() {
			new MetalWorksMobileTheme();
			super();
			
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, addedBt);	
		}
		
		protected function addedBt(event:starling.events.Event):void{
			var request:URLRequest=new URLRequest();
			request.url= this.base_url + "/tecnicas";					
			request.requestHeaders=[new URLRequestHeader("Content-Type", "application/json")];
			request.method=URLRequestMethod.GET;
			var loader:URLLoader=new URLLoader();
			loader.addEventListener(flash.events.Event.COMPLETE, addingBt);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, notAllowed);
			loader.addEventListener(IOErrorEvent.IO_ERROR, notFound);
			loader.load(request);	
		}
		
		protected function addingBt(event:flash.events.Event):void{
		
			var myResults:String = event.target.data;
			var objR:Object = com.adobe.serialization.json.JSON.decode(myResults);
			
			var buttonsData:Array = new Array();
			for each(var og:Object in objR){	
					
				var btnData:Object = {label:og.name,value:og.name ,triggered: triggeredHandler};
				buttonsData.push(btnData);
			}
			
			this.layout = new LayoutGroup();
			this.addChild(this.layout);
		
			var group:ButtonGroup = new ButtonGroup();
			this.layout.addChild(group);
			group.dataProvider = new ListCollection(buttonsData);
			/*group.dataProvider = new ListCollection(
				[
					{ label: "小念頭",value:"siu nim tao", triggered: triggeredHandler },
    				{ label: "尋橋", value:"chum kiu",triggered: triggeredHandler },
    				{ label: "鏢指", value:"biu tze",triggered: triggeredHandler },
				]);*/
			
			group.y = 80;
			group.x = 50;
			group.gap = 10;
			var h:Header = new Header();
			h.title = "尖火 wing chun buttons";
			this.layout.addChild(h);
			h.width = 460;
		}
		
		protected function triggeredHandler(event:flash.events.Event):void{
			var button:Button = Button( event.currentTarget );
    	trace( "button triggered:");
		}
		
		protected function notAllowed(event:flash.events.Event):void{
			//ExternalInterface.call("alert", "Security Error, Data fetch not allowed");
			Alert.show( "Security Error, Data fetch not allowed", "Alert Title", new ListCollection({label: "OK"}));
		}
		
		protected function notFound(event:flash.events.Event):void{
			//ExternalInterface.call("alert", "Security Error, Data fetch source not found");
			Alert.show( "Security Error, Data fetch source not found", "Alert Title", new ListCollection({label: "OK"}));
		}
		
	}
}