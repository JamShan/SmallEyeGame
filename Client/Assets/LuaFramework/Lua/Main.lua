--主入口函数。从这里开始lua逻辑
function Main()
	-- 如果不增加路径支持我们就得全路径访问才行
	-- require "F:/work/unity/SmallEyeGame/Data/ULua/System/GameMain";

	-- TODO 增加路径支持 这个路径就是我们以后的lua脚本的根路径
	package.path = package.path..";F:/work/unity/SmallEyeGame/?.lua"
	require "Data/ULua/System/CommonRequire";
end

--场景切换通知
function OnLevelWasLoaded(level)
	collectgarbage("collect")
	Time.timeSinceLevelLoad = 0
end

function OnApplicationQuit()
end