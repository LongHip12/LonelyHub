local LonelyHubBtn = Instance.new("ScreenGui")
local dutdit = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")

LonelyHubBtn.Name = "Lonely Hub Btn"  
LonelyHubBtn.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")  
LonelyHubBtn.ZIndexBehavior = Enum.ZIndexBehavior.Sibling  

dutdit.Name = "dut dit"  
dutdit.Parent = LonelyHubBtn  
dutdit.AnchorPoint = Vector2.new(0.1, 0.1)  
dutdit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
dutdit.Position = UDim2.new(0, 20, 0.1, -6)  
dutdit.Size = UDim2.new(0, 50, 0, 50)  

UICorner.CornerRadius = UDim.new(1, 0)  
UICorner.Parent = dutdit  

ImageLabel.Parent = dutdit  
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)  
ImageLabel.BackgroundTransparency = 1.0  
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)  
ImageLabel.Size = UDim2.new(0, 40, 0, 40)  
ImageLabel.Image = "rbxassetid://112485471724320"  

TextButton.Parent = dutdit  
TextButton.BackgroundTransparency = 1.0  
TextButton.Size = UDim2.new(1, 0, 1, 0)  
TextButton.Font = Enum.Font.SourceSans  
TextButton.Text = ""  
TextButton.TextColor3 = Color3.fromRGB(27, 42, 53)  

local TweenService = game:GetService("TweenService")  
local VirtualInputManager = game:GetService("VirtualInputManager")  

local zoomedIn = false  
local originalSize = UDim2.new(0, 40, 0, 40)  
local zoomedSize = UDim2.new(0, 30, 0, 30)  
local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)  

local faded = false  
local fadeInTween = TweenService:Create(dutdit, tweenInfo, {BackgroundTransparency = 0.25})  
local fadeOutTween = TweenService:Create(dutdit, tweenInfo, {BackgroundTransparency = 0})  

TextButton.MouseButton1Down:Connect(  
    function()  
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

        game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)  
        task.wait(0.1)  
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "LeftControl", false, game)  
    end  
)
