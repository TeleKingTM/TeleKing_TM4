local function chat_list(msg)
    local data = load_data(_config.moderation.data)
        local groups = 'groups'
        if not data[tostring(groups)] then
                return 'No Groups At The Moment'
        end
        local message = 'List of your bot Groups:\n\n '
        for k,v in pairs(data[tostring(groups)]) do
                local settings = data[tostring(v)]['settings']
                for m,n in pairsByKeys(settings) do
                        if m == 'set_name' then
                                name = n
                        end
                end

                message = message .. '️ '.. name .. ' (ID: ' .. v .. ')\n\n '
        end
        local file = io.open("./system/chats/lists/listed_groups.txt", "w")
        file:write(message)
        file:flush()
        file:close()
        return message
end
local function run(msg, matches)
  if msg.to.type ~= 'chat' or is_sudo(msg) and is_realm(msg) then
	 local data = load_data(_config.moderation.data)
  if is_sudo(msg) or is_vip(msg) then
    if matches[1] == 'link' and data[tostring(matches[2])] then
        if is_banned(msg.from.id, matches[2]) then
	    return 'You Are In Ban'
	 end
      if is_gbanned(msg.from.id) then
            return 'You Are In Globalban Or Superban'
      end
      if data[tostring(matches[2])]['settings']['lock_member'] == 'yes' and not is_owner2(msg.from.id, matches[2]) then
        return 'Group is private.'
      end
          local chat_id = "chat#id"..matches[2]
          local user_id = "user#id"..msg.from.id
   	  chat_add_user(chat_id, user_id, ok_cb, false)   
	  local group_link = data[tostring(matches[2])]['settings']['set_link']
      local group_name = data[tostring(matches[2])]['settings']['set_name']
	  return "Group Link Is:\n"..group_link.."\n\n (Group name:"..group_name..")\n"
	  
    elseif matches[1] == 'link' and not data[tostring(matches[2])] then

         	return "Group Not Found"
         end
    end
  end

     if matches[1] == 'groups' or matches[1] == 'chats' then
      if is_sudo(msg) and msg.to.type == 'chat' then
         return chat_list(msg)
       elseif msg.to.type ~= 'chat' then
         return chat_list(msg)
      end
 end
 
 if matches[1] == 'help' and msg.to.type == 'user' then
		text = "Welcome To My Bot\n\nTo Get A List Of Bot Groups Use\n\n/chats\n\nOr\n\n/groups\n\nFor List Of Chats\n\nOr Use\n\n/version\n\nTo Get Informations About The AntiSpam Cli Bot\n\nCreated By : @yasin_shadow2017\n\nOur Channel : @TeleKing_TM\n\n Join Us ."
     	return text
end

 end
return {
    description = "See link of a group and groups list",
    usage = "!link ID && !groups",
    advan = {
    	"Created by: @yasin_shadow2017",
    	"Powered by: @TeleKing_TM",
    	"CopyRight all right reserved",
    },
patterns = {
	"^[!#/]([Ll]ink) (.*)$",
	"^[!#/]([Gg]roups)$",
	"^[!#/]([Cc]hats)$",
	"^[!#/]([Hh]elp)$",
	},
run = run
}
