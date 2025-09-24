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
    TabFrame.Size = UDim2.new(0.913, 0, 0, 25)
    TabFrame.Parent = window.TabsFrame.ScrollingFrame

    local UICorner3 = Instance.new("UICorner")
    UICorner3.CornerRadius = UDim.new(0, 4)
    UICorner3.Parent = TabFrame

    local TabButton = Instance.new("TextButton")
    TabButton.Name = "Button"
    TabButton.BackgroundTransparency = 1
    TabButton.Size = UDim2.new(1, 0, 1, 0)
    TabButton.Parent = TabFrame
    TabButton.Text = ""

    local TabLabel = Instance.new("TextLabel")
    TabLabel.Name = "Label"
    TabLabel.Text = name
    TabLabel.Parent = TabFrame
    TabLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    TabLabel.BackgroundTransparency = 1
    TabLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    TabLabel.Size = UDim2.new(1, 0, 1, 0)
    TabLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabLabel.TextTransparency = 0.4
    TabLabel.TextXAlignment = Enum.TextXAlignment.Left

    local Container = Instance.new("ScrollingFrame")
    Container.Name = "Container"
    Container.Size = UDim2.new(1, 0, 1, 0)
    Container.Position = UDim2.new(0, 0, 0, 0)
    Container.BackgroundTransparency = 1
    Container.Visible = false
    Container.Parent = window.ContentFrame
    Container.ScrollBarThickness = 4
    Container.CanvasSize = UDim2.new(0, 0, 0, 0)
    Container.ScrollingEnabled = false

    local Label = Instance.new("TextLabel")
    Label.Text = name
    Label.BackgroundTransparency = 1
    Label.Position = UDim2.new(0.053, 0, 0.039, 0)
    Label.Size = UDim2.new(0.337, 0, 0.068, 0)
    Label.Parent = Container
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Font = Enum.Font.GothamBold
    Label.TextScaled = true
    local UITextSizeConstraint3 = Instance.new("UITextSizeConstraint")
    UITextSizeConstraint3.MaxTextSize = 20
    UITextSizeConstraint3.Parent = Label

    local function showTab()
        for _, child in ipairs(window.ContentFrame:GetChildren()) do
            if child:IsA("ScrollingFrame") then
                child.Visible = false
            end
        end
        Container.Visible = true

        for _, frame in ipairs(window.TabsFrame:GetChildren()) do
            if frame:IsA("Frame") then
                local lbl = frame:FindFirstChild("Label")
                if lbl then
                    lbl.TextTransparency = 0.4
                end
            end
        end
        TabLabel.TextTransparency = 0
    end

    TabButton.MouseButton1Click:Connect(showTab)
    if isFirst then showTab() end

    local itemsPerRow = 3
    local currentIndex = 0
    local startXScale = 0.026
    local startYScale = 0.144
    local xSpacing = 0.329
    local ySpacing = 0.02
    local elementWidthScale = 0.333
    local elementHeightScale = 0.229

    local function AddElement(element)
        local row = math.floor(currentIndex / itemsPerRow)
        local col = currentIndex % itemsPerRow

        element.Size = UDim2.new(elementWidthScale, 0, elementHeightScale, 0)
        element.Position = UDim2.new(
            startXScale + (col * xSpacing),
            0,
            startYScale + row * (elementHeightScale + ySpacing),
            0
        )
        element.Parent = Container

        currentIndex += 1
        local totalRows = math.ceil(currentIndex / itemsPerRow)

        local canvasHeight = totalRows * (elementHeightScale + ySpacing) * Container.AbsoluteSize.Y + startYScale * Container.AbsoluteSize.Y
        Container.CanvasSize = UDim2.new(0, 0, 0, canvasHeight)
        Container.ScrollingEnabled = canvasHeight > Container.AbsoluteSize.Y
    end

    return {
        Button = TabButton,
        Title = TabLabel,
        Container = Container,
        Show = showTab,
        AddElement = AddElement
    }
end

local function AddToggle(parent, text, callback)
    assert(typeof(text) == "string" and text ~= "", "AddToggle requires a non-empty text argument")

    local ToggleTemp = Instance.new("Frame")
    ToggleTemp.Name = "ToggleTemp"
    ToggleTemp.Position = UDim2.new(0.026, 0, 0.144, 0)
    ToggleTemp.Size = UDim2.new(0.333, 0, 0.229, 0)
    ToggleTemp.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    ToggleTemp.Parent = parent

    local UIAspectRatioConstraint5 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint5.AspectRatio = 1.889
    UIAspectRatioConstraint5.Parent = ToggleTemp

    local UICorner4 = Instance.new("UICorner")
    UICorner4.CornerRadius = UDim.new(0, 12)
    UICorner4.Parent = ToggleTemp

    local UIStroke = Instance.new("UIStroke")
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke.Color = Color3.fromRGB(255, 255, 255)
    UIStroke.Thickness = 2.7
    UIStroke.Parent = ToggleTemp

    local Inner = Instance.new("Frame")
    Inner.Name = "Inner"
    Inner.Position = UDim2.new(0, 0, 0.356, 0)
    Inner.Size = UDim2.new(1, 0, 0.644, 0)
    Inner.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    Inner.Parent = ToggleTemp

    local UICorner5 = Instance.new("UICorner")
    UICorner5.CornerRadius = UDim.new(0, 8)
    UICorner5.Parent = Inner

    local Toggle = Instance.new("Frame")
    Toggle.Name = "Toggle"
    Toggle.Position = UDim2.new(0.747, 0, 0.483, 0)
    Toggle.Size = UDim2.new(0.265, 0, 0.345, 0)
    Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    Toggle.BackgroundColor3 = Color3.fromRGB(124, 124, 124)
    Toggle.Parent = Inner

    local UICorner6 = Instance.new("UICorner")
    UICorner6.CornerRadius = UDim.new(1, 0)
    UICorner6.Parent = Toggle

    local UIAspectRatioConstraint6 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint6.AspectRatio = 2.25
    UIAspectRatioConstraint6.Parent = Toggle

    local Knob = Instance.new("Frame")
    Knob.Name = "Knob"
    Knob.Position = UDim2.new(0.269, 0, 0.5, 0)
    Knob.Size = UDim2.new(0.458, 0, 0.87, 0)
    Knob.AnchorPoint = Vector2.new(0.5, 0.5)
    Knob.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    Knob.Parent = Toggle

    local UICorner7 = Instance.new("UICorner")
    UICorner7.CornerRadius = UDim.new(1, 0)
    UICorner7.Parent = Knob

    local UIAspectRatioConstraint7 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint7.AspectRatio = 1.183
    UIAspectRatioConstraint7.Parent = Knob

    local Button = Instance.new("TextButton")
    Button.Name = "Button"
    Button.Size = UDim2.new(1, 0, 1, 0)
    Button.AnchorPoint = Vector2.new(0.5, 0.5)
    Button.Position = UDim2.new(0.5, 0, 0.5, 0)
    Button.BackgroundTransparency = 1
    Button.Text = ""
    Button.Parent = Toggle

    local TopBar = Instance.new("Frame")
    TopBar.Name = "TopBar"
    TopBar.Size = UDim2.new(1, 0, 0.333, 0)
    TopBar.BackgroundTransparency = 1
    TopBar.Parent = ToggleTemp

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Position = UDim2.new(0.235, 0, 0.244, 0)
    Title.Size = UDim2.new(0.764, 0, 0.5, 0)
    Title.BackgroundTransparency = 1
    Title.Text = text
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.Font = Enum.Font.GothamBold
    Title.Parent = TopBar

    local UITextSizeConstraint2 = Instance.new("UITextSizeConstraint")
    UITextSizeConstraint2.MaxTextSize = 14
    UITextSizeConstraint2.Parent = Title

    local Home = Instance.new("ImageLabel")
    Home.Name = "home"
    Home.Position = UDim2.new(0.068, 0, 0.154, 0)
    Home.Size = UDim2.new(0.117, 0, 0.667, 0)
    Home.BackgroundTransparency = 1
    Home.Image = "rbxassetid://13848371994"
    Home.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Home.ScaleType = Enum.ScaleType.Stretch
    Home.Parent = TopBar

    local toggled = false
    Button.MouseButton1Click:Connect(function()
        toggled = not toggled
        Knob.Position = toggled and UDim2.new(0.73, 0, 0.5, 0) or UDim2.new(0.27, 0, 0.5, 0)
        Toggle.BackgroundColor3 = toggled and Color3.fromRGB(138, 138, 138) or Color3.fromRGB(124, 124, 124)
        if callback then callback(toggled) end
    end)

    return ToggleTemp
end

local function AddButton(parent, text, callback)
    local ButtonTemp = Instance.new("Frame")
    ButtonTemp.Name = "ButtonTemp"
    ButtonTemp.Position = UDim2.new(0.335, 0, 0.144, 0)
    ButtonTemp.Size = UDim2.new(0.333, 0, 0.229, 0)
    ButtonTemp.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    ButtonTemp.Parent = parent

    local UIAspectRatioConstraint56 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint56.AspectRatio = 1.889
    UIAspectRatioConstraint56.Parent = ButtonTemp

    local UICorner6 = Instance.new("UICorner")
    UICorner6.CornerRadius = UDim.new(0, 12)
    UICorner6.Parent = ButtonTemp

    local UIStroke2 = Instance.new("UIStroke")
    UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke2.Color = Color3.fromRGB(255, 255, 255)
    UIStroke2.Thickness = 2.7
    UIStroke2.Parent = ButtonTemp

    local Inner = Instance.new("Frame")
    Inner.Name = "Inner"
    Inner.Position = UDim2.new(0, 0, 0.356, 0)
    Inner.Size = UDim2.new(1, 0, 0.644, 0)
    Inner.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    Inner.Parent = ButtonTemp

    local UICorner9 = Instance.new("UICorner")
    UICorner9.CornerRadius = UDim.new(0, 8)
    UICorner9.Parent = Inner

    local ButtonFrame = Instance.new("Frame")
    ButtonFrame.Parent = Inner
    ButtonFrame.Size = UDim2.new(0.86,0,0.457,0)
    ButtonFrame.Position = UDim2.new(0.498,0,0.461,0)
    ButtonFrame.AnchorPoint = Vector2.new(0.5,0.5)
    ButtonFrame.BackgroundColor3 = Color3.fromRGB(124,124,124)

    local UICorner8 = Instance.new("UICorner")
    UICorner8.CornerRadius = UDim.new(0,4)
    UICorner8.Parent = ButtonFrame

    local Button = Instance.new("TextButton")
    Button.Parent = ButtonFrame
    Button.BackgroundTransparency = 1
    Button.AnchorPoint = Vector2.new(0.5,0.5)
    Button.Position = UDim2.new(0.5,0,0.5,0)
    Button.Size = UDim2.new(1,0,1,0)
    Button.Text = ""

    local TopBar = Instance.new("Frame")
    TopBar.Name = "TopBar"
    TopBar.Size = UDim2.new(1, 0, 0.333, 0)
    TopBar.BackgroundTransparency = 1
    TopBar.Parent = ButtonTemp

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Position = UDim2.new(0.235, 0, 0.244, 0)
    Title.Size = UDim2.new(0.764, 0, 0.5, 0)
    Title.BackgroundTransparency = 1
    Title.Text = text
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.Font = Enum.Font.GothamBold
    Title.Parent = TopBar

    local UITextSizeConstraint22 = Instance.new("UITextSizeConstraint")
    UITextSizeConstraint22.MaxTextSize = 14
    UITextSizeConstraint22.Parent = Title

    local Home = Instance.new("ImageLabel")
    Home.Name = "Home"
    Home.Position = UDim2.new(0.068, 0, 0.154, 0)
    Home.Size = UDim2.new(0.117, 0, 0.667, 0)
    Home.BackgroundTransparency = 1
    Home.Image = "rbxassetid://13848371994"
    Home.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Home.ScaleType = Enum.ScaleType.Stretch
    Home.Parent = TopBar

    Button.MouseButton1Click:Connect(function()
        if callback then callback() end
    end)

    return ButtonTemp
end

local function Notification(title, description, duration)
    duration = duration or 3

    local ScreenGui = game.CoreGui:FindFirstChild("Lunox")

    local notif = Instance.new("Frame")
    notif.Size = UDim2.new(0, 250, 0, 60)
    notif.Position = UDim2.new(1, 10, 1, -70)
    notif.AnchorPoint = Vector2.new(0, 0)
    notif.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    notif.BorderSizePixel = 0
    notif.Parent = ScreenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = notif

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -10, 0, 25)
    titleLabel.Position = UDim2.new(0, 5, 0, 5)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 16
    titleLabel.Text = title
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = notif

    local descLabel = Instance.new("TextLabel")
    descLabel.Size = UDim2.new(1, -10, 0, 25)
    descLabel.Position = UDim2.new(0, 5, 0, 30)
    descLabel.BackgroundTransparency = 1
    descLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    descLabel.Font = Enum.Font.SourceSans
    descLabel.TextSize = 14
    descLabel.Text = description
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.TextWrapped = true
    descLabel.Parent = notif

    local tweenService = game:GetService("TweenService")
    local tweenIn = tweenService:Create(notif, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(1, -260, 1, -70)})
    tweenIn:Play()

    task.delay(duration, function()
        local tweenOut = tweenService:Create(notif, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(1, 10, 1, -70)})
        tweenOut:Play()
        tweenOut.Completed:Connect(function()
            notif:Destroy()
        end)
    end)
end

LunoxLib.MakeWindow = MakeWindow
LunoxLib.AddTab = AddTab
LunoxLib.AddToggle = AddToggle
LunoxLib.Notification = Notification
LunoxLib.AddButton = AddButton

return LunoxLib
