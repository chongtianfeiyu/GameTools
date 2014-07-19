package com.uiControls
{
	import com.IDisable;
	
	import starling.core.Starling;
	import starling.display.DisplayObject;
	import starling.display.DisplayObjectContainer;
	import starling.events.EventDispatcher;
	
	public class UIControler extends EventDispatcher implements IDisable
	{
		
		public var uiId:int = 0;								//ui的Id
		public var uiGroupId:int = UIConstant.GROUP_NORMAL_UI;	//ui的类型Id
		public var uiState:int = UIConstant.DEFAULT;			//状态
		public var gcDelayTime:int = UIConstant.GC_TIME;		//gc时间 0表示永不gc
		
		private var openData:Object = null						//开启的时候传入的参数
		private var uiContent:DisplayObject;					//ui的内显示内容
			
		public function UIControler()
		{
			super();
		}
		
		/**
		 * 父级显示的容器 
		 * @return 
		 */		
		public function get featherSpace():DisplayObjectContainer
		{
			return Starling.current.stage;	
		}
		
		public function dispose():void
		{
		}
	}
}