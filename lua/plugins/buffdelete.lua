return {
	"famiu/bufdelete.nvim",
	lazy = false,
  keys = {
    { "<leader>bc", "<cmd>Bwipeout<cr>", desc = "Close current" },
		{ "<leader>ba", "<cmd>%Bwipeout<cr>", desc = "Close all" },
		{ "<leader>bo", '<cmd>%Bdelete | e # | normal `"<cr>', desc = "Close others" },
  }
}


