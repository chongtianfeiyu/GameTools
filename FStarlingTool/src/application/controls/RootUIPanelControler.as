package application.controls
{
	import application.STLConstant;
	import application.STLRootClass;
	import application.comps.RootStage;
	
	import com.frameWork.gestures.DragGestures;
	
	import flash.system.Capabilities;
	
	import gframeWork.uiController.JT_MainUIControllerBase;
	
	import mx.events.FlexEvent;
	
	import starling.core.Starling;
	import starling.utils.HAlign;
	
	public class RootUIPanelControler extends JT_MainUIControllerBase
	{
		
		public function RootUIPanelControler()
		{
			super();
		}
		
		protected override function uiCreateComplete(event:FlexEvent):void
		{
			super.uiCreateComplete(event);
		}
		
	}
}