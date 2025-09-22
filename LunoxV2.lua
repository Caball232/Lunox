local LunoxLib = {}
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

if game.CoreGui:FindFirstChild("Lunox") then
    game.CoreGui.Lunox:Destroy()
end

local function MakeWindow(config)
    config = config or {}
    local version = config.Version or "v1.0"

    if game.CoreGui:FindFirstChild("Lunox") then
        game.CoreGui.Lunox:Destroy()
    end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "Lunox"
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.ResetOnSpawn = false

    local Window = Instance.new("Frame")
    Window.Name = "Window"
    Window.Parent = ScreenGui
    Window.Position = UDim2.new(0.5,0,0.5,0)
    Window.Size = UDim2.new(0.436,0,0.466,0)
    Window.AnchorPoint = Vector2.new(0.5,0.5)
    Window.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    Window.Active = true
    Window.Draggable = true

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0.027,0)
    UICorner.Parent = Window

    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint.AspectRatio = 1.68
    UIAspectRatioConstraint.Parent = Window

    local TopBar = Instance.new("Frame")
    TopBar.Name = "TopBar"
    TopBar.Parent = Window
    TopBar.Size = UDim2.new(1,0,0.108,0)
    TopBar.BackgroundTransparency = 1

    local UIAspectRatioConstraint1 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint1.AspectRatio = 15.54
    UIAspectRatioConstraint1.Parent = TopBar

    local LunoxLogo = Instance.new("ImageLabel")
    LunoxLogo.BackgroundTransparency = 1
    LunoxLogo.Size = UDim2.new(0.038, 0, 0.592, 0)
    LunoxLogo.Position = UDim2.new(0.013, 0, 0.197, 0)
    LunoxLogo.Image = "rbxassetid://13852159520"
    LunoxLogo.Parent = TopBar

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Parent = TopBar
    Title.Position = UDim2.new(0.053,0,0.197,0)
    Title.Size = UDim2.new(0.159,0,0.592,0)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.Text = "Lunox Hub"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextWrapped = true
    local TitleConstraint = Instance.new("UITextSizeConstraint")
    TitleConstraint.MaxTextSize = 14
    TitleConstraint.MinTextSize = 1
    TitleConstraint.Parent = Title

    local Version = Instance.new("TextLabel")
    Version.Name = "Version"
    Version.Parent = TopBar
    Version.Position = UDim2.new(0.223,0,0.197,0)
    Version.Size = UDim2.new(0.159,0,0.592,0)
    Version.BackgroundTransparency = 1
    Version.Font = Enum.Font.GothamBold
    Version.Text = version
    Version.TextColor3 = Color3.fromRGB(255,255,255)
    Version.TextScaled = true
    Version.TextWrapped = true
    local VersionConstraint = Instance.new("UITextSizeConstraint")
    VersionConstraint.MaxTextSize = 14
    VersionConstraint.MinTextSize = 1
    VersionConstraint.Parent = Version

    local CloseButton = Instance.new("ImageButton")
    CloseButton.Name = "Close"
    CloseButton.BackgroundTransparency = 1
    CloseButton.Size = UDim2.new(0.038,0,0.592,0)
    CloseButton.Position = UDim2.new(0.943,0,0.175,0)
    CloseButton.Parent = TopBar
    CloseButton.Image = "rbxassetid://14938918892"
    CloseButton.MouseButton1Click:Connect(function()
        game.CoreGui:WaitForChild("Lunox"):Destroy()
    end)

    local Inner = Instance.new("Frame")
    Inner.Name = "Inner"
    Inner.Parent = Window
    Inner.Size = UDim2.new(1,0,0.892,0)
    Inner.Position = UDim2.new(0.5,0,0.554,0)
    Inner.BackgroundColor3 = Color3.fromRGB(49,49,49)
    Inner.AnchorPoint = Vector2.new(0.5, 0.5)
    local UIAspectRatioConstraint2 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint2.AspectRatio = 1.818
    UIAspectRatioConstraint2.Parent = Inner

    local Content = Instance.new("Frame")
    Content.Name = "Content"
    Content.Parent = Inner
    Content.Size = UDim2.new(0.765,0,0.924,0)
    Content.Position = UDim2.new(0.223,0,0.03,0)
    Content.BackgroundTransparency = 1

    local Tabs = Instance.new("Frame")
    Tabs.Name = "Tabs"
    Tabs.Parent = Inner
    Tabs.Size = UDim2.new(0.192,0,0.939,0)
    Tabs.Position = UDim2.new(0.013,0,0.03,0)
    Tabs.BackgroundColor3 = Color3.fromRGB(29,29,29)
    local UIAspectRatioConstraint3 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint3.AspectRatio = 0.371
    UIAspectRatioConstraint3.Parent = Tabs
    local UICorner2 = Instance.new("UICorner")
    UICorner2.CornerRadius = UDim.new(0,12)
    UICorner2.Parent = Tabs

    local ScrollingFrame = Instance.new("ScrollingFrame")
    ScrollingFrame.Parent = Tabs
    ScrollingFrame.BackgroundTransparency = 1
    ScrollingFrame.Size = UDim2.new(1,0,0.968,0)
    ScrollingFrame.Position = UDim2.new(0,0,0.032,0)
    local UIAspectRatioConstraint4 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint4.AspectRatio = 0.383
    UIAspectRatioConstraint4.Parent = ScrollingFrame
    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Padding = UDim.new(0,5)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.Parent = ScrollingFrame

    return {
        ScreenGui = ScreenGui,
        WindowFrame = Window,
        TopBar = TopBar,
        TitleLabel = Title,
        CloseButton = CloseButton,
        TabsFrame = Tabs,
        ContentFrame = Content
    }
end

local function AddTab(window, name, isFirst)
    local TabFrame = Instance.new("Frame")
    TabFrame.Name = name
    TabFrame.BackgroundTransparency = 1
    TabFrame.Size = UDim2.new(0.913,0,0,25)
    TabFrame.Parent = window.TabsFrame
    local UICorner3 = Instance.new("UICorner")
    UICorner3.CornerRadius = UDim.new(0,4)
    UICorner3.Parent = TabFrame

    local TabButton = Instance.new("TextButton")
    TabButton.Name = "Button"
    TabButton.BackgroundTransparency = 1
    TabButton.Size = UDim2.new(1,0,1,0)
    TabButton.Parent = TabFrame
    TabButton.Text = ""
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    UITextSizeConstraint.MaxTextSize = 14
    UITextSizeConstraint.Parent = TabButton

    local TabLabel = Instance.new("TextLabel")
    TabLabel.Name = "Label"
    TabLabel.Parent = TabFrame
    TabLabel.AnchorPoint = Vector2.new(0.5,0.5)
    TabLabel.BackgroundTransparency = 1
    TabLabel.Position = UDim2.new(0.5,0,0.5,0)
    TabLabel.Size = UDim2.new(1,0,1,0)
    TabLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabLabel.TextXAllignment = Enum.TextXAllignment.Left
    local UITextSizeConstraint1 = Instance.new("UITextSizeConstraint")
    UITextSizeConstraint1.MaxTextSize = 11
    UITextSizeConstraint1.Parent = TabLabel

    local Container = Instance.new("ScrollingFrame")
    Container.Name = "Container"
    Container.Size = UDim2.new(1,0,1,0)
    Container.Position = UDim2.new(0,0,0,0)
    Container.BackgroundTransparency = 1
    Container.Visible = false
    Container.Parent = window.ContentFrame
    Container.CanvasSize = UDim2.new(0,0,0,0)
    Container.ScrollBarThickness = 4

    local function showTab()
        for _, child in ipairs(window.ContentFrame:GetChildren()) do
            if child:IsA("ScrollingFrame") then
                child.Visible = false
            end
        end
        Container.Visible = true

        for _, btn in ipairs(window.TabsFrame:GetChildren()) do
            if btn:IsA("TextButton") then
                local lbl = btn:FindFirstChildOfClass("TextLabel")
                if lbl then
                    lbl.TextTransparency = 0.4
                end
            end
        end
        TabLabel.TextTransparency = 0
    end

    TabButton.MouseButton1Click:Connect(showTab)

    if isFirst then
        showTab()
    end

    local function AddRow(yPos)
        local Row = Instance.new("Frame")
        Row.Size = UDim2.new(1,0,0,30)
        Row.Position = UDim2.new(0,0,0,yPos)
        Row.BackgroundTransparency = 1
        Row.Parent = Container
        return Row
    end

    return {
        Button = TabButton,
        Title = TabLabel,
        Container = Container,
        Show = showTab,
        AddRow = AddRow
    }
end

local function AddToggle(parent, callback)
    local ToggleTemp = Instance.new("Frame")
    ToggleTemp.Name = "ToggleTemp"
    ToggleTemp.Position = UDim2.new(0.0264323112, 0, 0.144393414, 0)
    ToggleTemp.Size = UDim2.new(0.333371997, 0, 0.229311034, 0)
    ToggleTemp.AnchorPoint = Vector2.new(0,0)
    ToggleTemp.BackgroundColor3 = Color3.fromRGB(49,49,49)
    ToggleTemp.BackgroundTransparency = 0
    ToggleTemp.Visible = true
    ToggleTemp.ZIndex = 1
    ToggleTemp.Parent = parent

    local Inner = Instance.new("Frame")
    Inner.Name = "Inner"
    Inner.Position = UDim2.new(0,0,0.355555564,0)
    Inner.Size = UDim2.new(1,0,0.644444466,0)
    Inner.AnchorPoint = Vector2.new(0,0)
    Inner.BackgroundColor3 = Color3.fromRGB(30,30,30)
    Inner.BackgroundTransparency = 0
    Inner.Visible = true
    Inner.ZIndex = 1
    Inner.Parent = ToggleTemp

    local InnerCorner = Instance.new("UICorner")
    InnerCorner.Parent = Inner

    local Toggle = Instance.new("Frame")
    Toggle.Name = "Toggle"
    Toggle.Position = UDim2.new(0.747058809,0,0.483141661,0)
    Toggle.Size = UDim2.new(0.264705896,0,0.344827592,0)
    Toggle.AnchorPoint = Vector2.new(0.5,0.5)
    Toggle.BackgroundColor3 = Color3.fromRGB(124,124,124)
    Toggle.BackgroundTransparency = 0
    Toggle.Visible = true
    Toggle.ZIndex = 1
    Toggle.Parent = Inner

    local ToggleCorner = Instance.new("UICorner")
    ToggleCorner.Parent = Toggle

    local Knob = Instance.new("Frame")
    Knob.Name = "Knob"
    Knob.Position = UDim2.new(0.269480526,0,0.5,0)
    Knob.Size = UDim2.new(0.457792252,0,0.870370388,0)
    Knob.AnchorPoint = Vector2.new(0.5,0.5)
    Knob.BackgroundColor3 = Color3.fromRGB(220,220,220)
    Knob.BackgroundTransparency = 0
    Knob.Visible = true
    Knob.ZIndex = 1
    Knob.Parent = Toggle

    local KnobCorner = Instance.new("UICorner")
    KnobCorner.Parent = Knob

    local KnobAspect = Instance.new("UIAspectRatioConstraint")
    KnobAspect.Parent = Knob

    local Button = Instance.new("TextButton")
    Button.Name = "Button"
    Button.Position = UDim2.new(0.5,0,0.5,0)
    Button.Size = UDim2.new(1,0,1,0)
    Button.AnchorPoint = Vector2.new(0.5,0.5)
    Button.BackgroundTransparency = 1
    Button.Text = ""
    Button.TextColor3 = Color3.fromRGB(0,0,0)
    Button.TextScaled = false
    Button.Font = Enum.Font.SourceSans
    Button.Visible = true
    Button.ZIndex = 1
    Button.Parent = Toggle

    local ToggleAspect = Instance.new("UIAspectRatioConstraint")
    ToggleAspect.Parent = Toggle

    local OuterCorner = Instance.new("UICorner")
    OuterCorner.Parent = ToggleTemp

    local Stroke = Instance.new("UIStroke")
    Stroke.Parent = ToggleTemp

    local TopBar = Instance.new("Frame")
    TopBar.Name = "TopBar"
    TopBar.Position = UDim2.new(0,0,0,0)
    TopBar.Size = UDim2.new(1,0,0.333333343,0)
    TopBar.AnchorPoint = Vector2.new(0,0)
    TopBar.BackgroundTransparency = 1
    TopBar.Visible = true
    TopBar.ZIndex = 1
    TopBar.Parent = ToggleTemp

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Position = UDim2.new(0.235294119,0,0.244444788,0)
    Title.Size = UDim2.new(0.764705896,0,0.5,0)
    Title.AnchorPoint = Vector2.new(0,0)
    Title.BackgroundTransparency = 1
    Title.Text = "Toggle Me!"
    Title.TextColor3 = Color3.fromRGB(255,255,255)
    Title.TextScaled = true
    Title.Font = Enum.Font.GothamBold
    Title.Visible = true
    Title.ZIndex = 1
    Title.Parent = TopBar

    local TitleConstraint = Instance.new("UITextSizeConstraint")
    TitleConstraint.Parent = Title

    local Home = Instance.new("ImageLabel")
    Home.Name = "home"
    Home.Position = UDim2.new(0.0679411069,0,0.154053748,0)
    Home.Size = UDim2.new(0.117647059,0,0.666666687,0)
    Home.AnchorPoint = Vector2.new(0,0)
    Home.BackgroundTransparency = 1
    Home.Image = "rbxassetid://13848371994"
    Home.ImageColor3 = Color3.fromRGB(255,255,255)
    Home.ScaleType = Enum.ScaleType.Stretch
    Home.Visible = true
    Home.ZIndex = 1
    Home.Parent = TopBar

    local TopBarAspect = Instance.new("UIAspectRatioConstraint")
    TopBarAspect.Parent = TopBar

    local toggled = false
    Button.MouseButton1Click:Connect(function()
        toggled = not toggled
        Knob.Position = toggled and UDim2.new(0.73,0,0.5,0) or UDim2.new(0.27,0,0.5,0)
        Toggle.BackgroundColor3 = toggled and Color3.fromRGB(138,138,138) or Color3.fromRGB(124,124,124)
        if callback then callback(toggled) end
    end)

    return ToggleTemp
end

LunoxLib.MakeWindow = MakeWindow
LunoxLib.AddTab = AddTab
LunoxLib.AddToggle = AddToggle

return LunoxLib
