/***
optionsXML
创建人：ZЁЯ¤　身高：168cm+；体重：57kg+；已婚（单身美女们没机会了~~）；最爱的运动：睡觉；格言：路见不平，拔腿就跑。QQ：358315553。
创建时间：2013年07月17日 18:22:01
简要说明：这家伙很懒什么都没写。
用法举例：这家伙还是很懒什么都没写。
*/

package zero{
	public var optionsXML:XML = null;
//		<options>
//			<items>
//				<items>
//					<items cn="连接（直接调节实际项目中用到的粒子效果）">
//						<connectPane/>
//					</items>
//					<items cn="预置（保存好不容易调节好的粒子效果）">
//						<settingPane/>
//					</items>
//					<items cn="常规（粒子效果的一般参数）">
//						<item name="maxParticles" type="int" cn="粒子数量" min="1" max="1000" default="500"/>
//						<item name="particleLifeSpan" type="number" cn="生命周期" min="0" max="10" default="2"/>
//						<item name="particleLifespanVariance" type="number" cn="生命周期浮动范围" min="0" max="10" default="2"/>
//						<item name="startParticleSize" type="number" cn="开始大小" min="0" max="200" default="70"/>
//						<item name="startParticleSizeVariance" type="number" cn="开始大小浮动范围" min="0" max="200" default="50"/>
//						<item name="finishParticleSize" type="number" cn="结束大小" min="0" max="200" default="10"/>
//						<item name="FinishParticleSizeVariance" type="number" cn="结束大小浮动范围" min="0" max="200" default="5"/>
//						<item name="angle" type="number" cn="发射角度" min="0" max="360" default="270"/>
//						<item name="angleVariance" type="number" cn="发射角度浮动范围" min="0" max="360" default="2"/>
//						<item name="rotationStart" type="number" cn="开始旋转度" min="0" max="360" default="0"/>
//						<item name="rotationStartVariance" type="number" cn="开始旋转度浮动范围" min="0" max="360" default="0"/>
//						<item name="rotationEnd" type="number" cn="结束旋转度" min="0" max="360" default="0"/>
//						<item name="rotationEndVariance" type="number" cn="结束旋转度浮动范围" min="0" max="360" default="0"/>
//					</items>
//				</items>
//				<items>
//					<items cn="粒子颜色（粒子效果的颜色变化）">
//						<item name="startColor" type="color" cn="起始颜色" default="0xaaff5500"/>
//						<item name="startColorVariance" type="color" cn="起始颜色浮动范围" default="0x00000000"/>
//						<item name="finishColor" type="color" cn="结束颜色" default="0x00ff5500"/>
//						<item name="finishColorVariance" type="color" cn="结束颜色浮动范围" default="0x00000000"/>
//					</items>
//					<items cn="混合函数（其实我也没搞懂这是啥）">
//						<item name="blendFuncSource" type="select" cn="来源" default="770" dataProvider='[{"label":"Zero","data":0},{"label":"One","data":1},{"label":"Src","data":768},{"label":"One - Src","data":769},{"label":"Src Alpha","data":770},{"label":"One - Src Alpha","data":771},{"label":"Dst Alpha","data":772},{"label":"One - Dst Alpha","data":773},{"label":"Dst Color","data":774},{"label":"One - Dst Color","data":775}]'/>
//						<item name="blendFuncDestination" type="select" cn="目标" default="1" dataProvider='[{"label":"Zero","data":0},{"label":"One","data":1},{"label":"Src","data":768},{"label":"One - Src","data":769},{"label":"Src Alpha","data":770},{"label":"One - Src Alpha","data":771},{"label":"Dst Alpha","data":772},{"label":"One - Dst Alpha","data":773},{"label":"Dst Color","data":774},{"label":"One - Dst Color","data":775}]'/>
//					</items>
//					<items cn="发射器（发射器）">
//						<item name="emitterType" type="select" cn="类型" dataProvider='[{"label":"重力发射器","data":0},{"label":"径向发射器","data":1}]'>
//							<items data="0">
//								<item name="sourcePositionVariance.x" type="number" cn="X浮动范围" min="0" max="1000" default="0"/>
//								<item name="sourcePositionVariance.y" type="number" cn="Y浮动范围" min="0" max="1000" default="0"/>
//								<item name="speed" type="number" cn="速度" min="0" max="500" default="100"/>
//								<item name="speedVariance" type="number" cn="速度浮动范围" min="0" max="500" default="30"/>
//								<item name="gravity.x" type="number" cn="重力X" min="-500" max="500" default="0"/>
//								<item name="gravity.y" type="number" cn="重力Y" min="-500" max="500" default="0"/>
//								<item name="radialAcceleration" type="number" cn="径向加速度" min="-400" max="400" default="0"/>
//								<item name="radialAccelVariance" type="number" cn="径向加速度浮动范围" min="0" max="500" default="0"/>
//								<item name="tangentialAcceleration" type="number" cn="切向加速度" min="-400" max="400" default="0"/>
//								<item name="tangentialAccelVariance" type="number" cn="切向加速度浮动范围" min="0" max="500" default="0"/>
//							</items>
//							<items data="1">
//								<item name="maxRadius" type="number" cn="最大半径" min="0" max="500" default="100"/>
//								<item name="maxRadiusVariance" type="number" cn="最大半径浮动范围" min="0" max="500" default="0"/>
//								<item name="minRadius" type="number" cn="最小半径" min="0" max="500" default="0"/>
//								<item name="rotatePerSecond" type="number" cn="旋转速度" min="-360" max="360" default="0"/>
//								<item name="rotatePerSecondVariance" type="number" cn="旋转速度浮动范围" min="0" max="360" default="0"/>
//							</items>
//						</item>
//					</items>
//				</items>
//				<items>
//					<items cn="纹理（粒子的形状）">
//						<texturePane/>
//					</items>
//					<items cn="配置文件（其实就是个xml）">
//						<configPane/>
//					</items>
//				</items>
//			</items>
//			<images>
//				<image cn="圆形" src="image/circle.png"/>
//				<image cn="星形" src="image/star.png"/>
//				<image cn="斑点" src="image/blob.png"/>
//				<image cn="心形" src="image/heart.png"/>
//				<image cn="文字" src="image/text.png"/>
//			</images>
//			<settings>
//				<setting name="默认" texture="圆形" emitterX="150" emitterY="343">
//				  <particleEmitterConfig>
//					<maxParticles value="500"/>
//					<particleLifeSpan value="2"/>
//					<particleLifespanVariance value="2"/>
//					<startParticleSize value="70"/>
//					<startParticleSizeVariance value="50"/>
//					<finishParticleSize value="10"/>
//					<FinishParticleSizeVariance value="5"/>
//					<angle value="270"/>
//					<angleVariance value="2"/>
//					<rotationStart value="0"/>
//					<rotationStartVariance value="0"/>
//					<rotationEnd value="0"/>
//					<rotationEndVariance value="0"/>
//					<startColor alpha="0.64" red="1" green="0.31" blue="0"/>
//					<startColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<finishColor alpha="0" red="1" green="0.31" blue="0"/>
//					<finishColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<blendFuncSource value="770"/>
//					<blendFuncDestination value="1"/>
//					<emitterType value="0"/>
//					<sourcePositionVariance x="0" y="0"/>
//					<speed value="100"/>
//					<speedVariance value="30"/>
//					<gravity x="0" y="0"/>
//					<radialAcceleration value="0"/>
//					<radialAccelVariance value="0"/>
//					<tangentialAcceleration value="0"/>
//					<tangentialAccelVariance value="0"/>
//					<maxRadius value="100"/>
//					<maxRadiusVariance value="0"/>
//					<minRadius value="0"/>
//					<rotatePerSecond value="0"/>
//					<rotatePerSecondVariance value="0"/>
//				  </particleEmitterConfig>
//				</setting>
//				<setting name="大火" texture="圆形" emitterX="150" emitterY="343">
//				  <particleEmitterConfig>
//					<maxParticles value="500"/>
//					<particleLifeSpan value="2"/>
//					<particleLifespanVariance value="2"/>
//					<startParticleSize value="70"/>
//					<startParticleSizeVariance value="50"/>
//					<finishParticleSize value="10"/>
//					<FinishParticleSizeVariance value="5"/>
//					<angle value="270"/>
//					<angleVariance value="2"/>
//					<rotationStart value="0"/>
//					<rotationStartVariance value="0"/>
//					<rotationEnd value="0"/>
//					<rotationEndVariance value="0"/>
//					<startColor alpha="0.64" red="1" green="0.31" blue="0"/>
//					<startColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<finishColor alpha="0" red="1" green="0.31" blue="0"/>
//					<finishColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<blendFuncSource value="770"/>
//					<blendFuncDestination value="1"/>
//					<emitterType value="0"/>
//					<sourcePositionVariance x="100" y="0"/>
//					<speed value="100"/>
//					<speedVariance value="30"/>
//					<gravity x="0" y="0"/>
//					<radialAcceleration value="0"/>
//					<radialAccelVariance value="0"/>
//					<tangentialAcceleration value="0"/>
//					<tangentialAccelVariance value="0"/>
//					<maxRadius value="100"/>
//					<maxRadiusVariance value="0"/>
//					<minRadius value="0"/>
//					<rotatePerSecond value="0"/>
//					<rotatePerSecondVariance value="0"/>
//				  </particleEmitterConfig>
//				</setting>
//				<setting name="发散火焰" texture="圆形" emitterX="150" emitterY="250">
//				<particleEmitterConfig>
//					<maxParticles value="500"/>
//					  <particleLifeSpan value="2"/>
//					  <particleLifespanVariance value="2"/>
//					  <startParticleSize value="70"/>
//					  <startParticleSizeVariance value="50"/>
//					  <finishParticleSize value="10"/>
//					  <FinishParticleSizeVariance value="5"/>
//					  <angle value="270"/>
//					  <angleVariance value="360"/>
//					  <rotationStart value="0"/>
//					  <rotationStartVariance value="0"/>
//					  <rotationEnd value="0"/>
//					  <rotationEndVariance value="0"/>
//					  <startColor alpha="0.62" red="1" green="0.29" blue="0"/>
//					  <startColorVariance alpha="0" red="0" green="0" blue="0"/>
//					  <finishColor alpha="0" red="1" green="0.29" blue="0"/>
//					  <finishColorVariance alpha="0" red="0" green="0" blue="0"/>
//					  <blendFuncSource value="770"/>
//					  <blendFuncDestination value="1"/>
//					  <emitterType value="0"/>
//					  <sourcePositionVariance x="0" y="0"/>
//					  <speed value="100"/>
//					  <speedVariance value="30"/>
//					  <gravity x="0" y="0"/>
//					  <radialAcceleration value="0"/>
//					  <radialAccelVariance value="0"/>
//					  <tangentialAcceleration value="0"/>
//					  <tangentialAccelVariance value="0"/>
//					  <maxRadius value="100"/>
//					  <maxRadiusVariance value="0"/>
//					  <minRadius value="0"/>
//					  <rotatePerSecond value="0"/>
//					  <rotatePerSecondVariance value="0"/>
//					</particleEmitterConfig>
//				</setting>
//				<setting name="星星喷泉" texture="星形" emitterX="150" emitterY="400">
//				  <particleEmitterConfig>
//					<maxParticles value="1000"/>
//					<particleLifeSpan value="2"/>
//					<particleLifespanVariance value="0"/>
//					<startParticleSize value="30"/>
//					<startParticleSizeVariance value="20"/>
//					<finishParticleSize value="0"/>
//					<FinishParticleSizeVariance value="0"/>
//					<angle value="270"/>
//					<angleVariance value="30"/>
//					<rotationStart value="0"/>
//					<rotationStartVariance value="360"/>
//					<rotationEnd value="0"/>
//					<rotationEndVariance value="360"/>
//					<startColor alpha="1" red="1" green="1" blue="1"/>
//					<startColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<finishColor alpha="1" red="0" green="0" blue="1"/>
//					<finishColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<blendFuncSource value="770"/>
//					<blendFuncDestination value="1"/>
//					<emitterType value="0"/>
//					<sourcePositionVariance x="0" y="0"/>
//					<speed value="500"/>
//					<speedVariance value="30"/>
//					<gravity x="0" y="500"/>
//					<radialAcceleration value="0"/>
//					<radialAccelVariance value="0"/>
//					<tangentialAcceleration value="0"/>
//					<tangentialAccelVariance value="0"/>
//					<maxRadius value="100"/>
//					<maxRadiusVariance value="0"/>
//					<minRadius value="0"/>
//					<rotatePerSecond value="0"/>
//					<rotatePerSecondVariance value="0"/>
//				  </particleEmitterConfig>
//				</setting>
//				<setting name="DNA文字" texture="文字" emitterX="150" emitterY="480">
//				  <particleEmitterConfig>
//					<maxParticles value="300"/>
//					<particleLifeSpan value="2"/>
//					<particleLifespanVariance value="0.1"/>
//					<startParticleSize value="200"/>
//					<startParticleSizeVariance value="0"/>
//					<finishParticleSize value="100"/>
//					<FinishParticleSizeVariance value="0"/>
//					<angle value="270"/>
//					<angleVariance value="0"/>
//					<rotationStart value="0"/>
//					<rotationStartVariance value="0"/>
//					<rotationEnd value="360"/>
//					<rotationEndVariance value="0"/>
//					<startColor alpha="1" red="1" green="0.6" blue="0"/>
//					<startColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<finishColor alpha="1" red="1" green="0" blue="0"/>
//					<finishColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<blendFuncSource value="768"/>
//					<blendFuncDestination value="1"/>
//					<emitterType value="0"/>
//					<sourcePositionVariance x="0" y="0"/>
//					<speed value="300"/>
//					<speedVariance value="0"/>
//					<gravity x="0" y="0"/>
//					<radialAcceleration value="0"/>
//					<radialAccelVariance value="0"/>
//					<tangentialAcceleration value="0"/>
//					<tangentialAccelVariance value="0"/>
//					<maxRadius value="100"/>
//					<maxRadiusVariance value="0"/>
//					<minRadius value="0"/>
//					<rotatePerSecond value="0"/>
//					<rotatePerSecondVariance value="0"/>
//				  </particleEmitterConfig>
//				</setting>
//				<setting name="下雪" texture="斑点" emitterX="150" emitterY="0">
//				  <particleEmitterConfig>
//					<maxParticles value="1000"/>
//					<particleLifeSpan value="5"/>
//					<particleLifespanVariance value="0"/>
//					<startParticleSize value="10"/>
//					<startParticleSizeVariance value="10"/>
//					<finishParticleSize value="10"/>
//					<FinishParticleSizeVariance value="10"/>
//					<angle value="90"/>
//					<angleVariance value="0"/>
//					<rotationStart value="0"/>
//					<rotationStartVariance value="360"/>
//					<rotationEnd value="0"/>
//					<rotationEndVariance value="360"/>
//					<startColor alpha="0.6" red="1" green="1" blue="1"/>
//					<startColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<finishColor alpha="0" red="1" green="1" blue="1"/>
//					<finishColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<blendFuncSource value="770"/>
//					<blendFuncDestination value="1"/>
//					<emitterType value="0"/>
//					<sourcePositionVariance x="200" y="0"/>
//					<speed value="50"/>
//					<speedVariance value="10"/>
//					<gravity x="2" y="0"/>
//					<radialAcceleration value="0"/>
//					<radialAccelVariance value="0"/>
//					<tangentialAcceleration value="0"/>
//					<tangentialAccelVariance value="0"/>
//					<maxRadius value="100"/>
//					<maxRadiusVariance value="0"/>
//					<minRadius value="0"/>
//					<rotatePerSecond value="0"/>
//					<rotatePerSecondVariance value="0"/>
//				  </particleEmitterConfig>
//				</setting>
//				<setting name="漩涡" texture="圆形" emitterX="170" emitterY="250">
//				  <particleEmitterConfig>
//					<maxParticles value="300"/>
//					<particleLifeSpan value="2"/>
//					<particleLifespanVariance value="0.1"/>
//					<startParticleSize value="50"/>
//					<startParticleSizeVariance value="0"/>
//					<finishParticleSize value="0"/>
//					<FinishParticleSizeVariance value="0"/>
//					<angle value="0"/>
//					<angleVariance value="0"/>
//					<rotationStart value="0"/>
//					<rotationStartVariance value="0"/>
//					<rotationEnd value="0"/>
//					<rotationEndVariance value="0"/>
//					<startColor alpha="1" red="1" green="0.6" blue="0"/>
//					<startColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<finishColor alpha="1" red="1" green="0" blue="0"/>
//					<finishColorVariance alpha="0" red="0" green="0" blue="0"/>
//					<blendFuncSource value="768"/>
//					<blendFuncDestination value="1"/>
//					<emitterType value="1"/>
//					<sourcePositionVariance x="0" y="0"/>
//					<speed value="300"/>
//					<speedVariance value="0"/>
//					<gravity x="0" y="0"/>
//					<radialAcceleration value="0"/>
//					<radialAccelVariance value="0"/>
//					<tangentialAcceleration value="0"/>
//					<tangentialAccelVariance value="0"/>
//					<maxRadius value="150"/>
//					<maxRadiusVariance value="10"/>
//					<minRadius value="0"/>
//					<rotatePerSecond value="360"/>
//					<rotatePerSecondVariance value="10"/>
//				  </particleEmitterConfig>
//				</setting>
//			</settings>
//		</options>
}