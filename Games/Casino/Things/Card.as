/**
 * EmptyLib Games Things Casino Card Object
 * 
 * 
 * ------------- 
 *|10♣          | 
 *|   -------   |
 *|  |♣     ♣|  | 
 *|  |   ♣   |  |
 *|  |♣     ♣|  |
 *|  |       |  | 
 *|  |♣     ♣|  | 
 *|  |   ♣   |  |
 *|  |♣     ♣|  | 
 *|   -------   | 
 *|          ♣10| 
 * -------------   
 * 
 * @autor Rolo <rolando@emptyart.xyz>
 * @copyright EmptyArt.xyz
 */
package emptyLib.Games.Casino.Things
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	public class Card extends Bitmap
	{
		public var color:String;
		public var value:String;
		public var symbol:String;
		
		public function Card(color:String,value:String,symbol:String,bitmapData:BitmapData=null, pixelSnapping:String="auto", smoothing:Boolean=false)
		{
			super(bitmapData, pixelSnapping, smoothing);
			this.color = color;
			this.value = value;
			this.symbol = symbol;
		}
	}
}