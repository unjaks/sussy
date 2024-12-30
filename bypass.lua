local yapping = false

local Gaze = [[
Gaze Bypass Tutorial:
"https://youtube.com/shorts/z1yCdkbXTi4?si=f1ol4wCL4jxW3jtP"]]

everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
local GazerHa_Cooldown = 0.4
if not game:IsLoaded() then
    game.Loaded:wait()
end
local guiName = "GazeGayUINOTFemboySexLover"
local coreGay = cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")
if not coreGay:FindFirstChild(guiName) then
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = guiName  
    screenGui.Parent = coreGay
    print("•   Gaze bypass √ loaded.")
else
    print("•   Gaze bypass √ is already executed..")
    return
end

local function fadeTextThatMadeByChatGpt(labeltext)
    local screenGui = Instance.new("ScreenGui")
    local label = Instance.new("TextLabel") -- Corrected label variable name
    screenGui.Parent = coreGay
    label.Parent = screenGui
    label.Size = UDim2.new(0.5, 0, 0.2, 0)  
    label.Position = UDim2.new(0.30, 0, 0.45, 0)  
    label.BackgroundTransparency = 1
    label.TextTransparency = 1
    label.Text = labeltext
    label.TextColor3 = Color3.new(0, 1, 1)  
    label.TextScaled = true
    label.Font = Enum.Font.GothamBlack -- Bold, modern font
    local fadeDuration = GazerHa_Cooldown
    local tweenService = game:GetService("TweenService")
    local fadeIn = tweenService:Create(label, TweenInfo.new(fadeDuration), {TextTransparency = 0})
    fadeIn:Play()
    fadeIn.Completed:Wait()task.wait(fadeDuration)
    local fadeOut = tweenService:Create(label, TweenInfo.new(fadeDuration), {TextTransparency = 1})
    fadeOut:Play()
    fadeOut.Completed:Wait()screenGui:Destroy()
end

if yapping then

fadeTextThatMadeByChatGpt("Made By GazerHa")
fadeTextThatMadeByChatGpt("ROBLOX STOP PATCHING MY OPEN SOURCED SCRIPT \u{1F62D}")
fadeTextThatMadeByChatGpt("Unpatched, but its not good as before.")

fadeTextThatMadeByChatGpt("TO MAKE THE BYPASS WORK\nRead Your Clipboard")

everyClipboard(tostring(Gaze))
task.wait(0.1)
fadeTextThatMadeByChatGpt("READ THE TUTORIAL ON YOUR COPY")
end









-- here



local function isEmoji(c)
    local code = utf8.codepoint(c)  

    
    if (code >= 0x1F600 and code <= 0x1F64F) or  
       (code >= 0x1F300 and code <= 0x1F5FF) or  
       (code >= 0x1F680 and code <= 0x1F6FF) or  
       (code >= 0x1F700 and code <= 0x1F77F) or  
       (code >= 0x1F900 and code <= 0x1F9FF) or  
       (code >= 0x2600 and code <= 0x26FF) or    
       (code >= 0x2700 and code <= 0x27BF) or    
       (code >= 0x1F1E6 and code <= 0x1F1FF) then 
        return true  
    end
    return false  
end




local function Bypass(input)


    
local replacements = {
        
        
        ["0"] = "\xEF\xBC\x90",
["1"] = "\xEF\xBC\x91",
["2"] = "\xEF\xBC\x92",  
["3"] = "\xEF\xBC\x93",  
["4"] = "\xEF\xBC\x94",  
["5"] = "\xEF\xBC\x95",  
["6"] = "\xEF\xBC\x96", 
["7"] = "\xEF\xBC\x97", 
["8"] = "\xEF\xBC\x98",  
["9"] = "\xEF\xBC\x99",  
}

    local lowerInput = input:lower()

    
    for word, replacement in pairs(replacements) do
        lowerInput = lowerInput:gsub("(%s?)(" .. word .. ")(%s?)", function(before, matched, after)
            local modifiedReplacement = replacement
            if before ~= "" then
                modifiedReplacement = modifiedReplacement
            end
            if after ~= "" then
                modifiedReplacement = modifiedReplacement
            end
            return before .. "{" .. modifiedReplacement .. "}" .. after
        end)
    end

    
    local emojiPattern = "[%z\1-\127\194-\244][\128-\191]*"
    local modifiedInput = lowerInput:gsub(emojiPattern, function(c)
        if isEmoji(c) then
            return "{" .. c .. "}"
        end
        return c
    end)

    
    local result = ""
    local insideReplacedWord = false

    for i = 1, #modifiedInput do
        local char = modifiedInput:sub(i, i)

        if char == "{" then
            insideReplacedWord = true
        elseif char == "}" then
            insideReplacedWord = false
        elseif insideReplacedWord then
            result = result .. char
        elseif char == " " then
        result = result .. "\b"
    
        else
            result = result .. char
            
            if i < #modifiedInput and i % 3 == 1 then
    result = result .. ""

            end
        end
    end

    
    result = result:gsub("{", ""):gsub("}", "")
        result = result:gsub("•", "\u{0327}")
    result = result:gsub("i", "ı̊")
    result = result:gsub("a", "å")
    result = result:gsub("e", "e̊")
    result = result:gsub("o", "o̊")
    result = result:gsub("u", "ů")
    
    
    result = result:gsub("|", "\r")

    
    result = result:gsub("\u{0327}", "")
    
    

    
    local A_1 = result
    local A_2 = "All"

    if game:GetService("TextChatService"):FindFirstChild("TextChannels") then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(A_1)
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer( A_1, A_2)
    end
end
    

    
    
    






local gui = Instance.new("ScreenGui")
local GazerMain = Instance.new("Frame")
local TextBax = Instance.new("TextBox")
local chat = Instance.new("TextButton")


gui.Name = "GazerGui"
gui.Parent = coreGay
GazerMain.Size = UDim2.new(0.1, 0, 0.1, 0)
GazerMain.Position = UDim2.new(0.25, 0, 0.25, 0)
GazerMain.BackgroundColor3 = Color3.new(1, 1, 1)
GazerMain.BorderColor3 = Color3.new(0, 0, 0)
GazerMain.BorderSizePixel = 1
GazerMain.Active = true

GazerMain.Parent = gui
TextBax.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBax.Position = UDim2.new(0.1, 0, 0.3, 0)
TextBax.BackgroundColor3 = Color3.new(0, 0, 0)
TextBax.BorderColor3 = Color3.new(0, 0, 0)
TextBax.BorderSizePixel = 1
TextBax.PlaceholderText = "(Chat)"
TextBax.TextColor3 = Color3.new(1, 1, 1)
TextBax.Font = Enum.Font.Code
TextBax.Text = ""
TextBax.TextSize = 15
TextBax.Parent = GazerMain
chat.Size = UDim2.new(0.3, 0, 0.2, 0)
chat.Position = UDim2.new(0.35, 0, 0.7, 0)
chat.BackgroundColor3 = Color3.new(0, 0, 0)
chat.BorderColor3 = Color3.new(0, 0, 0)
chat.BorderSizePixel = 1
chat.Text = "Chat"
chat.TextSize = 14
chat.TextColor3 = Color3.new(1, 1, 1)
chat.Font = Enum.Font.Code
chat.Parent = GazerMain







chat.MouseButton1Click:Connect(function()
    local inputString = TextBax.Text
    Bypass(inputString)
    
end)


-- Credits: AnthonyIsntHere/closet.

local TweenService = game:GetService("TweenService")
local frame = GazerMain
frame.Visible = true
frame.Size = UDim2.new(0.2, 0, 0.2, 0) 
frame.Position = UDim2.new(0.5, 0, 0.7, 0) 
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundTransparency = 1 
local targetPosition = UDim2.new(0.5, 0, 0.5, 0) 
local targetSize = UDim2.new(0.2, 0, 0.2, 0) 
local targetTransparency = 0 
local tweenInfo = TweenInfo.new(
1, -- Duration (in seconds)
Enum.EasingStyle.Quad, 
Enum.EasingDirection.Out)
local positionTween = TweenService:Create(frame, tweenInfo, {Position = targetPosition})
local sizeTween = TweenService:Create(frame, tweenInfo, {Size = targetSize})
local transparencyTween = TweenService:Create(frame, tweenInfo, {BackgroundTransparency = targetTransparency})
positionTween:Play()
sizeTween:Play()
transparencyTween:Play()

local TS = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
function dragify(Frame)
local dragToggle = nil
local dragInput = nil
local dragStart = nil

local startPos = nil
local function updateInput(input)
local Delta = input.Position - dragStart
local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X,
startPos.Y.Scale, startPos.Y.Offset + Delta.Y)

TS:Create(Frame, TweenInfo.new(0.1), {Position = Position}):Play()

end



Frame.InputBegan:Connect(function(input)

if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then

	dragToggle = true

	dragStart = input.Position

	startPos = Frame.Position

	input.Changed:Connect(function()

		if input.UserInputState == Enum.UserInputState.End then

			dragToggle = false

		end

	end)

end

end)



Frame.InputChanged:Connect(function(input)

if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then

	dragInput = input

end

end)



UIS.InputChanged:Connect(function(input)

if input == dragInput and dragToggle then

	updateInput(input)

end

end)

end

dragify(GazerMain)
