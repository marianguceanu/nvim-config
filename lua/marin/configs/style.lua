require("marin.configs.themes.default")
require("marin.configs.themes.onedark")
require("marin.configs.themes.tokyonight")
require("marin.configs.themes.dracula")

local function setup(theme)
	if theme == "default" then
		Default()
		return
	end
	if theme == "onedark" then
		OneDark()
		return
	end
	if theme == "tokyonight" then
		TokyoNight()
		return
	end
	if theme == "dracula" then
		Dracula()
		return
	end
end

setup("onedark")
