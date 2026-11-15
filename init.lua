require("bootstrap")
require("options")
require("keymaps")

require("pckr").add{
	require("plugins.treesitter"),
	require("plugins.modus-themes"),
	require("plugins.telescope"),
	require("plugins.gitsigns"),
	require("plugins.mason"),
	require("plugins.blink"),
}

