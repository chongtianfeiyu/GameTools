package utils
{
	import application.comps.RootStage;
	
	import assets.Assets;
	
	import com.coffeebean.swf.typeData.ImgData;
	import com.frameWork.swf.Swf;
	import com.gameabc.ipad.proto.movie.BatchFrameLabelVO;
	import com.gameabc.ipad.proto.movie.BatchFrameVO;
	import com.gameabc.ipad.proto.movie.BatchImageVO;
	import com.gameabc.ipad.proto.movie.BatchVO;
	
	import flash.display.DisplayObject;
	import flash.display.FrameLabel;
	import flash.display.MovieClip;
	import flash.utils.getQualifiedClassName;
	

	public class MovieBatchUtil
	{
		public function MovieBatchUtil()
		{
			
		}
		public static function getMovieBatchInfo(clazzName:String,clazz:Class):BatchVO{
			var mc:MovieClip = new clazz();
			
			RootStage.tempContent.addChild(mc);
			
			//总帧数
			var frameSize:int = mc.totalFrames;
			//所有帧信息
			var frameInfos:Array = [];
			var objectCount:Object = {};
			var childs:Object = {};
			
			for (var j:int = 1; j <= frameSize; j++) 
			{
				mc.gotoAndStop(j);
				
				var childSize:int = mc.numChildren;			//所有的子级数量
				var childInfos:BatchFrameVO = new BatchFrameVO();					//所有子级的信息
				var childInfo:BatchImageVO;						//当前子级的信息
				var child:DisplayObject;					//当前的子级
				var childName:String;						//当前子级名称
				var type:String;							//类型
				var childCount:Object = {};
				
				for (var i:int = 0; i < childSize; i++) 
				{
					child = mc.getChildAt(i) as DisplayObject;
					childName = getQualifiedClassName(child);
					var imageinfo:ImgData = ImageUtil.getImageInfo(Assets.swfUtil.getClass(childName))
					type = SwfUtil.getChildType(childName);
					//组件类型
					if(type == null || type != Swf.dataKey_Image)
					{
						continue;
					}
					
					
					//子级的详细信息
					childInfo =new BatchImageVO();
					childInfo.name = childName;
					childInfo.x = child.x ;
					childInfo.y = child.y;
					if(imageinfo.pivotX!=0)
					  childInfo.pivotX = imageinfo.pivotX;
					if(imageinfo.pivotY!=0)
					  childInfo.pivotY = imageinfo.pivotY;
					if(child.scaleX!=1)
					 childInfo.scaleX = child.scaleX;
					if(child.scaleY!=1)
					 childInfo.scaleY = child.scaleY;
					var skew:Number = MatrixUtil.getSkewX(child.transform.matrix)
					if(skew!=0)	childInfo.skewX = skew;
					skew = MatrixUtil.getSkewY(child.transform.matrix)
					if(skew!=0)	childInfo.skewY = skew;
					if(child.alpha!=1) childInfo.alpha = child.alpha;
					//加入子级信息
					childInfos.image.push(childInfo);
				}
				
				//加载入帧信息
				frameInfos.push(childInfos);
				
//				for(childName in childCount)
//				{
//					objectCount[childName] = childs[childName].length;
//				}
			}
			
//			for(var key:String in objectCount)
//			{
//				objectCount[key] = [SwfUtil.getChildType(key),objectCount[key]];
//			}
			
			var frameLabels:Array = mc.currentLabels;			//所有的labels
			var labelSize:int = frameLabels.length;				
			
			var frameLabel:FrameLabel;
			var batchFrameLabel:BatchFrameLabelVO;
			var labels:Array = [];
			for (var k:int = 0; k < labelSize; k++) 
			{
				frameLabel = frameLabels[k];
				batchFrameLabel = new BatchFrameLabelVO();
				mc.gotoAndStop(frameLabel.name);
				batchFrameLabel.beginFrame = frameLabel.frame-1;
				batchFrameLabel.label = frameLabel.name
				labels.push(batchFrameLabel);
				if(k > 0) //不是第一帧
				{
					labels[k-1].endFrame = frameLabel.frame-2;
				}
				
				//最后一帧
				if(k == (labelSize-1))
				{
					batchFrameLabel.endFrame = mc.totalFrames-1;
				}
			}
			
			
		  var movieClipVO:BatchVO = new BatchVO();
		  movieClipVO.fps = 24;
		  movieClipVO.frames = frameInfos;
		  movieClipVO.scale = Util.swfScale.toString();
		  movieClipVO.frameLabels = labels;
		  RootStage.tempContent.removeChild(mc);
			return movieClipVO;
//			{
//				frames:frameInfos,
//				labels:labels,
//				objCount:objectCount,
//				loop:((Assets.getTempData(clazzName) == null) ? true : Assets.getTempData(clazzName))
//			};
		}
		public static function getMovieBatchImageNames(movieClipVO:BatchVO):Array
		{
			var arr:Array = [];
			for(var i:int=0;i<movieClipVO.frames.length;i++)
			{
				var frameInfos:BatchFrameVO = movieClipVO.frames[i]
				for(var j:int=0;j<frameInfos.image.length;j++)
				{
					var imagevo:BatchImageVO = frameInfos.image[j];
					if(arr.indexOf(imagevo.name)==-1)
					{
						arr.push(imagevo.name);
					}
				}
			}
			return arr;
		}
	}
}