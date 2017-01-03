local lgi = require 'lgi'
local gtk = lgi.require('Gtk', '3.0')

local app = gtk.Application{ application_id = 'myapp.test' }

function app:on_activate()
    --local entry = gtk.Entry{}
    local window = gtk.Window{
        application = self,
        title = 'test',
        default_width = 300, default_height = 480,
        --child = entry
    }
    window:show_all()
end

app:run { arg[0], ... }
