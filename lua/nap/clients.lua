local fn = vim.fn


local init = function (location)

  local postfix = "/plugin/nap_t9.vim"
  local idx = string.len(location) - string.len(postfix)
  local base_path = string.sub(location, 1, idx)
  local config = base_path .. "/config/config.json"
  local lines = fn.readfile(config)
  local json = table.concat(lines, "")
  local data = fn.json_decode(json)
  vim.g.nap_settings_private = data

end



return {
  init = init,
}
