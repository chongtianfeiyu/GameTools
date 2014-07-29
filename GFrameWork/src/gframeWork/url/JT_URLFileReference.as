/**
 *
 * 网络文件的引用
 *  
 */

package gframeWork.url
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;

	public class JT_URLFileReference
	{

		private var mFileStream:JT_URLStreamLoader;
		
		private var mLoadingCompleteHandler:Function;
		
		private var mLoadingFaultHandler:Function;
		
		private var mProgressingHandler:Function;
		
		private var mUrl:URLRequest;
		
		public function JT_URLFileReference(address:URLRequest = null)
		{
			mUrl = address;					
		}
		
		/**
		 * 打开文件 
		 * @param address						网络文件地址
		 * @param succeedHandler				打开文件成功后的调用
		 * @param faultHandler					打开文件失败后的调用
		 * @param progressHandler				加载过程中调用的函数
		 * 
		 */		
		public function openFile(succeedHandler:Function,faultHandler:Function = null,progressHandler:Function = null,address:URLRequest = null):void
		{
			mLoadingCompleteHandler = succeedHandler;
			mLoadingFaultHandler = faultHandler;
			mProgressingHandler = progressHandler;
			
			if(address)
			{
				mUrl = address;
			}
			
			if(mUrl)
			{
				if(!mFileStream)
				{
					mFileStream = new JT_URLStreamLoader(mUrl);
				}
				else
				{
					removeListener();
					mFileStream.dispose();
					mFileStream = new JT_URLStreamLoader(mUrl);
				}
				
				listener();
				mFileStream.loader();
			}
			else
			{
				throw new Error("address Can't for empty");
			}
		}
		
		public function close():void
		{
			removeListener();
			if(mFileStream)
			{
				mFileStream.dispose();
				mFileStream = null;
			}
		}
		
		private function completeHandler(event:Event):void
		{
			if(mLoadingCompleteHandler != null)
			{
				mLoadingCompleteHandler(event);
			}
		}
		
		private function ioErrorHandler(event:IOErrorEvent):void
		{
			if(mLoadingFaultHandler != null)
			{
				mLoadingFaultHandler(event);
			}
		}
		
		private function progressHandler(event:ProgressEvent):void
		{
			if(mProgressingHandler != null)
			{
				mProgressingHandler(event);
			}
		}
		
		private function listener():void
		{
			if(mFileStream)
			{
				mFileStream.addEventListener(Event.COMPLETE,completeHandler,false,0,true);
				mFileStream.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler,false,0,true);
				mFileStream.addEventListener(ProgressEvent.PROGRESS,progressHandler,false,0,true);
			}
		}
		
		private function removeListener():void
		{
			if(mFileStream)
			{
				mFileStream.removeEventListener(Event.COMPLETE,completeHandler);
				mFileStream.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
				mFileStream.removeEventListener(ProgressEvent.PROGRESS,progressHandler);
			}
		}
		
		public function getFileStrem():ByteArray
		{
			return mFileStream.fileByteArray;
		}
		
		public function getAddress():URLRequest
		{
			return mUrl;
		}
	}
}