return {
  "tamton-aquib/mpv.nvim",
  config = function()
    local play_conf = {
      audio_folder = "~/Music/",
      play_file = "ambient.opus",
    }
    local play_id = 0
    local path_query = string.format("cd %s", play_conf.audio_folder)
    local play_query = string.format("mpv --no-video %s", play_conf.play_file)
    vim.keymap.set("n", "<leader>pa", function()
      vim.cmd(path_query)
      play_id = vim.fn.jobstart(play_query)
      vim.cmd("cd ~/")
      vim.cmd('echo "Enjoy your coding time!"')
    end, { desc = "Start some Godlike ambient" })
    vim.keymap.set("n", "<leader>ps", function()
      vim.fn.jobstop(play_id)
      vim.cmd('echo "Just keep it simple"')
    end, { desc = "Stop this Godlike ambient!" })
  end,
}
