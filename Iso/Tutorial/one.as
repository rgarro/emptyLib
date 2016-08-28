package emptyLib.Iso.Tutorial {

	import emptyLib.Iso.IsoTemplate;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	[SWF(width="800",height="600",backgroundColor="#000000",frameRate="30")] 
	public class one extends IsoTemplate {
		public function one() {
			super();
			this.view.setSize(800, 600);
			this.view.addScene(this.scene);
			this.addChild(this.view);
		}
	}
}