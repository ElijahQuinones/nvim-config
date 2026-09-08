return {
    'lukas-reineke/indent-blankline.nvim', version = '*',
    dependencies = {},
    config = function()
        require("ibl").setup()
    end
}
