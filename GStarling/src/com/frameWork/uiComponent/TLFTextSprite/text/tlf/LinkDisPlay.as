package com.frameWork.uiComponent.TLFTextSprite.text.tlf
{
	
	/** 
	 * @author 
	 *
	 * @web:	
	 *
	 * @version 0.1.0 
	 *
	 * 创建时间：2014-3-23 下午8:43:13 
	 * */
	
	
	import flashx.textLayout.elements.LinkElement;
	
	import starling.display.Quad;
	
	public class LinkDisPlay extends Quad
	{
		
		
		public function LinkDisPlay(width:Number, height:Number, color:uint=16777215, premultipliedAlpha:Boolean=true)
		{
			super(width, height, color, premultipliedAlpha);
		}
		
		public var linkElement:LinkElement;

		
		
	}
}