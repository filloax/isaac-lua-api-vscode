---@diagnostic disable: duplicate-set-field
---@class ImGui
_G.ImGui = {}

---Adds a button.
---@param parentId string The id of the parent element.
---@param elementId string The id of the button.
---@param label? string @default: `""`. The button's label.
---@param clickCallback? nil | fun(clickCount: number) @default: `nil`. If defined, the function is called when the button is clicked on.
---@param isSmall? boolean @default: `false`. If `true`, the button is small.
function ImGui.AddButton(parentId, elementId, label, clickCallback, isSmall)
end

---Adds a callback to an ImGui element. An element can have one callback per type.
---@param elementId string The id of the element that the callback is tied to.
---@param type ImGuiCallback The type of callback to add.
---@param func fun(isChecked: boolean) The function that is tied to the added callback.
function ImGui.AddCallback(elementId, type, func)
end

---Adds a checkbox.
---@param parentId string The id of the parent element.
---@param elementId string The id of the element.
---@param label? string default: `""`. The button's label.
---@param changeCallback? nil | fun(newValue: boolean) default: `nil`. If defined, the function is called when the checkbox is ticked or unticked.
---@param isActive? boolean @default: `false`. If `true`, the checkbox will be checked on creation. If `false`, the checkbox won't be checked upon creation.
function ImGui.AddCheckbox(parentId, elementId, label, changeCallback, isActive)
end

---Adds a combobox element which represents a single line element that allows you to select a value from a dropdown menu.
---@param parentId string The id of the parent element.
---@param elementId string The id of the combobox.
---@param label? string @default: `""`. The combobox's label.
---@param changeCallback nil | fun(selectedIndex: integer, optionValue: string) @default: `nil`. If defined, the function is called when an option is selected.
---@param options? string[] @default: `{}`. A table of strings of each element in the combobox.
---@param selectedIndex? integer @default: `0`. The index of the element in the options table that is initially selected when the combobox is created.
---@param isSlider? boolean @default: `false`. If `true`, instead of a dropdown menu, the values can be selected by interacting with a slider element.
function ImGui.AddCombobox(parentId, elementId, label, changeCallback, options, selectedIndex, isSlider)
end

---Adds a float dragger element.
---@param parentId string The id of the parent element.
---@param elementId string The id of the dragger.
---@param label? string @default: `false`. The dragger's label.
---@param changeCallback? nil | fun(newValue: number) @default: `nil`. If defined, the function is called when the dragger is dragged on.
---@param startingValue? number @default: `0`. The initial value of the dragger.
---@param speed? number @default: `1`. The speed of the dragger.
---@param min? number @default: 0`. The minimum value of the dragger.
---@param max? number @default: `100`. The maximum value of the dragger.
---@param formatting? string @default: `%.3f`. The format specifier used to format the label displaying the current value of the dragger.
function ImGui.AddDragFloat(parentId, elementId, label, changeCallback, startingValue, speed, min, max, formatting)
end

---Adds an integer dragger element.
---@param parentId string The id of the parent element.
---@param elementId string The id of the dragger.
---@param label? string @default: `""`. The dragger's label.
---@param changeCallback? nil | fun(newValue: integer) @default: `nil`. If defined, the function is called when the dragger is dragged on.
---@param startingValue? integer @default: `0`. The initial value of the dragger.
---@param speed? number  @default: `1`. The speed of the dragger.
---@param min? integer  @default: `0`. The minimum value of the dragger.
---@param max? integer  @default: `100`. The maximum value of the dragger.
---@param formatting? string  @default: `%d%`. The format specifier used to format the label displaying the current value of the dragger.
function ImGui.AddDragInteger(parentId, elementId, label, changeCallback, startingValue, speed, min, max, formatting)
end

---Adds a generic element. This is useful for adding simple elements that do not require interaction such as bullets as an element id is not required.
---@param parentId string The id of the parent element.
---@param elementId? string @default: `""`. The id of the element.
---@param elementType ImGuiElement The type of element being created.
---@param label? string @default: `""`. The element's label.
function ImGui.AddElement(parentId, elementId, elementType, label)
end

---Adds a RGB or RGBA selector.
---@param parentId string The id of the parent element.
---@param elementId string The id of the RGB selector.
---@param label? string @default: `""`. The RGB selector's label.
---@param changeCallback? nil | fun(r: number, g: number, b: number) @default: `nil`. If defined, the function is called when a color is selected.
---@param r? number @default: `0`. The initial selected color's red component.
---@param g? number @default: `0`. The initial selected color's green component.
---@param b? number @default: `0`. The initial selected color's blue component.
---@param a? number @default: `1`. The initial selected color's alpha component.
---@overload fun(parentId: string, elementId: string, label?: string, changeCallback?: fun(r: number, g: number, b: number), r?: number, g?: number, b?: number)
function ImGui.AddInputColor(parentId, elementId, label, changeCallback, r, g, b, a)
end

---Adds a controller input element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the controller input.
---@param buttonLabel? string @default: `""`. The controller input's label.
---@param changeCallback? nil | fun(selectedButton: integer) @default: `nil`. If defined, the function is called when a new button is selected.
---@param defaultValue? integer @default: `0`. The initial selected element.
function ImGui.AddInputController(parentId, elementId, buttonLabel, changeCallback, defaultValue)
end

---Adds a float input element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the float input.
---@param label? string @default: `""`. The float input's label.
---@param changeCallback? nil | fun(newValue: number) @default: `nil`. If defined, the function is called when a new value is selected.
---@param defaultValue? number @default: `0`. The starting value of the float input.
---@param step? number @default: `1`. How much the current value is incremented if the player clicks on the plus or minus button.
---@param stepFast? number @default: `100`. TODO: Document me!
function ImGui.AddInputFloat(parentId, elementId, label, changeCallback, defaultValue, step, stepFast)
end

---Adds an integer input element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the integer input.
---@param label? string @default: `""`. The integer input's label.
---@param changeCallback? nil | fun(newValue: integer) @default: `nil`. If defined, the function is called when a new value is selected.
---@param defaultValue? integer @default: `0`. The starting value of the integer input.
---@param step? integer @default: `1`. How much the current value is incremented if the player clicks on the plus or minus button.
---@param stepFast? integer @default: `100`. TODO: Document me! @default: `.
function ImGui.AddInputInteger(parentId, elementId, label, changeCallback, defaultValue, step, stepFast)
end

---Adds an input for keyboard buttons.
---@param parentId string The id of the parent element.
---@param elementId string The id of the keyboard input element.
---@param buttonLabel? string @default: `""`. The keyboard input element's label
---@param changeCallback? nil | fun(key: Keyboard, buttonName: string) @default: `nil`.
---@param defaultValue? number @default: `0`.
function ImGui.AddInputKeyboard(parentId, elementId, buttonLabel, changeCallback, defaultValue)
end

---Adds a text input element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the text input.
---@param label? string @default: `""`. The text input's label.
---@param changeCallback? nil | fun(newValue: string) @default: `nil`. If defined, the function is called when a new value is typed in.
---@param defaultValue? string @default: `""`. The default value of the text input.
---@param hintText? string @default: `""`. The hint text is displayed in the textbox if the player did not type anything in it.
function ImGui.AddInputText(parentId, elementId, label, changeCallback, defaultValue, hintText)
end

---Adds a multiline text input element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the multiline text input.
---@param label? string @default: `""`. The text input's label.
---@param changeCallback? nil | fun(newValue: string) @default: `. If defined, the function is called when a new value is typed in.
---@param defaultValue? string @default: `""`. The default value of the text input.
---@param displayedLines? integer @default: `6`. The amount of lines that the textbox can display.
function ImGui.AddInputTextMultiline(parentId, elementId, label, changeCallback, defaultValue, displayedLines)
end

---Adds a plot histogram element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the histogram.
---@param label? string @default: `""`. The histogram's label.
---@param values? number[] @default: `{}`. The list of values to display on the histogram.
---@param overlayText? string @default: `""`. The overlay text.
---@param minimum? number @default: `FLT_MIN`. The minimum size on the histogram.
---@param maximum? number @default: `FLT_MAX`. The maximum size on the histogram.
---@param height? number @default: `40`. The height of the histogram.
function ImGui.AddPlotHistogram(parentId, elementId, label, values, overlayText, minimum, maximum, height)
end

---Adds a line-diagram element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the line-diagram.
---@param label? string @default: `""`. The line-diagram's label.
---@param values? number[] @default: `{}`. The list of values to display on the line-diagram.
---@param overlayText? string @default: `""`. The overlay text.
---@param minimum? number @default: `FLT_MIN`. The minimum size on the line-diagram.
---@param maximum? number @default: `FLT_MAX`. The maximum size on the line-diagram.
---@param height? number @default: `40`. The height of the line-diagram.
function ImGui.AddPlotLines(parentId, elementId, label, values, overlayText, minimum, maximum, height)
end

---Adds a progress bar element. The progress value must be inbetween 0 and 1.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the progress bar input.
---@param label? string @default: `""`. The progress bar's label. If the string is empty, the progress bar will render over the full width of the parent element.
---@param progress? number @default: `0`. The initial progress value.
---@param overlayText? string @default: `""`. The overlay text. If the overlay text is empty, the progress bar will display the current fill state in percent inside the progress bar (for example, 50%, when the progress is set to 0.5).
function ImGui.AddProgressBar(parentId, elementId, label, progress, overlayText)
end

---Adds a radio buttons element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the radio buttons input.
---@param changeCallback? nil | fun(newValue: number) @default: `nil`. If defined, the function is called when a radio button is selected.
---@param options? string[] @default: `{}`. The list radio buttons to display.
---@param selectedIndex? integer @default: `0`. The index of the initially selected radio button in the options argument.
---@param renderSameLine? boolean @default: `true`. If true, all of the radio buttons will display on the same line.
function ImGui.AddRadioButtons(parentId, elementId, changeCallback, options, selectedIndex, renderSameLine)
end

---Adds a float slider element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the slider.
---@param label? string @default: `""`. The float slider's label.
---@param changeCallback? nil | fun(newValue: number) @default: `nil`. If defined, the function is called when a radio button is selected.
---@param defaultValue? number @default: `0`. The initial value of the slider.
---@param min? number @default: `0`. The minimum value of the slider.
---@param max? number @default: `100`. The maximum value of the slider.
---@param stringFormatting? string @default: `%.3f`. The format specifier used to format the label displaying the current value of the dragger.
function ImGui.AddSliderFloat(parentId, elementId, label, changeCallback, defaultValue, min, max, stringFormatting)
end

---Adds an integer slider element.
---@param parentId string The id of the parent element.
---@param elementId string The element id of the radio buttons input.
---@param label? string @default: ""`. The integer slider's label.
---@param changeCallback? nil | fun(newValue: integer) @default: `nil`. If defined, the function is called when a radio button is selected.
---@param defaultValue? integer @default: 0``. The initial value of the slider.
---@param min? integer @default: `0`. The minimum value of the slider.
---@param max? integer @default: `100`. The maximum value of the slider.
---@param stringFormatting? string @default: `%d%`. The format specifier used to format the label displaying the current value of the dragger.
function ImGui.AddSliderInteger(parentId, elementId, label, changeCallback, defaultValue, min, max, stringFormatting)
end

---Adds a tab.
---@param parentId string The id of the parent element. It must be a tab bar.
---@param elementId string The element of the tab.
---@param label string The tab's label.
function ImGui.AddTab(parentId, elementId, label)
end

---Adds a tab bar.
---@param parentId string The id of the parent element.
---@param elementId string The element of the tab bar.
function ImGui.AddTabBar(parentId, elementId)
end

---Adds a text element.
---@param parentId string The id of the parent element.
---@param text string The element's text.
---@param wrapText? boolean @default: `false`. If true, the text will wrap on the window borders.
---@param elementId? string @default: `""`. The element of the text.
function ImGui.AddText(parentId, text, wrapText, elementId)
end

---Creates an entry to the main menu bar in Repentogon.
---@param elementId string The menu's id.
---@param label? string @default: `""`. The menu's text.
function ImGui.CreateMenu(elementId, label)
end

---Creates a new window. You will need to use `ImGui:LinkToWindowElement()` or `ImGui:SetVisible()` to toggle the visibility of the window.
---@param elementId string The id of the window.
---@param title string @default: `""`. The window's title.
function ImGui.CreateWindow(elementId, title)
end

---Returns true if an element with the provided id exists
---@param elementId string
---@return boolean
function ImGui.ElementExists(elementId)
end

---Returns the player's mouse positions in screen coordinates.
---
---Use this instead of `Input.GetMousePosition()` when working with imgui.
---@return Vector
function ImGui.GetMousePosition()
end

---Returns true if an element with the provided id is visible.
---@param elementId string
---@return boolean
function ImGui.GetMousePosition(elementId)
end

---Returns true if an element with the provided id is a window and is pinined.
---@param elementId string
---@return boolean
function ImGui.GetWindowPinned(elementId)
end

---Closes ImGui
function ImGui.Hide()
end

---Converts ImGui coordinates into World coordinates.
---
---**BUG:** This function does not work correctly when the game's scale factor exceeds MaxRenderScale.
---@param position Vector
---@return Vector
function ImGui.ImGuiToWorld(position)
end

---Connects a Window or Popup element to another element, making said element act as a "toggle" for that window.
---
---**Example:**
---
---```lua
---local imgui = Isaac.GetImGui()
---imgui:CreateMenu("myMenu", "Test Menu")
---imgui:AddElement("myMenu", "myButton", ImGuiElement.MenuItem, "Some Text")
---imgui:CreateWindow("myWindow", "Some Window title")
---imgui:LinkWindowToElement("myWindow", "myButton")
---```
---@param windowId string
---@param elementId string
function ImGui.LinkWindowToElement(windowId, elementId)
end

---Displays a pop-up message window in the style of a notification. Severity values are 0 = Info, 1 = success, 2 = warning, 3 = error.
---@param text string
---@param severity? ImGuiNotificationType @default: `ImGuiNotificationType.INFORMATION`
---@param lifetime? integer @default: `5000`
function ImGui.PushNotification(text, severity, lifetime)
end

---Removes the callback of the given type from the element.
---@param elementId string
---@param callback ImGuiCallback
function ImGui.RemoveCallback(elementId, callback)
end

---Removes a color modifier of the given type from the element.
---@param elementId string
---@param colorType ImGuiColor
function ImGui.RemoveColor(elementId, colorType)
end

---Removes an element.
---@param elementId string
function ImGui.RemoveElement(elementId)
end

---Removes a menu.
---@param menuId string
function ImGui.RemoveMenu(menuId)
end

---Removes all custom defined Imgui elements and resets Imgui back to its original state.
function ImGui.Reset()
end

---Adds a color modifier to the element.
---@param elementId string
---@param colorType ImGuiColor
---@param red number
---@param green number
---@param blue number
---@param alpha? number @default: `1`
function ImGui.SetColor(elementId, colorType, red, green, blue, alpha)
end

---Adds a helpmarker to a given element. A Helpmarker is a (?) element rendered on the right of an element, which when hovered displays a tooltip.
---@param elementId string
---@param text string
function ImGui.SetHelpmarker(elementId, text)
end

---Adds a color modifier to text of the provided element.
---@param elementId string
---@param red number
---@param green number
---@param blue number
---@param alpha? number @default: `1`
function ImGui.SetTextColor(elementId, red, green, blue, alpha)
end

---Adds a tooltip to an element. The tooltip is displayed when hovering over the element.
---@param elementId string
---@param text string
function ImGui.SetTooltip(elementId, text)
end

---Sets an element's visibility.
---@param elementId string
---@param isVisible boolean
function ImGui.SetVisible(elementId, isVisible)
end

---Sets the pinned state of a window, making it visible when the ImGui interface is not active.
---@param elementId string
---@param isPinned boolean
function ImGui.SetWindowPinned(elementId, isPinned)
end

---Sets the position of the window in screen coordinates.
---@param windowId string
---@param x number
---@param y number
function ImGui.SetWindowPosition(windowId, x, y)
end

---Sets the width and height of the window, in pixels.
---@param windowId string
---@param width number
---@param height number
function ImGui.SetWindowSize(windowId, width, height)
end

---Opens ImGui
function ImGui.Show()
end

---Update arbitrary data of a given element.
---
---The dataTypes and the expected newDataValue are evaluated per element. Therefore, if you try to update data of an element where this data is not used,
---this function will throw an error for you.
---@param elementId string
---@param dataType ImGuiData
---@param newDataValue any
function ImGui.UpdateData(elementId, dataType, newDataValue)
end

---Updates the element's text or label.
---@param elementId string
---@param text string
function ImGui.UpdateText(elementId, text)
end

---Converts world coordinates into ImGui coordinates.
---
---**BUG:** This function does not work correctly when the game's scale factor exceeds MaxRenderScale.
---@param position Vector
---@return Vector
function ImGui.WorldToImGui(position)
end
