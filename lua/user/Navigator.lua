local status_ok, navigator = pcall(require, "navigator")
if not status_ok then
  return
end

require('Navigator').setup()

