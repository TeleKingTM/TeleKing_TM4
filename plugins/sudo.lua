-- check moderation plugin
do
	
local function parsed_url(link)
  local parsed_link = URL.parse(link)
  local parsed_path = URL.parse_path(parsed_link.path)
  return parsed_path[2]
end

end


function run(msg, matches)

   --Get plugin:
   if matches[1] == "get" then
    local file = matches[2]
    if is_sudo(msg) or is_vip(msg) then
      local receiver = get_receiver(msg)
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
    end
  end
   --Get plugin.
    local data = load_data(_config.moderation.data)
    local receiver = get_receiver(msg)

		if matches[1] == 'rem' and matches[2] then
			-- Group configuration removal
			data[tostring(matches[2])] = nil
			save_data(_config.moderation.data, data)
			local groups = 'groups'
			if not data[tostring(groups)] then
				data[tostring(groups)] = nil
				save_data(_config.moderation.data, data)
			end
			data[tostring(groups)][tostring(matches[2])] = nil
			save_data(_config.moderation.data, data)
			send_large_msg(receiver, 'Chat '..matches[2]..' Removed')
		end



end


return {
  patterns = {
	"^[#!/](rem) (%d+)$",
		    "^[#!/](get) (.*)$",
  },
  run = run
}