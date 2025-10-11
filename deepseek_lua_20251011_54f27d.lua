local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Enemies = workspace:WaitForChild("Enemies")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")
local PlaceId = game.PlaceId

local SEA1_PLACE_ID = 2753915549
local SEA2_PLACE_ID = 4442272183
local SEA3_PLACE_ID = 7449423635

local jobId = tostring(game.JobId)
local joinScript = string.format(
    'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, "%s", game.Players.LocalPlayer)',
    jobId
)

-- Webhook URLs từ input
local WebhookURLs = {
    Mirage = "",
    Kitsune = "",
    Prehistoric = "",
    FullMoon = "",
    NearFullMoon = "",
    Indra = "",
    DoughKing = "",
    CakePrince = "",
    Tyrant = "",
    Darkbeard = "",
    SoulReaper = "",
    CursedCaptain = "",
    LegendarySword = ""
}

-- // Ui Configuration
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/Beta.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Lonely Hub Webhook Checker BF [Free]",
    SubTitle = "by LongHip12",
    Search = true,
    Icon = "webhook",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl,
    UserInfo = true,
    UserInfoTop = false,
    UserInfoTitle = game:GetService("Players").LocalPlayer.DisplayName,
    UserInfoSubtitle = "User",
    UserInfoSubtitleColor = Color3.fromRGB(71, 123, 255)
})

local Tabs = {
    If = Window:AddTab({ Title = "Tab Information", Icon = "info"})
    Main = Window:AddTab({ Title = "Tab Webhook", Icon = "webhook" }),
    CD = Window:AddTab({ Title = "Tab Cooldown Webhook", Icon = "clock"}),
    ST = Window:AddTab({ Title = "Tab Status", Icon = "code-xml"}),
    Server = Window:AddTab({ Title = "Tab Server", Icon = "server"}),
    Rate = Window:AddTab({ Title = "Tab Rate", Icon = "star"}),
    Settings = Window:AddTab({ Title = "Tab Settings", Icon = "settings" })
}

local Options = Fluent.Options

--=============================
-- Information
--=============================

Tabs.If:AddParagraph(
        {
            Icon = "party-popper",
            Title = "Lonely Hub",
            Content = "Thank " .. game.Players.LocalPlayer.Name .. " to using script!"
        }
    )

Tabs.If:AddParagraph({
    Icon = "facebook",
    Title = "My Facebook",
    Content = "www.fb.com/longhip7730"
})

Tabs.If:AddParagraph({
    Icon = "youtube",
    Title = "Youtube Channel",
    Content = "@LongHip12"
})

Tabs.If:AddParagraph({
    Icon = "music-2",
    Title = "Tiktok Channel",
    Content = "@hoanglong.hn"
})

Tabs.If:AddParagraph({
    Icon = "music-2",
    Title = "Douyin Channel (Tiktok China)",
    Content = "@LongHip12"
})

Tabs.If:AddParagraph({
    Icon = "message-circle",
    Title = "My Wechat",
    Content = "@LongHip12"
})

Tabs.If:AddParagraph({
    Icon = "database-backup",
    Title = "Discord Server",
    Content = "dsc.gg/lonelyhub"
})

Tabs.If:AddParagraph({
    Icon = "github",
    Title = "Github Account 1",
    Content = "@LongHip2012"
})

Tabs.If:AddParagraph({
    Icon = "github",
    Title = "Github Account 2",
    Content = "@LongHip12"
})
-- Input Webhooks
local Mirage = Tabs.Main:AddInput("Input", {
    Title = "Input Mirage Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Kit = Tabs.Main:AddInput("Input", {
    Title = "Input Kitsune Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Preh = Tabs.Main:AddInput("Input", {
    Title = "Input Prehistoric Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Fmw = Tabs.Main:AddInput("Input", {
    Title = "Input FM Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local NFMW = Tabs.Main:AddInput("Input", {
    Title = "Input Near FM Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local IndraW = Tabs.Main:AddInput("Input", {
    Title = "Input Indra Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Doughw = Tabs.Main:AddInput("Input", {
    Title = "Input Dough King Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Cakew = Tabs.Main:AddInput("Input", {
    Title = "Input Cake Prince Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local TTOKW = Tabs.Main:AddInput("Input", {
    Title = "Input Tyrant Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Darkw = Tabs.Main:AddInput("Input", {
    Title = "Input Darkbeard Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Soulw = Tabs.Main:AddInput("Input", {
    Title = "Input Soul Reaper Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Cscw = Tabs.Main:AddInput("Input", {
    Title = "Input Cursed Captain Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Sww = Tabs.Main:AddInput("Input", {
    Title = "Input Legendary Sword Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

-- Cập nhật webhook URLs từ input
Mirage:OnChanged(function(Value)
    WebhookURLs.Mirage = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Mirage webhook has been updated",
        Duration = 3
    })
end)

Kit:OnChanged(function(Value)
    WebhookURLs.Kitsune = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Kitsune webhook has been updated",
        Duration = 3
    })
end)

Preh:OnChanged(function(Value)
    WebhookURLs.Prehistoric = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Prehistoric webhook has been updated",
        Duration = 3
    })
end)

Fmw:OnChanged(function(Value)
    WebhookURLs.FullMoon = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Full Moon webhook has been updated",
        Duration = 3
    })
end)

NFMW:OnChanged(function(Value)
    WebhookURLs.NearFullMoon = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Near Full Moon webhook has been updated",
        Duration = 3
    })
end)

IndraW:OnChanged(function(Value)
    WebhookURLs.Indra = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Indra webhook has been updated",
        Duration = 3
    })
end)

Doughw:OnChanged(function(Value)
    WebhookURLs.DoughKing = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Dough King webhook has been updated",
        Duration = 3
    })
end)

Cakew:OnChanged(function(Value)
    WebhookURLs.CakePrince = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Cake Prince webhook has been updated",
        Duration = 3
    })
end)

TTOKW:OnChanged(function(Value)
    WebhookURLs.Tyrant = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Tyrant webhook has been updated",
        Duration = 3
    })
end)

Darkw:OnChanged(function(Value)
    WebhookURLs.Darkbeard = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Darkbeard webhook has been updated",
        Duration = 3
    })
end)

Soulw:OnChanged(function(Value)
    WebhookURLs.SoulReaper = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Soul Reaper webhook has been updated",
        Duration = 3
    })
end)

Cscw:OnChanged(function(Value)
    WebhookURLs.CursedCaptain = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Cursed Captain webhook has been updated",
        Duration = 3
    })
end)

Sww:OnChanged(function(Value)
    WebhookURLs.LegendarySword = Value
    Fluent:Notify({
        Title = "Webhook Updated",
        Content = "Legendary Sword webhook has been updated",
        Duration = 3
    })
end)

-- Slider delay với chuyển đổi phút sang giây (mặc định 10 phút)
local COOLDOWN_TIME = 600 -- 10 minutes mặc định (600 giây)

local timeDelay = Tabs.Main:AddSlider("CooldownSlider", {
    Title = "Cooldown Time (minutes)",
    Description = "Thời gian chờ giữa các lần gửi webhook",
    Default = 10,
    Min = 1,
    Max = 30,
    Rounding = 1,
    Callback = function(Value)
        COOLDOWN_TIME = Value * 60 -- Chuyển phút sang giây
        Fluent:Notify({
            Title = "Cooldown Updated",
            Content = "Cooldown time set to " .. Value .. " minutes",
            Duration = 3
        })
    end
})

timeDelay:OnChanged(function(Value)
    COOLDOWN_TIME = Value * 60 -- Chuyển phút sang giây
end)

timeDelay:SetValue(10)

Tabs.Main:AddSection("Webhook Normal", "webhook")

local WebhookNor_2 = Tabs.Main:AddInput("Input", {
    Title = "Input Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local MessWbhkNor_2 = Tabs.Main:AddInput("Input", {
    Title = "Input Message",
    Default = "",
    Placeholder = "Input Message here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

Tabs.Main:AddButton({
    Title = "Send Webhook",
    Description = "Send Message To The Webhook",
    Callback = function()
        Window:Dialog({
            Title = "Information",
            Content = "Are You Want To Send Webhook?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local webhookUrl_2 = WebhookNor_2.Value
                        local message_2 = MessWbhkNor_2.Value
                        
                        if webhookUrl_2 == "" or message_2 == "" then
                            Window:Dialog({
                                Title = "Error",
                                Content = "Please fill in both webhook URL and message!",
                                Buttons = {
                                    {
                                        Title = "OK",
                                        Callback = function()
                                            print("Error: Empty webhook or message")
                                        end
                                    }
                                }
                            })
                            return
                        end
                        
                        -- Tạo payload cho webhook normal
                        local payload_2 = {
                            content = message_2
                        }
                        
                        -- Gửi request đến Discord webhook
                        local success_2, response_2 = pcall(function()
                            return syn.request({
                                Url = webhookUrl_2,
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json"
                                },
                                Body = game:GetService("HttpService"):JSONEncode(payload_2)
                            })
                        end)
                        
                        if success_2 then
                            if response_2.Success then
                                Window:Dialog({
                                    Title = "Success",
                                    Content = "Webhook sent successfully!",
                                    Buttons = {
                                        {
                                            Title = "OK",
                                            Callback = function()
                                                print("Webhook sent successfully")
                                            end
                                        }
                                    }
                                })
                            else
                                Window:Dialog({
                                    Title = "Error",
                                    Content = "Failed to send webhook. Error: " .. response_2.StatusCode,
                                    Buttons = {
                                        {
                                            Title = "OK",
                                            Callback = function()
                                                print("Webhook failed with status: " .. response_2.StatusCode)
                                            end
                                        }
                                    }
                                })
                            end
                        else
                            Window:Dialog({
                                Title = "Error",
                                Content = "Failed to send webhook request",
                                Buttons = {
                                    {
                                        Title = "OK",
                                        Callback = function()
                                            print("Webhook request failed")
                                        end
                                    }
                                }
                            })
                        end
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

Tabs.Main:AddSection("Webhook With Embed", "link")

local Wbhk_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Webhook",
    Default = "",
    Placeholder = "Input Webhook here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Mess_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Message",
    Default = "",
    Placeholder = "Input Message here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local IconUrl_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Icon",
    Default = "",
    Placeholder = "Input Icon Url here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Author_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Author",
    Default = "",
    Placeholder = "Input Author here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local AuthorURL_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Author Url",
    Default = "",
    Placeholder = "Input Author Url here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Title_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Title",
    Default = "",
    Placeholder = "Input Title here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Titleurl_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Title Url",
    Default = "",
    Placeholder = "Input Title Url here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Description_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Description",
    Default = "",
    Placeholder = "Input Desc here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Imageurl_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Image Url",
    Default = "",
    Placeholder = "Input Image Big at the bottom here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local Thumbn_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Thumbnail",
    Default = "",
    Placeholder = "Input image small top right here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local footer_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Footer",
    Default = "",
    Placeholder = "Input Footer here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

local FooterIcon_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Footer Icon",
    Default = "",
    Placeholder = "Input Icon Url here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

Tabs.Main:AddParagraph({
    Icon = "palette",
    Title = "Color Support",
    Content = "Support Hex,Hsv,Color Normal,Decimal And Rgb"
})

Tabs.Main:AddParagraph({
    Icon = "color",
    Title = "Color Normal Support",
    Content = "Support Red, Green, Blue, White,\nBlack, Yellow, Purple, Orange, Pink, Brown, Gray, Cyan, Magenta,\n Lime, Maroon, Navy, Olive, Teal, Silver, Gold\n If You want more pls use color code!"
})

local Color_3 = Tabs.Main:AddInput("Input", {
    Title = "Input Color",
    Default = "",
    Placeholder = "Input Embed Color here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
    end
})

Tabs.Main:AddButton({
    Title = "Send Webhook",
    Description = "Send Message With Embed to the webhook",
    Callback = function()
        Window:Dialog({
            Title = "Information",
            Content = "Are you want to send webhook?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local webhookUrl_3 = Wbhk_3.Value
                        local message_3 = Mess_3.Value
                        
                        if webhookUrl_3 == "" then
                            Window:Dialog({
                                Title = "Error",
                                Content = "Please fill in webhook URL!",
                                Buttons = {
                                    {
                                        Title = "OK",
                                        Callback = function()
                                            print("Error: Empty webhook")
                                        end
                                    }
                                }
                            })
                            return
                        end
                        
                        -- Tạo embed object
                        local embed_3 = {}
                        
                        -- Thêm các trường vào embed nếu có giá trị
                        if Author_3.Value ~= "" then
                            embed_3.author = {
                                name = Author_3.Value,
                                icon_url = IconUrl_3.Value ~= "" and IconUrl_3.Value or nil,
                                url = AuthorURL_3.Value ~= "" and AuthorURL_3.Value or nil
                            }
                        end
                        
                        if Title_3.Value ~= "" then
                            embed_3.title = Title_3.Value
                            embed_3.url = Titleurl_3.Value ~= "" and Titleurl_3.Value or nil
                        end
                        
                        if Description_3.Value ~= "" then
                            embed_3.description = Description_3.Value
                        end
                        
                        if Color_3.Value ~= "" then
    -- Chuyển đổi màu sang số
    local colorValue = Color_3.Value
    local colorNumber = nil
    
    -- Danh sách màu phổ biến
    local colorNames = {
        ["red"] = 0xFF0000,
        ["green"] = 0x00FF00,
        ["blue"] = 0x0000FF,
        ["white"] = 0xFFFFFF,
        ["black"] = 0x000000,
        ["yellow"] = 0xFFFF00,
        ["purple"] = 0x800080,
        ["orange"] = 0xFFA500,
        ["pink"] = 0xFFC0CB,
        ["brown"] = 0xA52A2A,
        ["gray"] = 0x808080,
        ["cyan"] = 0x00FFFF,
        ["magenta"] = 0xFF00FF,
        ["lime"] = 0x00FF00,
        ["maroon"] = 0x800000,
        ["navy"] = 0x000080,
        ["olive"] = 0x808000,
        ["teal"] = 0x008080,
        ["silver"] = 0xC0C0C0,
        ["gold"] = 0xFFD700
    }
    
    -- Kiểm tra tên màu (không phân biệt hoa thường)
    local lowerColor = colorValue:lower()
    if colorNames[lowerColor] then
        colorNumber = colorNames[lowerColor]
    
    -- Kiểm tra định dạng Hex (#RRGGBB)
    elseif colorValue:match("^#%x+$") then
        -- Hex color
        colorNumber = tonumber(colorValue:sub(2), 16)
    
    -- Kiểm tra định dạng RGB (r,g,b)
    elseif colorValue:match("^%d+%s*,%s*%d+%s*,%s*%d+$") then
        local r, g, b = colorValue:match("(%d+)%s*,%s*(%d+)%s*,%s*(%d+)")
        colorNumber = tonumber(r) * 65536 + tonumber(g) * 256 + tonumber(b)
    
    -- Kiểm tra định dạng HSV (h,s,v)
    elseif colorValue:match("^%d+%.?%d*%s*,%s*%d+%.?%d*%s*,%s*%d+%.?%d*$") then
        local h, s, v = colorValue:match("(%d+%.?%d*)%s*,%s*(%d+%.?%d*)%s*,%s*(%d+%.?%d*)")
        h, s, v = tonumber(h), tonumber(s), tonumber(v)
        
        -- Chuyển đổi HSV sang RGB
        local c = v * s
        local x = c * (1 - math.abs((h / 60) % 2 - 1))
        local m = v - c
        
        local r1, g1, b1 = 0, 0, 0
        if h < 60 then
            r1, g1, b1 = c, x, 0
        elseif h < 120 then
            r1, g1, b1 = x, c, 0
        elseif h < 180 then
            r1, g1, b1 = 0, c, x
        elseif h < 240 then
            r1, g1, b1 = 0, x, c
        elseif h < 300 then
            r1, g1, b1 = x, 0, c
        else
            r1, g1, b1 = c, 0, x
        end
        
        local r = math.floor((r1 + m) * 255)
        local g = math.floor((g1 + m) * 255)
        local b = math.floor((b1 + m) * 255)
        colorNumber = r * 65536 + g * 256 + b
    
    -- Kiểm tra số thập phân
    elseif colorValue:match("^%d+$") then
        -- Decimal color
        colorNumber = tonumber(colorValue)
    end
    
    if colorNumber then
        embed_3.color = colorNumber
    else
        Window:Dialog({
            Title = "Warning",
            Content = "Invalid color format! Using default color.",
            Buttons = {
                {
                    Title = "OK",
                    Callback = function()
                        print("Invalid color format: " .. colorValue)
                    end
                }
            }
        })
    end
end
                        
                        if Thumbn_3.Value ~= "" then
                            embed_3.thumbnail = {
                                url = Thumbn_3.Value
                            }
                        end
                        
                        if Imageurl_3.Value ~= "" then
                            embed_3.image = {
                                url = Imageurl_3.Value
                            }
                        end
                        
                        if footer_3.Value ~= "" then
                            embed_3.footer = {
                                text = footer_3.Value,
                                icon_url = FooterIcon_3.Value ~= "" and FooterIcon_3.Value or nil
                            }
                        end
                        
                        -- Tạo payload cho webhook với embed
                        local payload_3 = {
                            content = message_3 ~= "" and message_3 or nil,
                            embeds = {embed_3}
                        }
                        
                        -- Gửi request đến Discord webhook
                        local success_3, response_3 = pcall(function()
                            return syn.request({
                                Url = webhookUrl_3,
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json"
                                },
                                Body = game:GetService("HttpService"):JSONEncode(payload_3)
                            })
                        end)
                        
                        if success_3 then
                            if response_3.Success then
                                Window:Dialog({
                                    Title = "Success",
                                    Content = "Webhook with embed sent successfully!",
                                    Buttons = {
                                        {
                                            Title = "OK",
                                            Callback = function()
                                                print("Webhook with embed sent successfully")
                                            end
                                        }
                                    }
                                })
                            else
                                Window:Dialog({
                                    Title = "Error",
                                    Content = "Failed to send webhook. Error: " .. response_3.StatusCode,
                                    Buttons = {
                                        {
                                            Title = "OK",
                                            Callback = function()
                                                print("Webhook failed with status: " .. response_3.StatusCode)
                                            end
                                        }
                                    }
                                })
                            end
                        else
                            Window:Dialog({
                                Title = "Error",
                                Content = "Failed to send webhook request",
                                Buttons = {
                                    {
                                        Title = "OK",
                                        Callback = function()
                                            print("Webhook request failed")
                                        end
                                    }
                                }
                            })
                        end
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

--================================
-- Server Tab
--================================

local JobIdInput = Tabs.Server:AddInput(
    "Input",
    {
        Title = "Input JobId Normal \n And JobId Lonely",
        Default = "",
        Placeholder = "",
        Numeric = false,
        Finished = false
    }
)

Tabs.Server:AddButton(
    {
        Title = "Clear JobId",
        Description = "",
        Callback = function()
            JobIdInput:Set("")
        end
    }
)

local SpamJoinToggle = Tabs.Server:AddToggle(
    "SpamJoin",
    {
        Title = "Spam Join",
        Default = false
    }
)

-- Hàm chuyển số sang binary string
local function toBinary(num, bits)
    local result = ""
    for i = bits - 1, 0, -1 do
        if num >= 2^i then
            result = result .. "1"
            num = num - 2^i
        else
            result = result .. "0"
        end
    end
    return result
end

-- Hàm giải mã Base64
local function fromBase64(encoded)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    encoded = string.gsub(encoded, '[^'..b..'=]', '')
    
    local result = ""
    local bitPattern = ""
    
    for i = 1, #encoded do
        local char = string.sub(encoded, i, i)
        if char == "=" then break end
        
        local value = string.find(b, char, 1, true) - 1
        bitPattern = bitPattern .. toBinary(value, 6)
    end
    
    for i = 1, #bitPattern, 8 do
        local byteBits = string.sub(bitPattern, i, i + 7)
        if #byteBits == 8 then
            local byte = tonumber(byteBits, 2)
            result = result .. string.char(byte)
        end
    end
    
    return result
end

-- Hàm đọc và ghi danh sách server đã vào
local function getVisitedServers()
    if isfile("NotSameServerLonely.json") then
        local content = readfile("NotSameServerLonely.json")
        local success, data = pcall(function()
            return game:GetService("HttpService"):JSONDecode(content)
        end)
        if success and type(data) == "table" then
            return data
        end
    end
    return {}
end

local function saveVisitedServer(jobId)
    local visitedServers = getVisitedServers()
    table.insert(visitedServers, jobId)
    writefile("NotSameServerLonely.json", game:GetService("HttpService"):JSONEncode(visitedServers))
end

-- Hàm thông báo
local function notify(title, content)
    Fluent:Notify({
        Name = title,
        Content = content,
        Duration = 5
    })
end

-- Hàm xử lý join server
local function processJoin()
    local input = JobIdInput.Value
    
    if input == "" then
        notify("Error", "Please input JobId!")
        return
    end
    
    local jobId = ""
    
    -- ĐỊNH DẠNG 1: Encoded JobId (Lonely-...)
    if string.sub(input, 1, 7) == "Lonely-" then
        local encodedPart = string.sub(input, 8)
        local success, decoded = pcall(function()
            return fromBase64(encodedPart)
        end)
        
        if success and decoded ~= "" then
            jobId = decoded
            print("[Join] Decoded JobId from Lonely-:", jobId)
        else
            notify("Error", "Invalid Encoded JobId")
            return
        end
    
    -- ĐỊNH DẠNG 2: Script Join
    elseif string.find(input, 'InvokeServer%("teleport"') or string.find(input, 'TeleportToPlaceInstance') then
        local pattern = '["\']([a-fA-F0-9%-]+)["\']'
        local extractedJobId = string.match(input, pattern)
        
        if extractedJobId and #extractedJobId == 36 then
            jobId = extractedJobId
            print("[Join] Extracted JobId from script:", jobId)
        else
            notify("Error", "Invalid Script Join")
            return
        end
    
    -- ĐỊNH DẠNG 3: JobId Normal
    elseif #input == 36 and string.match(input, "^[a-fA-F0-9%-]+$") then
        jobId = input
        print("[Join] Direct JobId:", jobId)
    
    else
        notify("Error", "Invalid Format")
        return
    end
    
    -- Thực hiện teleport
    if jobId ~= "" then
        local TeleportService = game:GetService("TeleportService")
        local success, errorMsg = pcall(function()
            TeleportService:TeleportToPlaceInstance(game.PlaceId, jobId, game.Players.LocalPlayer)
        end)
        
        if not success then
            warn("[Join] Teleport failed:", errorMsg)
            notify("Error", "Teleport Failed: " .. errorMsg)
        else
            notify("Success", "Teleporting to server...")
            saveVisitedServer(jobId)
        end
    end
end

-- Spam Join
local spamJoinConnection
SpamJoinToggle:OnChanged(function(value)
    if value then
        notify("Spam Join", "Started spamming join every 2 seconds")
        spamJoinConnection = game:GetService("RunService").Heartbeat:Connect(function()
            processJoin()
            task.wait(2)
        end)
    else
        if spamJoinConnection then
            spamJoinConnection:Disconnect()
            spamJoinConnection = nil
            notify("Spam Join", "Stopped spamming join")
        end
    end
end)

-- Kết nối sự kiện khi nhập xong JobId
JobIdInput:OnChanged(function(value)
    if JobIdInput.Finished then
        processJoin()
    end
end)

Tabs.Server:AddButton(
    {
        Title = "Hop Server",
        Callback = function()
            -- Code hop server thông thường
            notify("Hop Server", "Hopping to random server...")
        end
    }
)

Tabs.Server:AddButton(
    {
        Title = "Hop Server Less People",
        Callback = function()
            notify("Hop Server", "Finding server with less players...")
            -- Code tìm server ít người
        end
    }
)

--=================================
-- Cooldown Tab
--=================================

MirageTime = Tabs.CD:AddParagraph({
    Title = "Mirage Island",
    Content = "Ready"
})

KitsuneTime = Tabs.CD:AddParagraph({
    Title = "Kitsune Island",
    Content = "Ready"
})

PrehistoricTime = Tabs.CD:AddParagraph({
    Title = "Prehistoric Island",
    Content = "Ready"
})

FullMoonTime = Tabs.CD:AddParagraph({
    Title = "Full Moon",
    Content = "Ready"
})

NearFullMoonTime = Tabs.CD:AddParagraph({
    Title = "Near Full Moon",
    Content = "Ready"
})

IndraTime = Tabs.CD:AddParagraph({
    Title = "Rip Indra",
    Content = "Ready"
})

DoughTime = Tabs.CD:AddParagraph({
    Title = "Dough King",
    Content = "Ready"
})

CakeTime = Tabs.CD:AddParagraph({
    Title = "Cake Prince",
    Content = "Ready"
})

TotkTime = Tabs.CD:AddParagraph({
    Title = "Tyrant of the Skies",
    Content = "Ready"
})

DarkbeardTime = Tabs.CD:AddParagraph({
    Title = "Darkbeard",
    Content = "Ready"
})

SoulReaperTime = Tabs.CD:AddParagraph({
    Title = "Soul Reaper",
    Content = "Ready"
})

CursedCaptainTime = Tabs.CD:AddParagraph({
    Title = "Cursed Captain",
    Content = "Ready"
})

LegendarySwordTime = Tabs.CD:AddParagraph({
    Title = "Legendary Sword",
    Content = "Ready"
})

--==================================
-- Tab Status 
--==================================

Miragecheck = Tabs.ST:AddParagraph({
    Icon = "tree-palm",
    Title = "Mirage Island",
    Content = "Status: ❌"
})

Kitsunecheck = Tabs.ST:AddParagraph({
    Icon = "cat",
    Title = "Kitsune Island",
    Content = "Status: ❌"
})

CPrehistoriccheck = Tabs.ST:AddParagraph({
    Icon = "mountain",
    Title = "Prehistoric Island",
    Content = "Status: ❌"
})

FM = Tabs.ST:AddParagraph({
    Icon = "moon-star",
    Title = "Full Moon",
    Content = "Status: ❌"
})

NFM = Tabs.ST:AddParagraph({
    Icon = "moon",
    Title = "Near Full Moon",
    Content = "Status: ❌"
})

Indra = Tabs.ST:AddParagraph({
    Icon = "skull",
    Title = "Rip Indra",
    Content = "Status: ❌"
})

Dough = Tabs.ST:AddParagraph({
    Icon = "cake",
    Title = "Dough King",
    Content = "Status: ❌"
})

Cake = Tabs.ST:AddParagraph({
    Icon = "cake-slice",
    Title = "Cake Prince",
    Content = "Status: ❌"
})


Totk = Tabs.ST:AddParagraph({
    Icon = "bird",
    Title = "Tyrant of the Skies",
    Content = "Status: ❌"
})


Dbeard = Tabs.ST:AddParagraph({
    Icon = "person-standing",
    Title = "Dark Beard",
    Content = "Status: ❌"
})

Srp = Tabs.ST:AddParagraph({
    Icon = "guitar",
    Title = "Soul Reaper",
    Content = "Status: ❌"
})


Csc = Tabs.ST:AddParagraph({
    Icon = "rocket",
    Title = "Cursed Captain",
    Content = "Status: ❌"
})

LegendarySword = Tabs.ST:AddParagraph({
    Title = "Legendary Sword",
    Content = "Status: ❌"
})

Tabs.Main:AddButton({
    Title = "Button",
    Description = "Very important button",
    Callback = function()
        Window:Dialog({
            Title = "Title",
            Content = "This is a dialog",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

-- Rate Tab
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local webhookURL_2 = "https://discord.com/api/webhooks/1374672556078137387/apWr89N2oYH-JwhNaRrGVGIiAGXt7boJl2oiwaJ08RWd5Gs0X-UlpAIjyf1RVrGDwVCx"

local selectedStar = "5 ⭐"
local userMessage = ""

Tabs.Rate:AddSection("Rate My Script", "star")

Tabs.Rate:AddParagraph({
    Title = "Note",
    Content = "Please Write Bugs (If Any) \n And Your Feelings About The Script :v"
})

Tabs.Rate:AddDropdown("Dropdown", {
    Title = "Rate (Star)",
    Values = {"1 ⭐", "2 ⭐", "3 ⭐", "4 ⭐", "5 ⭐"},
    Multi = false,
    Default = 5,
    Callback = function(value)
        selectedStar = value
    end
})

Tabs.Rate:AddInput("Input", {
    Title = "Input Message To Dev",
    Default = "",
    Placeholder = "Type your feedback...",
    Numeric = false,
    Finished = false,
    Callback = function(value)
        userMessage = value
    end
})

Tabs.Rate:AddButton({
    Title = "Send Rate To Developer",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "Submit Rate",
            Content = "Would You Like to Submit a Rate?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local time = os.date("%Y-%m-%d %H:%M:%S")
                        local finalMessage = (userMessage ~= "" and userMessage) or "No Message!"

                        local data = {
                            ["username"] = "Lonely Hub",
                            ["avatar_url"] = "https://i.imgur.com/mUH1owM.jpeg",
                            ["embeds"] = {{
                                ["title"] = "<lonelyhub:1416628422385336361> Lonely Hub Notification <lonelyhub:1416628422385336361>",
                                ["color"] = tonumber("0xFF0000"),
                                ["thumbnail"] = {
                                    ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"
                                },
                                ["fields"] = {
                                    {
                                        ["name"] = "[👤] User Name:",
                                        ["value"] = "```ini\n" .. player.Name .. "\n```",
                                        ["inline"] = false
                                    },
                                    {
                                        ["name"] = "[⭐] Rate (Star):",
                                        ["value"] = "```ini\n" .. selectedStar .. "\n```",
                                        ["inline"] = false
                                    },
                                    {
                                        ["name"] = "[💬] Message:",
                                        ["value"] = "```ini\n" .. finalMessage .. "\n```",
                                        ["inline"] = false
                                    }
                                },
                                ["footer"] = {
                                    ["text"] = "Make By LongHip12 • " .. time
                                }
                            }}
                        }

                        local success, err = pcall(function()
                            (http_request or request or syn and syn.request or fluxus and fluxus.request)({
                                Url = webhookURL_2,
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json"
                                },
                                Body = HttpService:JSONEncode(data)
                            })
                        end)

                        Fluent:Notify({
                            Title = "Notification",
                            Content = success and "Send Rate Successfully!" or ("Failed to send: " .. tostring(err)),
                            Duration = 5
                        })
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function() end
                }
            }
        })
    end
})

--Settings Tab
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(1)
SaveManager:LoadAutoloadConfig()

--// Webhook Configuration
local LonelyHub = {
    ["Mirage Island"] = "https://discord.com/api/webhooks/1416634544450437191/r7F2leSvgIn5KthKucUd57qGlXe22f88ZY7nuCBp2j487cA16YyPKN7163qrqh4dMElk",
    ["Kitsune Island"] = "https://discord.com/api/webhooks/1416634674624725052/VaV6ShPx98fOT1J7BvMjb6ObfgPmcvMJpLZzVjAFZtFlkpoBTvYwGC3JNvfuJCkO0PNk",
    ["Prehistoric Island"] = "https://discord.com/api/webhooks/1416634791524171846/ynUFgtU7uW_soj_VjByyMfDdpRHOplEdhDTpvlb_KtvUhTBC8rHKoK-0nrOYHhET-zAV",
    ["Full Moon"] = "https://discord.com/api/webhooks/1416634928703209602/jcmU7AVTJPU1J4CWut8rjRFUl7KIsqJJOI_hId9zFBqsuA0oPTH9bkrQR467Ed3gtj1E",
    ["Near Full Moon"] = "https://discord.com/api/webhooks/1416635012073390142/QZCIVE96gIq1mP1UOQyDs5CGm9M193VPucYlRhnRDkWZzzvkYUzAAt_HQ-neR5EPRXty",
    ["Rip Indra"] = "https://discord.com/api/webhooks/1416635105484607599/oIPwubvIgR5daBmzX6BfI2XrIoVH6e9hJIbYM_oP0NF0F-O7bJTQg835n-LG9yrvM_AR",
    ["Dough King"] = "https://discord.com/api/webhooks/1416635243053453515/u15ogCib29cV5l92Iq-ZJT4Qj3QY42_t8PbfbHgi1reFmZPAOYymoSlQWi_aIDScLXpC",
    ["Cake Prince"] = "https://discord.com/api/webhooks/1416635335953223772/quOipsI1BcQSxoGizfRuHyKqBkf_wBgnAUyoYZLQJod_NcqG4DVNIFSyMwkeaqVWYD8C",
    ["Tyrant of the Skies"] = "https://discord.com/api/webhooks/1416635427187851357/KGVptL-nZafsZ7CV2gJ_14n_0isJeZLwqFL2l3r6vXpBGo5XDA8HoqZ_xIJYRHMuxP6T",
    ["Darkbeard"] = "https://discord.com/api/webhooks/1416635480874684436/KfYIk-ozZanKv7KTTRXOi21Xp1liXAoAMlyfQ3w8PE6ovXi_WHoovvPIghx6uf9pEd3-",
    ["Soul Reaper"] = "https://discord.com/api/webhooks/1416640009444003942/ZimVSwRmOJBf119LSo4j7kNTPfkgp4DoHc9_0uWJapGFnmeU8laGZgWlTZhBipUd5GJs",
    ["Cursed Captain"] = "https://discord.com/api/webhooks/1416640126167158814/SJg8S7zHWQLcJ0y4ExvhM_fZyesrW911bquTpSB026FM0TpGNYLafLYAccIXAFHu_GZV",
    ["Legendary Sword"] = "https://discord.com/api/webhooks/1416640232333246504/Ft6n9sX1weucNy8pgijC0mt1xkOWKj8AOMJKR7Py1aOEHccOFtjhfXqs5JXFI5c59wq9"
}

if not getgenv().WebhookURLs then
    getgenv().WebhookURLs = {
        ["LonelyHub"] = true,
    }
end

local WebhookGroups = {
    ["LonelyHub"] = LonelyHub,
}

-- Cooldown system
local eventLastTrigger = {
    ["Darkbeard"] = 0,
    ["Cursed Captain"] = 0,
    ["Rip Indra"] = 0,
    ["Dough King"] = 0,
    ["Cake Prince"] = 0,
    ["Tyrant of the Skies"] = 0,
    ["Soul Reaper"] = 0,
    ["Mirage Island"] = 0,
    ["Kitsune Island"] = 0,
    ["Prehistoric Island"] = 0,
    ["Full Moon"] = 0,
    ["Near Full Moon"] = 0,
    ["Legendary Sword"] = 0
}

-- Hàm định dạng thời gian
local function formatTime(seconds)
    if seconds <= 0 then
        return "Ready"
    end
    local minutes = math.floor(seconds / 60)
    local secs = math.floor(seconds % 60)
    return string.format("%02d:%02d", minutes, secs)
end

-- Hàm cập nhật thời gian real-time
local function updateStatusDisplays()
    while true do
        task.wait(0.1) -- Cập nhật mỗi 0.1 giây
        
        local currentTime = os.time()
        
        -- Mirage Island
        local mirageExists = game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') ~= nil
        local mirageRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Mirage Island"] or 0))
        local mirageStatus = mirageExists and "✅" or "❌"
        local mirageTime = formatTime(mirageRemaining)
        Miragecheck:SetDesc("Status: " .. mirageStatus)
        MirageTime:SetDesc(mirageTime)
        
        -- Kitsune Island
        local kitsuneExists = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
        local kitsuneRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Kitsune Island"] or 0))
        local kitsuneStatus = kitsuneExists and "✅" or "❌"
        local kitsuneTime = formatTime(kitsuneRemaining)
        Kitsunecheck:SetDesc("Status: " .. kitsuneStatus)
        KitsuneTime:SetDesc(kitsuneTime)
        
        -- Prehistoric Island
        local prehistoricExists = game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")
        local prehistoricRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Prehistoric Island"] or 0))
        local prehistoricStatus = prehistoricExists and "✅" or "❌"
        local prehistoricTime = formatTime(prehistoricRemaining)
        CPrehistoriccheck:SetDesc("Status: " .. prehistoricStatus)
        PrehistoricTime:SetDesc(prehistoricTime)
        
        -- Full Moon
        local moonTextureId = game:GetService("Lighting").Sky.MoonTextureId
        local fullMoonExists = moonTextureId == "http://www.roblox.com/asset/?id=9709149431"
        local fullMoonRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Full Moon"] or 0))
        local fullMoonStatus = fullMoonExists and "✅" or "❌"
        local fullMoonTime = formatTime(fullMoonRemaining)
        FM:SetDesc("Status: " .. fullMoonStatus)
        FullMoonTime:SetDesc(fullMoonTime)
        
        -- Near Full Moon
        local nearFullMoonExists = moonTextureId == "http://www.roblox.com/asset/?id=9709149052"
        local nearFullMoonRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Near Full Moon"] or 0))
        local nearFullMoonStatus = nearFullMoonExists and "✅" or "❌"
        local nearFullMoonTime = formatTime(nearFullMoonRemaining)
        NFM:SetDesc("Status: " .. nearFullMoonStatus)
        NearFullMoonTime:SetDesc(nearFullMoonTime)
        
        -- Rip Indra
        local indraExists = (ReplicatedStorage:FindFirstChild("Rip Indra") or Enemies:FindFirstChild("Rip Indra"))
        local indraRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Rip Indra"] or 0))
        local indraStatus = indraExists and "✅" or "❌"
        local indraTime = formatTime(indraRemaining)
        Indra:SetDesc("Status: " .. indraStatus)
        IndraTime:SetDesc(indraTime)
        
        -- Dough King
        local doughExists = (ReplicatedStorage:FindFirstChild("Dough King") or Enemies:FindFirstChild("Dough King"))
        local doughRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Dough King"] or 0))
        local doughStatus = doughExists and "✅" or "❌"
        local doughTime = formatTime(doughRemaining)
        Dough:SetDesc("Status: " .. doughStatus)
        DoughTime:SetDesc(doughTime)
        
        -- Cake Prince
        local cakeExists = (ReplicatedStorage:FindFirstChild("Cake Prince") or Enemies:FindFirstChild("Cake Prince"))
        local cakeRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Cake Prince"] or 0))
        local cakeStatus = cakeExists and "✅" or "❌"
        local cakeTime = formatTime(cakeRemaining)
        Cake:SetDesc("Status: " .. cakeStatus)
        CakeTime:SetDesc(cakeTime)
        
        -- Tyrant of the Skies
        local tyrantExists = (ReplicatedStorage:FindFirstChild("Tyrant of the Skies") or Enemies:FindFirstChild("Tyrant of the Skies"))
        local tyrantRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Tyrant of the Skies"] or 0))
        local tyrantStatus = tyrantExists and "✅" or "❌"
        local tyrantTime = formatTime(tyrantRemaining)
        Totk:SetDesc("Status: " .. tyrantStatus)
        TotkTime:SetDesc(tyrantTime)
        
        -- Dark Beard
        local darkbeardExists = (ReplicatedStorage:FindFirstChild("Darkbeard") or Enemies:FindFirstChild("Darkbeard"))
        local darkbeardRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Darkbeard"] or 0))
        local darkbeardStatus = darkbeardExists and "✅" or "❌"
        local darkbeardTime = formatTime(darkbeardRemaining)
        Dbeard:SetDesc("Status: " .. darkbeardStatus)
        DarkbeardTime:SetDesc(darkbeardTime)
        
        -- Soul Reaper
        local soulReaperExists = (ReplicatedStorage:FindFirstChild("Soul Reaper") or Enemies:FindFirstChild("Soul Reaper"))
        local soulReaperRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Soul Reaper"] or 0))
        local soulReaperStatus = soulReaperExists and "✅" or "❌"
        local soulReaperTime = formatTime(soulReaperRemaining)
        Srp:SetDesc("Status: " .. soulReaperStatus)
        SoulReaperTime:SetDesc(soulReaperTime)
        
        -- Cursed Captain
        local cursedCaptainExists = (ReplicatedStorage:FindFirstChild("Cursed Captain") or Enemies:FindFirstChild("Cursed Captain"))
        local cursedCaptainRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Cursed Captain"] or 0))
        local cursedCaptainStatus = cursedCaptainExists and "✅" or "❌"
        local cursedCaptainTime = formatTime(cursedCaptainRemaining)
        Csc:SetDesc("Status: " .. cursedCaptainStatus)
        CursedCaptainTime:SetDesc(cursedCaptainTime)
        
        -- Legendary Sword
        local swordStatus = "❌"
        local success1 = pcall(function() return ReplicatedStorage.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") end)
        local success2 = pcall(function() return ReplicatedStorage.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2") end)
        local success3 = pcall(function() return ReplicatedStorage.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3") end)
        
        if success1 then swordStatus = "Shisui ✅"
        elseif success2 then swordStatus = "Wando ✅"  
        elseif success3 then swordStatus = "Saddi ✅" end
        
        local swordRemaining = COOLDOWN_TIME - (currentTime - (eventLastTrigger["Legendary Sword"] or 0))
        local swordTime = formatTime(swordRemaining)
        LegendarySword:SetDesc("Status: " .. swordStatus)
        LegendarySwordTime:SetDesc(swordTime)
    end
end

-- Hàm gửi webhook chính
local function sendBossWebhook(eventName, swordName)
    local currentTime = os.time()
    
    -- Check cooldown (use normalized eventName)
    if eventLastTrigger[eventName] and (currentTime - eventLastTrigger[eventName]) < COOLDOWN_TIME then
        local remaining = COOLDOWN_TIME - (currentTime - eventLastTrigger[eventName])
        local minutes = math.floor(remaining / 60)
        local seconds = remaining % 60
        print(eventName .. " Is In CD, " .. string.format("%02d:%02d", minutes, seconds) .. " remaining...")
        return
    end
    
    -- Thông báo phát hiện sự kiện
    Fluent:Notify({
        Title = "Event Detected!",
        Content = eventName .. " has been detected",
        Duration = 5
    })
    
    -- Update trigger time
    eventLastTrigger[eventName] = currentTime
    
    local currentSea = "Unknown Sea"
    if game.PlaceId == SEA1_PLACE_ID then
        currentSea = "First Sea"
    elseif game.PlaceId == SEA2_PLACE_ID then
        currentSea = "Second Sea"
    elseif game.PlaceId == SEA3_PLACE_ID then
        currentSea = "Third Sea"
    end

    local displayName = eventName  
    if eventName == "Legendary Sword" and swordName then  
        displayName = "Legendary Sword (" .. swordName .. ")"  
    end
    
    local playerCount = #Players:GetPlayers()
    local data = {  
        username = "Lonely Hub",
        avatar_url = "https://i.imgur.com/TWW22k4.jpeg",
        embeds = {{  
            title = "<:lonelyhub:1416628422385336361> Lonely Hub Notification <:lonelyhub:1416628422385336361>",  
            color = tonumber(0xFFFFFF),  
            fields = {  
                { name = "[🚀] Type :", value = "```\n" .. displayName .. " [Spawned]\n```", inline = false },  
                { name = "[👤] Players:", value = "```\n" .. tostring(playerCount) .. "\n```", inline = false },  
                { name = "[🌊] Sea :", value = "```\n" .. currentSea .. "\n```", inline = false },  
                { name = "[📎] JobId:", value = "```\n" .. jobId .. "\n```", inline = false },  
                { name = "[📜] Script Join:", value = "```lua\n" .. joinScript .. "\n```", inline = false }
            },  
            footer = {  
                text = "Make by LongHip12 • " .. os.date("%d/%m/%Y - %H:%M:%S")  
            }  
        }}  
    }
    
    local payload = HttpService:JSONEncode(data)
    local request_fn = (syn and syn.request) or (http and http.request) or http_request or request or HttpPost
    
    local successCount = 0
    local totalAttempts = 0
    
    if request_fn then  
        -- Gửi đến webhook từ input trước
        local inputWebhookKey = eventName:gsub(" ", "")
        local inputWebhook = WebhookURLs[inputWebhookKey]
        
        if inputWebhook and inputWebhook ~= "" then
            totalAttempts = totalAttempts + 1
            local success = pcall(function()
                request_fn({  
                    Url = inputWebhook,  
                    Method = "POST",  
                    Headers = { ["Content-Type"] = "application/json" },  
                    Body = payload  
                })
            end)
            
            if success then
                successCount = successCount + 1
                print("Send Webhook Successfully To: " .. eventName .. " (Input Webhook)")
            else
                print("Error When Send Webhook To: " .. eventName .. " (Input Webhook)")
            end
        end
        
        -- Gửi đến webhook mặc định
        for groupName, isEnabled in pairs(getgenv().WebhookURLs) do  
            if isEnabled and WebhookGroups[groupName] then
                local webhookUrl = WebhookGroups[groupName][eventName]
                if webhookUrl and webhookUrl ~= "" then
                    totalAttempts = totalAttempts + 1
                    local success = pcall(function()
                        request_fn({  
                            Url = webhookUrl,  
                            Method = "POST",  
                            Headers = { ["Content-Type"] = "application/json" },  
                            Body = payload  
                        })
                    end)
                    
                    if success then
                        successCount = successCount + 1
                        print("Send Webhook Successfully To: " .. eventName .. " (Group: " .. tostring(groupName) .. ")")
                    else
                        print("Error When Send Webhook: " .. eventName .. " (Group: " .. tostring(groupName) .. ")")
                    end
                end
            end  
        end  
    else
        warn("Không tìm thấy hàm request (syn.request/http.request/...) để gửi webhook.")
    end
    
    -- Thông báo kết quả gửi webhook
    if successCount > 0 then
        Fluent:Notify({
            Title = "Webhook Sent Successfully",
            Content = string.format("Sent %d/%d webhooks for %s", successCount, totalAttempts, eventName),
            Duration = 5
        })
    else
        Fluent:Notify({
            Title = "Webhook Failed",
            Content = "Failed to send webhook for " .. eventName,
            Duration = 5
        })
    end
end

-- Hàm theo dõi cooldown và thông báo khi ready
local function monitorCooldowns()
    local notifiedEvents = {}
    
    while true do
        task.wait(5) -- Kiểm tra mỗi 5 giây
        
        local currentTime = os.time()
        
        for eventName, lastTrigger in pairs(eventLastTrigger) do
            local remaining = COOLDOWN_TIME - (currentTime - lastTrigger)
            
            -- Nếu cooldown vừa kết thúc và chưa thông báo
            if remaining <= 0 and not notifiedEvents[eventName] then
                Fluent:Notify({
                    Title = eventName .. " Ready",
                    Content = "Cooldown finished, now monitoring...",
                    Duration = 3
                })
                print("🔄 " .. eventName .. " cooldown finished, now ready!")
                notifiedEvents[eventName] = true
            elseif remaining > 0 then
                notifiedEvents[eventName] = false
            end
        end
    end
end

-- Checker functions
local function checkDarkbeard()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Darkbeard"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA2_PLACE_ID then
                if ReplicatedStorage:FindFirstChild("Darkbeard") or Enemies:FindFirstChild("Darkbeard") then
                    print("[Info] Darkbeard detected!")
                    sendBossWebhook("Darkbeard")
                end
            end
        end
    end
end

local function checkCursedCaptain()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Cursed Captain"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA2_PLACE_ID then
                if ReplicatedStorage:FindFirstChild("Cursed Captain") or Enemies:FindFirstChild("Cursed Captain") then
                    print("[Info] Cursed Captain detected!")
                    sendBossWebhook("Cursed Captain")
                end
            end
        end
    end
end

local function checkRipIndra()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Rip Indra"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                if ReplicatedStorage:FindFirstChild("Rip Indra") or Enemies:FindFirstChild("Rip Indra") then
                    print("[Info] Rip Indra detected!")
                    sendBossWebhook("Rip Indra")
                end
            end
        end
    end
end

local function checkDoughKing()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Dough King"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                if ReplicatedStorage:FindFirstChild("Dough King") or Enemies:FindFirstChild("Dough King") then
                    print("[Info] Dough King detected!")
                    sendBossWebhook("Dough King")
                end
            end
        end
    end
end

local function checkCakePrince()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Cake Prince"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                if ReplicatedStorage:FindFirstChild("Cake Prince") or Enemies:FindFirstChild("Cake Prince") then
                    print("[Info] Cake Prince detected!")
                    sendBossWebhook("Cake Prince")
                end
            end
        end
    end
end

local function checkTyrantSkies()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Tyrant of the Skies"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                if ReplicatedStorage:FindFirstChild("Tyrant of the Skies") or Enemies:FindFirstChild("Tyrant of the Skies") then
                    print("[Info] Tyrant of the Skies detected!")
                    sendBossWebhook("Tyrant of the Skies")
                end
            end
        end
    end
end

local function checkSoulReaper()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Soul Reaper"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                if ReplicatedStorage:FindFirstChild("Soul Reaper") or Enemies:FindFirstChild("Soul Reaper") then
                    print("[Info] Soul Reaper detected!")
                    sendBossWebhook("Soul Reaper")
                end
            end
        end
    end
end

local function checkMirageIsland()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Mirage Island"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                local locs = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")
                if locs and locs:FindFirstChild("Mirage Island") then
                    print("[Info] Mirage Island detected!")
                    sendBossWebhook("Mirage Island")
                end
            end
        end
    end
end

local function checkKitsuneIsland()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Kitsune Island"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                local locs = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")
                if locs and locs:FindFirstChild("Kitsune Island") then
                    print("[Info] Kitsune Island detected!")
                    sendBossWebhook("Kitsune Island")
                end
            end
        end
    end
end

local function checkPrehistoricIsland()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Prehistoric Island"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                local locs = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")
                if locs and locs:FindFirstChild("Prehistoric Island") then
                    print("[Info] Prehistoric Island detected!")
                    sendBossWebhook("Prehistoric Island")
                end
            end
        end
    end
end

local function checkFullMoon()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Full Moon"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                if Lighting:FindFirstChild("Sky") and Lighting.Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
                    print("[Info] Full Moon detected!")
                    sendBossWebhook("Full Moon")
                end
            end
        end
    end
end

local function checkNearFullMoon()
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Near Full Moon"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA3_PLACE_ID then
                if Lighting:FindFirstChild("Sky") and Lighting.Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                    print("[Info] Near Full Moon detected!")
                    sendBossWebhook("Near Full Moon")
                end
            end
        end
    end
end

local function checkLegendarySword()
    local previousSword = nil
    while true do
        task.wait(5)
        local currentTime = os.time()
        if not ((currentTime - (eventLastTrigger["Legendary Sword"] or 0)) < COOLDOWN_TIME) then
            if game.PlaceId == SEA2_PLACE_ID then
                local currentSword = nil
                local success, result

                success, result = pcall(function()
                    return ReplicatedStorage.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
                end)
                if success and result then currentSword = "Shisui" end

                if not currentSword then
                    success, result = pcall(function()
                        return ReplicatedStorage.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2")
                    end)
                    if success and result then currentSword = "Wando" end
                end

                if not currentSword then
                    success, result = pcall(function()
                        return ReplicatedStorage.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3")
                    end)
                    if success and result then currentSword = "Saddi" end
                end

                if currentSword and currentSword ~= previousSword then
                    print("[Info] Legendary Sword detected: " .. currentSword)
                    sendBossWebhook("Legendary Sword", currentSword)
                    previousSword = currentSword
                elseif not currentSword and previousSword then
                    previousSword = nil
                end
            else
                previousSword = nil
            end
        end
    end
end

-- Start all checkers và monitor cooldowns
print("[Info] Starting Checking...")
print("[Info] Cooldown: " .. (COOLDOWN_TIME / 60) .. " min per event")

task.spawn(checkDarkbeard)
task.spawn(checkCursedCaptain)
task.spawn(checkRipIndra)
task.spawn(checkDoughKing)
task.spawn(checkCakePrince)
task.spawn(checkTyrantSkies)
task.spawn(checkSoulReaper)
task.spawn(checkMirageIsland)
task.spawn(checkKitsuneIsland)
task.spawn(checkPrehistoricIsland)
task.spawn(checkFullMoon)
task.spawn(checkNearFullMoon)
task.spawn(checkLegendarySword)
task.spawn(updateStatusDisplays)
task.spawn(monitorCooldowns)

print("[Info] All Checker Has Been Ready")
print("[Info] Checking For Event...")

-- GUI Button
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")  
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "Lonely Hub Btn"

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.1, 0.1)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 1
Frame.Position = UDim2.new(0, 20, 0.1, -6)  
Frame.Size = UDim2.new(0, 50, 0, 50)
Frame.Name = "dut dit"

ImageLabel.Parent = Frame
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 40, 0, 40)
ImageLabel.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 1
ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Image = "rbxassetid://112485471724320"

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Frame

TextButton.Name = "TextButton"
TextButton.Parent = Frame
TextButton.AnchorPoint = Vector2.new(0, 0)
TextButton.Position = UDim2.new(0, 0, 0, 0)
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
TextButton.BackgroundTransparency = 1
TextButton.BorderSizePixel = 1
TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton.TextColor3 = Color3.fromRGB(27, 42, 53)
TextButton.Text = ""
TextButton.Font = Enum.Font.SourceSans
TextButton.TextSize = 50
TextButton.TextTransparency = 0

local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local zoomedIn = false
local originalSize = UDim2.new(0, 40, 0, 40)
local zoomedSize = UDim2.new(0, 30, 0, 30)
local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local faded = false
local fadeInTween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0.25})
local fadeOutTween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0})

TextButton.MouseButton1Down:Connect(function()
    if zoomedIn then
        TweenService:Create(ImageLabel, tweenInfo, {Size = originalSize}):Play()
    else
        TweenService:Create(ImageLabel, tweenInfo, {Size = zoomedSize}):Play()
    end
    zoomedIn = not zoomedIn

    if faded then
        fadeOutTween:Play()
    else
        fadeInTween:Play()
    end
    faded = not faded

    VirtualInputManager:SendKeyEvent(true, "LeftControl", false, game)
end)