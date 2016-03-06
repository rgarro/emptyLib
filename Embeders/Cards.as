/**
 * EmptyArt Cards Embeeder
 * a themed poker deck assets
 * 
 * -------------   -------------   -------------   -------------   -------------   -------------   ------------- 
 *|10♣          | |J♦           | |Q♥           | |K♠           | |A♣           | |* * * * * * *| |J            |
 *|   -------   | |   -------   | |   -------   | |   -------   | |   -------   | | * * * * * * | |O  -------   |
 *|  |♣     ♣|  | |  |♦      |  | |  |♥      |  | |  |♠      |  | |  |       |  | |* * * * * * *| |K |       |  |
 *|  |   ♣   |  | |  |       |  | |  |       |  | |  |       |  | |  |       |  | | * * * * * * | |E | J     |  |
 *|  |♣     ♣|  | |  |       |  | |  |       |  | |  |       |  | |  |       |  | |* * * * * * *| |R |  O    |  |
 *|  |       |  | |  |   J   |  | |  |   Q   |  | |  |   K   |  | |  |   ♣   |  | | * * * * * * | |  |   K   |  |
 *|  |♣     ♣|  | |  |       |  | |  |       |  | |  |       |  | |  |       |  | |* * * * * * *| |  |    E  | J|
 *|  |   ♣   |  | |  |       |  | |  |       |  | |  |       |  | |  |       |  | | * * * * * * | |  |     R | O|
 *|  |♣     ♣|  | |  |      ♦|  | |  |      ♥|  | |  |      ♠|  | |  |       |  | |* * * * * * *| |  |       | K|
 *|   -------   | |   -------   | |   -------   | |   -------   | |   -------   | | * * * * * * | |   -------  E|
 *|          ♣10| |           ♦J| |           ♥Q| |           ♠K| |           ♣A| |* * * * * * *| |            R|
 * -------------   -------------   -------------   -------------   -------------   -------------   -------------
 * 
 * @autor Rolo <rolando@emptyart.xyz>
 *  @copyright EmptyArt.xyz
 */
package emptyLib.Embeders
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	
	public class Cards
	{
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c3.jpg")]//black ace
		private var black_ace:Class;
		private var _black_ace:Bitmap = new black_ace() as Bitmap;
		
		public function get black_aceClass():Bitmap{
			return _black_ace;
		}
		
		public function get black_aceData():BitmapData{
			return _black_ace.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c4.jpg")]//black two
		private var black_two:Class;
		private var _black_two:Bitmap = new black_two() as Bitmap;
		public function get black_twoClass():Bitmap{
			return _black_two;
		}
		
		public function get black_twoData():BitmapData{
			return _black_two.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c5.jpg")]//black three
		private var black_three:Class;
		private var _black_three:Bitmap = new black_three() as Bitmap;
		public function get black_threeClass():Bitmap{
			return _black_three;
		}
		
		public function get black_threeData():BitmapData{
			return _black_three.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c6.jpg")]//black four
		private var black_four:Class;
		private var _black_four:Bitmap = new black_four() as Bitmap;
		public function get black_fourClass():Bitmap{
			return _black_four;
		}
		
		public function get black_fourData():BitmapData{
			return _black_four.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c7.jpg")]//black five
		private var black_five:Class;
		private var _black_five:Bitmap = new black_five() as Bitmap;
		public function get black_fiveClass():Bitmap{
			return _black_five;
		}
		
		public function get black_fiveData():BitmapData{
			return _black_five.bitmapData;
		}
		
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c8.jpg")]//black six
		private var black_six:Class;
		private var _black_six:Bitmap = new black_six() as Bitmap;
		public function get black_sixClass():Bitmap{
			return _black_six;
		}
		
		public function get black_sixData():BitmapData{
			return _black_six.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c9.jpg")]//black seven
		private var black_seven:Class;
		private var _black_seven:Bitmap = new black_seven() as Bitmap;
		public function get black_sevenClass():Bitmap{
			return _black_seven;
		}
		
		public function get black_sevenData():BitmapData{
			return _black_seven.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c10.jpg")]//black eight
		private var black_eight:Class;
		private var _black_eight:Bitmap = new black_eight() as Bitmap;
		public function get black_eightClass():Bitmap{
			return _black_eight;
		}
		
		public function get black_eightData():BitmapData{
			return _black_eight.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r1_c11.jpg")]//black nine
		private var black_nine:Class;
		private var _black_nine:Bitmap = new black_nine() as Bitmap;
		public function get black_nineClass():Bitmap{
			return _black_nine;
		}
		
		public function get black_nineData():BitmapData{
			return _black_nine.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c1.jpg")]//black ten
		private var black_ten:Class;
		private var _black_ten:Bitmap = new black_ten() as Bitmap;
		public function get black_tenClass():Bitmap{
			return _black_ten;
		}
		
		public function get black_tenData():BitmapData{
			return _black_ten.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c2.jpg")]//black J
		private var black_j:Class;
		private var _black_j:Bitmap = new black_j() as Bitmap;
		public function get black_jClass():Bitmap{
			return _black_j;
		}
		
		public function get black_jData():BitmapData{
			return _black_nine.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c3.jpg")]//black Q
		private var black_q:Class;
		private var _black_q:Bitmap = new black_q() as Bitmap;
		public function get black_qClass():Bitmap{
			return _black_q;
		}
		
		public function get black_qData():BitmapData{
			return _black_q.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c4.jpg")]//black K
		private var black_k:Class;
		private var _black_k:Bitmap = new black_k() as Bitmap;
		public function get black_kClass():Bitmap{
			return _black_k;
		}
		
		public function get black_kData():BitmapData{
			return _black_k.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c5.jpg")]//red ace
		private var red_ace:Class;
		private var _red_ace:Bitmap = new red_ace() as Bitmap;
		
		public function get red_aceClass():Bitmap{
			return _red_ace;
		}
		
		public function get red_aceData():BitmapData{
			return _red_ace.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c6.jpg")]//red two
		private var red_two:Class;
		private var _red_two:Bitmap = new red_two() as Bitmap;
		public function get red_twoClass():Bitmap{
			return _red_two;
		}
		
		public function get red_twoData():BitmapData{
			return _red_two.bitmapData;
		}
		
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c7.jpg")]//red three
		private var red_three:Class;
		private var _red_three:Bitmap = new red_three() as Bitmap;
		public function get red_threeClass():Bitmap{
			return _red_three;
		}
		
		public function get red_threeData():BitmapData{
			return _red_three.bitmapData;
		}
		
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c8.jpg")]//red four
		private var red_four:Class;
		private var _red_four:Bitmap = new red_four() as Bitmap;
		public function get red_fourClass():Bitmap{
			return _red_four;
		}
		
		public function get red_fourData():BitmapData{
			return _red_four.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c9.jpg")]//red five
		private var red_five:Class;
		private var _red_five:Bitmap = new red_five() as Bitmap;
		public function get red_fiveClass():Bitmap{
			return _red_five;
		}
		
		public function get red_fiveData():BitmapData{
			return _red_five.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c10.jpg")]//red six
		private var red_six:Class;
		private var _red_six:Bitmap = new red_six() as Bitmap;
		public function get red_sixClass():Bitmap{
			return _red_six;
		}
		
		public function get red_sixData():BitmapData{
			return _red_ace.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r2_c11.jpg")]//red seven
		private var red_seven:Class;
		private var _red_seven:Bitmap = new red_seven() as Bitmap;
		public function get red_sevenClass():Bitmap{
			return _red_seven;
		}
		
		public function get red_sevenData():BitmapData{
			return _red_seven.bitmapData;
		}
		
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r3_c1.jpg")]//red eight
		private var red_eight:Class;
		private var _red_eight:Bitmap = new red_eight() as Bitmap;
		public function get red_eightClass():Bitmap{
			return _red_eight;
		}
		
		public function get red_eightData():BitmapData{
			return _red_ace.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r3_c2.jpg")]//red nine
		private var red_nine:Class;
		private var _red_nine:Bitmap = new red_nine() as Bitmap;
		public function get red_nineClass():Bitmap{
			return _red_nine;
		}
		
		public function get red_nineData():BitmapData{
			return _red_nine.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r3_c3.jpg")]//red ten
		private var red_ten:Class;
		private var _red_ten:Bitmap = new red_ten() as Bitmap;
		public function get red_tenClass():Bitmap{
			return _red_ten;
		}
		
		public function get red_tenData():BitmapData{
			return _red_ten.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r3_c4.jpg")]//red j
		private var red_j:Class;
		private var _red_j:Bitmap = new red_j() as Bitmap;
		public function get red_jClass():Bitmap{
			return _red_j;
		}
		
		public function get red_jData():BitmapData{
			return _red_j.bitmapData;
		}
		
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r3_c5.jpg")]//red q
		private var red_q:Class;
		private var _red_q:Bitmap = new red_q() as Bitmap;
		public function get red_qClass():Bitmap{
			return _red_q;
		}
		
		public function get red_qData():BitmapData{
			return _red_q.bitmapData;
		}
		
		[Embed(source="../Assets/Casino/cards/octavoDeck_r3_c6.jpg")]//red k
		private var red_k:Class;
		private var _red_k:Bitmap = new red_k() as Bitmap;
		public function get red_kClass():Bitmap{
			return _red_k;
		}
		
		public function get red_kData():BitmapData{
			return _red_k.bitmapData;
		}
		
	}
}


