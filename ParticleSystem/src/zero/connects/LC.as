/***
LC
创建人：ZЁЯ¤　身高：168cm+；体重：57kg+；已婚（单身美女们没机会了~~）；最爱的运动：睡觉；格言：路见不平，拔腿就跑。QQ：358315553。
创建时间：2013年07月18日 18:43:43
简要说明：这家伙很懒什么都没写。
用法举例：这家伙还是很懒什么都没写。
*/

package zero.connects{
	import flash.net.LocalConnection;

	public class LC extends LocalConnection{
		
		private var onUpdateConfig:Function;
		
		public function LC(connName:String,_onUpdateConfig:Function){
			this.allowDomain("*");
			this.allowInsecureDomain("*");
			this.connect(connName);
			onUpdateConfig=_onUpdateConfig;
		}
		public function updateConfig(configStr:String):void{
			if(onUpdateConfig==null){
			}else{
				onUpdateConfig(new XML(configStr));
			}
		}
	}
}