package gframeWork.resouce
{
	import flash.display.Loader;
	import flash.errors.IOError;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	
	import gframeWork.JT_internal;
	
	use namespace JT_internal
	
	public class JT_AssetsLoader extends Loader
	{
		/**
		 * 引用计算 
		 */		
		JT_internal var mReferenceCount:int = 0;
		
		JT_internal static var internalCall:Boolean = false;
		
		/**
		 * 测试次数 
		 */		
		private var mTryCount:int = 5;
		
		/**
		 * 当前重试的次数 
		 */		
		private var mTime:int = 0;
		
		/**
		 * 加载的路径 
		 */		
		private var mUrlRequest:URLRequest;
		
		/**
		 * 加载的内容 
		 */		
		private var mContext:LoaderContext;
		
		/**
		 * 加载的二制流 
		 */		
		private var mByteArray:ByteArray;
		
		/**
		 * 是否正在加载中 
		 */		
		private var isLoading:Boolean = false;
		
		public function JT_AssetsLoader()
		{
			super();
			if(!internalCall)
			{
				throw new Error("This can't use the new generate as instance");
			}
		}
		
		private function listener():void
		{
			contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler,false,0,true);
			contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,securyErrorHandler,false,0,true);
			contentLoaderInfo.addEventListener(Event.COMPLETE,completeHandler,false,0,true);
		}
		
		private function removeListener():void
		{
			contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
			contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,securyErrorHandler);
			contentLoaderInfo.removeEventListener(Event.COMPLETE,completeHandler);
		}
		
		private function ioErrorHandler(event:IOErrorEvent):void
		{
			isLoading = false;
			if(mTime != mTryCount)
			{
				mTime++;
				if(!mByteArray)
				{
					load(mUrlRequest,mContext);
				}
				else
				{
					loadBytes(mByteArray,mContext);
				}
			}
			else
			{
				throw new Error(event.toString());
			}
		}
		
		private function securyErrorHandler(event:SecurityErrorEvent):void
		{
			isLoading = false;
			if(mTime != mTryCount)
			{
				mTime++;
				if(!mByteArray)
				{
					load(mUrlRequest,mContext);
				}
				else
				{
					loadBytes(mByteArray,mContext);
				}
			}
			else
			{
				throw new Error(event.toString());
			}
		}
		
		private function completeHandler(event:Event):void
		{
			mTime=0;
			isLoading = false;
		}
		
		public override function load(request:URLRequest, context:LoaderContext=null):void
		{
			mUrlRequest = request;
			mContext = context;
			
			if(!isLoading)
			{
				isLoading = true;
				super.load(request,context);
			}
		}
		
		public override function loadBytes(bytes:ByteArray, context:LoaderContext=null):void
		{
			mByteArray = bytes;
			mContext = context;
			
			if(!isLoading)
			{
				isLoading = true;
				super.loadBytes(bytes,context);
			}
		}
		
//		public override function unloadAndStop(gc:Boolean=true):void
//		{
//			if(mReferenceCount <= 0)
//			{
//				super.unloadAndStop(gc);
//			}
//			else
//			{
//				mReferenceCount--;
//			}
//		}
		
//		public function get mySelf():JT_AssetsLoader
//		{
//			mReferenceCount++;
//			return this;
//		}
		
		public function get isComplete():Boolean
		{
			return content ? true : false;
		}
		
	}
}