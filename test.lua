local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSource/Rayfield/main/source"))()

local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system
   }
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Section Example")

Rayfield:Notify({
   Title = "Notification Title",
   Content = "Notification Content",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
            print("The user tapped Okay!")
         end
      }
   },
})

local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
      -- The function that takes place when the button is pressed
      print("Button pressed!")
   end,
})

Button:Set("Button Example Updated")

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- Identifier for the configuration file
   Callback = function(Value)
      -- The function that takes place when the toggle is pressed
      -- The variable (Value) is a boolean indicating the toggle state
      print("Toggle state: ", Value)
   end,
})

Toggle:Set(false)

local ColorPicker = Tab:CreateColorPicker({
   Name = "Color Picker",
   Color = Color3.fromRGB(255, 255, 255),
   Flag = "ColorPicker1", -- Identifier for the configuration file
   Callback = function(Value)
      -- The function that takes place every time the color picker is moved/changed
      -- The variable (Value) is a Color3 value based on the selected color
      print("Color selected: ", Value)
   end,
})

ColorPicker:Set(Color3.fromRGB(255, 255, 255))

local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- Identifier for the configuration file
   Callback = function(Value)
      -- The function that takes place when the slider changes
      -- The variable (Value) is a number indicating the slider value
      print("Slider value: ", Value)
   end,
})

Slider:Set(10) -- The new slider integer value

local Input = Tab:CreateInput({
   Name = "Input Example",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      -- The function that takes place when the input is changed
      -- The variable (Text) is a string for the value in the text box
      print("Input text: ", Text)
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1", "Option 2"},
   CurrentOption = {"Option 1"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- Identifier for the configuration file
   Callback = function(Option)
      -- The function that takes place when the selected option is changed
      -- The variable (Option) is a table of strings for the current selected options
      print("Selected option: ", Option)
   end,
})

Dropdown:Set({"Option 2"}) -- The new list of options

print("Current Toggle Value: ", Toggle.CurrentValue)
print("Current Dropdown Option: ", Dropdown.CurrentOption)

Rayfield:Destroy()
