--[[

esse script foi reconstruido totalmente por mim (bazuka) 
eu demorei horas apenas para fazer isso, então deixe meus creditos. 
então, algum de vocês devem estar se perguntando "porque você fez isso"
simples, vingança.
"porque vingança?" porque ele vazou os dados da lolyta e ainda queria vazar a coquette.
por mais que eu não tenho nada haver com a coquette, acho que isso foi uma falta de respeito absurda com a lolyta. 
pois ele praticamente iludiu ela apenas para vazar ela no final..
e se você for a lolyta e estiver vendo isso, saiba que eu gosto mt de vc lolyta.
não sei se e muito cedo para falar isso, mais eu te amo lolyta. 
by: Bazuka.

]]

--[[
Mensagem do sedentoporblood (stephenofc)

no passado eu tambem tive muito problema com a lolyta (ela me odiava praticamente)
mas mesmo assim isso nn anula o que o Zyronis fez,oq ele fez foi errado e ele merece sofrer as consequencias
ainda bem que os dados da lolyta vazados em outubro/novembro Nao chegaram ate ele,afinal ele com crtz iria fazer o pior com isso!!!!!
Lolyta se vc tiver lendo isso eu quero pedir desculpa por oq eu fiz no passado (a gente ficou desentendido e tudo mais),desde que me doxxaram na shnmax eu nunca mais fui o mesmo e agora eu n confio tanto nos outros.

by: stephenofc
]]

local Libary = loadstring(game:HttpGet("https://raw.githubusercontent.com/BRENOPOOF/slapola/refs/heads/main/Main.txt"))()
workspace.FallenPartsDestroyHeight = -math.huge

local Window = Libary:MakeWindow({
    Title = "Zyronis Hub",
    SubTitle = "By Zyronis",
    LoadText = "Carregando Zyronis Hub",
    Flags = "ZyronisHub"
})

-- زر التصغير
Window:AddMinimizeButton({
    Button = {
        Image = 'rbxassetid://76560659040388',
        BackgroundTransparency = 0,
        Size = UDim2.new(0, 35, 0, 35),
    },
    Corner = {
        CornerRadius = UDim.new(0, 100),
    },
})

-- ══════════════════════════════════════════
-- تبويب المعلومات (Info)
-- ══════════════════════════════════════════
local InfoTab = Window:MakeTab({ Title = "Info", Icon = "rbxassetid://15309138473" })

InfoTab:AddSection({ "Informações do Script" })
InfoTab:AddParagraph({ "Owner / Developer:", "Zyronis" })
InfoTab:AddParagraph({ "Collaboration:", "Lolytadev, Rick/Shadow and Bazuka" })
InfoTab:AddParagraph({ "Leaked by:", "Bazuka (eu recriei tudo) se for vazar, deixe meus creditos." })
InfoTab:AddParagraph({ "You are using:", "Zyronis Hub Brookhaven " })
InfoTab:AddParagraph({"Your executor:", executor})

InfoTab:AddSection({ "Rejoin" })
InfoTab:AddButton({
    Name = "Rejoin",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end
})

-- ══════════════════════════════════════════
-- تبويب الأسماء (Names)
-- ══════════════════════════════════════════
local NamesTab = Window:MakeTab({ Title = "🏷️ Nomes", Icon = "rbxassetid://1234567890" })

-- متغيرات نظام الأسماء
_G.FLOREX_NameAnim_Toggle = false
_G.FLOREX_Anim_Speed = 2
_G.Names_List = {"", "", "", "", ""}
_G.Bios_List = {"", "", "", "", ""}
_G.FLOREX_Rainbow_Toggle = false
_G.FLOREX_Rainbow_Speed = 5
_G.FLOREX_RedBlack_Toggle = false
_G.FLOREX_Neon_Toggle = false
_G.FLOREX_GoldWhite_Toggle = false
_G.FLOREX_PurplePink_Toggle = false
_G.FLOREX_GreenBlack_Toggle = false
_G.FLOREX_Fire_Toggle = false
_G.FLOREX_Ice_Toggle = false
_G.FLOREX_Vampire_Toggle = false
_G.FLOREX_Galaxy_Toggle = false
_G.FLOREX_Thunder_Toggle = false
_G.FLOREX_Emerald_Toggle = false
_G.FLOREX_Magma_Toggle = false
_G.FLOREX_Toxic_Toggle = false

local function ResetToggles()
    _G.FLOREX_Rainbow_Toggle = false
    _G.FLOREX_RedBlack_Toggle = false
    _G.FLOREX_Neon_Toggle = false
    _G.FLOREX_GoldWhite_Toggle = false
    _G.FLOREX_PurplePink_Toggle = false
    _G.FLOREX_GreenBlack_Toggle = false
    _G.FLOREX_Fire_Toggle = false
    _G.FLOREX_Ice_Toggle = false
    _G.FLOREX_Vampire_Toggle = false
    _G.FLOREX_Galaxy_Toggle = false
    _G.FLOREX_Thunder_Toggle = false
    _G.FLOREX_Emerald_Toggle = false
    _G.FLOREX_Magma_Toggle = false
    _G.FLOREX_Toxic_Toggle = false
end

NamesTab:AddSection({ "✏️ Mudar Nome e Bio Manualmente" })

NamesTab:AddInput({
    Name = "Digite o RP Name",
    Placeholder = "Digite o nome aqui...",
    Callback = function(Value)
        pcall(function()
            local RE = ReplicatedStorage:FindFirstChild("RE")
            if RE then 
                local remote = RE:FindFirstChild("1RPNam1eTex1t")
                if remote then
                    remote:FireServer("RolePlayName", Value)
                end
            end
        end)
    end
})

NamesTab:AddInput({
    Name = "Digite o Bio",
    Placeholder = "Digite a bio aqui...",
    Callback = function(Value)
        pcall(function()
            local RE = ReplicatedStorage:FindFirstChild("RE")
            if RE then 
                local remote = RE:FindFirstChild("1RPNam1eTex1t")
                if remote then
                    remote:FireServer("RolePlayBio", Value)
                end
            end
        end)
    end
})

NamesTab:AddSection({ "🔄 Rotação Automática" })

NamesTab:AddToggle({
    Name = "Ativar Rotação Automática",
    Default = false,
    Callback = function(Value)
        _G.FLOREX_NameAnim_Toggle = Value
    end
})

NamesTab:AddSlider({
    Name = "Velocidade da Rotação (segundos)",
    Min = 1,
    Max = 30,
    Default = 2,
    Color = Color3.fromRGB(255, 50, 100),
    Increment = 1,
    ValueName = "seg",
    Callback = function(Value)
        _G.FLOREX_Anim_Speed = Value
    end
})

NamesTab:AddSection({ "📝 Nomes para Rotação (5)" })

for i = 1, 5 do
    NamesTab:AddInput({
        Name = "Nome " .. i,
        Placeholder = "Digite o nome " .. i .. "...",
        Callback = function(Value)
            _G.Names_List[i] = Value
        end
    })
end

NamesTab:AddSection({ "📋 Bios para Rotação (5)" })

for i = 1, 5 do
    NamesTab:AddInput({
        Name = "Bio " .. i,
        Placeholder = "Digite a bio " .. i .. "...",
        Callback = function(Value)
            _G.Bios_List[i] = Value
        end
    })
end

NamesTab:AddSection({ "🌈 Efeitos de Cores" })

NamesTab:AddToggle({
    Name = "Sistema Arco-Íris 🌈",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Rainbow_Toggle = Value
    end
})

NamesTab:AddSlider({
    Name = "Velocidade do Arco-Íris",
    Min = 1,
    Max = 10,
    Default = 5,
    Color = Color3.fromRGB(255, 0, 255),
    Increment = 1,
    ValueName = "vel",
    Callback = function(Value)
        _G.FLOREX_Rainbow_Speed = Value
    end
})

NamesTab:AddToggle({
    Name = "Vermelho e Preto 🔥",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_RedBlack_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Azul e Branco ⚡",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Neon_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Dourado e Branco 👑",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_GoldWhite_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Roxo e Rosa 💜",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_PurplePink_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Verde e Preto 🟢",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_GreenBlack_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Efeito Fogo 🔥",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Fire_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Efeito Gelo ❄️",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Ice_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Efeito Vampiro 🧛",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Vampire_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Efeito Galáxia 🌌",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Galaxy_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Efeito Trovão ⚡",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Thunder_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Efeito Esmeralda 💎",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Emerald_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Efeito Magma 🌋",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Magma_Toggle = Value
    end
})

NamesTab:AddToggle({
    Name = "Efeito Tóxico 🧪",
    Default = false,
    Callback = function(Value)
        ResetToggles()
        _G.FLOREX_Toxic_Toggle = Value
    end
})

-- حلقة الأسماء المتحركة
task.spawn(function()
    local index = 1
    while true do
        if _G.FLOREX_NameAnim_Toggle then
            pcall(function()
                local RE = ReplicatedStorage:FindFirstChild("RE")
                if RE then
                    local remote = RE:FindFirstChild("1RPNam1eTex1t")
                    if remote then
                        local nText = _G.Names_List[index]
                        local bText = _G.Bios_List[index]
                        if nText and nText ~= "" then remote:FireServer("RolePlayName", nText) end
                        if bText and bText ~= "" then remote:FireServer("RolePlayBio", bText) end
                        index = (index % 5) + 1
                    end
                end
            end)
        end
        task.wait(_G.FLOREX_Anim_Speed)
    end
end)

-- حلقة الألوان
task.spawn(function()
    while true do
        pcall(function()
            local RE = ReplicatedStorage:FindFirstChild("RE")
            local colorRE = RE and RE:FindFirstChild("1RPNam1eColo1r")
            if colorRE then
                local color = nil
                if _G.FLOREX_Rainbow_Toggle then
                    color = Color3.fromHSV((tick() * (_G.FLOREX_Rainbow_Speed / 5)) % 1, 1, 1)
                elseif _G.FLOREX_RedBlack_Toggle then
                    color = Color3.fromRGB(255,0,0):Lerp(Color3.fromRGB(0,0,0), math.abs(math.sin(tick()*2)))
                elseif _G.FLOREX_Neon_Toggle then
                    color = Color3.fromRGB(0,170,255):Lerp(Color3.fromRGB(255,255,255), math.abs(math.cos(tick()*2)))
                elseif _G.FLOREX_GoldWhite_Toggle then
                    color = Color3.fromRGB(255,215,0):Lerp(Color3.fromRGB(255,255,255), math.abs(math.sin(tick()*1.5)))
                elseif _G.FLOREX_PurplePink_Toggle then
                    color = Color3.fromRGB(138,43,226):Lerp(Color3.fromRGB(255,20,147), math.abs(math.cos(tick()*2)))
                elseif _G.FLOREX_GreenBlack_Toggle then
                    color = Color3.fromRGB(0,255,0):Lerp(Color3.fromRGB(0,0,0), math.abs(math.sin(tick()*3)))
                elseif _G.FLOREX_Fire_Toggle then
                    color = Color3.fromRGB(255,0,0):Lerp(Color3.fromRGB(255,165,0), math.abs(math.sin(tick()*3)))
                elseif _G.FLOREX_Ice_Toggle then
                    color = Color3.fromRGB(135,206,235):Lerp(Color3.fromRGB(255,255,255), math.abs(math.sin(tick()*1.5)))
                elseif _G.FLOREX_Thunder_Toggle then
                    color = Color3.fromRGB(255,255,255):Lerp(Color3.fromRGB(0,255,255), math.abs(math.sin(tick()*10)))
                elseif _G.FLOREX_Vampire_Toggle then
                    color = Color3.fromRGB(139,0,0):Lerp(Color3.fromRGB(0,0,0), math.abs(math.sin(tick()*2)))
                elseif _G.FLOREX_Galaxy_Toggle then
                    color = Color3.fromRGB(75,0,130):Lerp(Color3.fromRGB(0,0,255), math.abs(math.cos(tick()*1.2)))
                elseif _G.FLOREX_Emerald_Toggle then
                    color = Color3.fromRGB(0,255,100):Lerp(Color3.fromRGB(255,215,0), math.abs(math.sin(tick()*2)))
                elseif _G.FLOREX_Magma_Toggle then
                    color = Color3.fromRGB(255,69,0):Lerp(Color3.fromRGB(0,0,0), math.abs(math.sin(tick()*2)))
                elseif _G.FLOREX_Toxic_Toggle then
                    color = Color3.fromRGB(173,255,47):Lerp(Color3.fromRGB(138,43,226), math.abs(math.sin(tick()*2)))
                end
                if color then
                    colorRE:FireServer("PickingRPNameColor", color)
                    colorRE:FireServer("PickingRPBioColor", color)
                end
            end
        end)
        task.wait(0.1)
    end
end)
