local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/nnzhonhxin/nnzhongxin/main/nm.lua"))()
local window = library:new("nn中心1.1")
local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "半缝合"
LBL.TextColor3 = Color3.new(155, 155, 155)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
local creds = window:Tab("信息",'18255612747')

local bin = creds:section("采用云端更新",true)
    bin:Label("云端更新")
local bin = creds:section("作者信息",true)
    bin:Label("官群:263575982")
    bin:Label("作者:ghgj")
    
local bin = creds:section("玩家信息",true)

    bin:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
    bin:Label("你的注入器:"..identifyexecutor())
    
    local bin = creds:section("公告(必看)",true)
    bin:Label("更新:河北唐县,内脏与黑火药,俄亥俄州")
    bin:Label("更新时间:6月30日8：57")
    bin:Label("永久免费：免费")
    
local credits = creds:section("关闭",true)

credits:Toggle("缩小", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    credits:Button("关闭UI",function()
    game:GetService("CoreGui")["frosty"]:Destroy()
end)
    
local creds = window:Tab("doors",'18255612747')

local credits = creds:section("脚本&模式",true)

credits:Button("MSdoors",function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
end)
credits:Button("NBdoors(卡密：NB)",function()
    loadstring(game:HttpGet("https://github.com/DocYogurt/DOORS/raw/main/Loader.lua"))()
end)
credits:Button("脚本模式v3",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Script-Mode/main/V3/Main-Scipt"))()
end)
credits:Button("脚本模式V2(只能在普通模式下运行，愚人节不行)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/DOORS-mode/main/ScripV2"))()
end)
local creds = window:Tab("sol’sRNG",'18255612747')
local credits = creds:section("script",true)
credits:Button("script1",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/upd/main/rng"))()
end)
credits:Button("AL sol’sRNG",function()
    AL = "制作人员 之前风（AL）"loadstring(game:HttpGet("https://raw.githubusercontent.com/123hubd7gh/123hubd7gh/main/Sol's%20RNG"))()
end)
local creds = window:Tab("其他脚本",'18255612747')
local credits = creds:section("脚本",true)
credits:Button("情云",function()
    loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
end)
credits:Button("nn中心",function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\100\104\100\98\120\117\98\47\110\110\115\105\101\106\119\47\109\97\105\110\47\71\85\73\89\68\83\83\46\108\117\97\34\41\41\40\41\10")()
end)
credits:Button("培根脚本",function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\115\53\55\48\89\70\118\102"))()
end)
credits:Button("小凌中心",function()
    XiaoLing = "小凌中心.Cocoe" loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/Xiao-Ling-NEO.UI/main/%E2%82%AA%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83(%E6%96%B0%E7%89%88ui).txt"))("小凌中心")("作者QQ:1211373508")
end)
credits:Button("空脚本V1.3",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/obf_ly24t25P808EpJvZ5v0RKO5SS13Wf1vc1kQun05BDSDc3Dg6wJzN0Vm2ROMgQWSB.lua"))()
end)
credits:Button("导管中心",function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end)
credits:Button("脚本中心1.5",function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
end)
credits:Button("k 1 s特殊版",function()
    getgenv().LS="k1s"loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/llkj/main/ljj.txt"))()
end)
credits:Button("剑客V4(需要加剑客群组)",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
end)

credits:Button("龙脚本(能不能用我不知道)",function()
    loadstring(game:HttpGet("https://shz.al/~longshu/龙脚本"))()
end)
local creds = window:Tab("河北唐县",'18255612747')
local credits = creds:section("脚本",true)
credits:Button("河北唐县autofam",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Tang%20Country.lua"))()
end)
credits:Button("2",function()
    lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
end)
local creds = window:Tab("内脏与黑火药",'18255612747')
local credits = creds:section("脚本",true)
credits:Button("1",function()
    loadstring(game:HttpGet(("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\65\81\84\70\69\72\54\84"),true))()
end)
local creds = window:Tab("俄亥俄州",'18255612747')
local credits = creds:section("脚本",true)
credits:Button("1",function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\99\114\105\112\116\115\46\118\105\115\117\114\117\115\46\100\101\118\47\111\104\105\111\47\115\111\117\114\99\101"))()
end)
