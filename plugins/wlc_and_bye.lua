local function run(msg, matches)
    if matches [1] == "chat_del_user" or matches [1] == "channel_kick" or matches [1] == "kick_user" then 
     local text = 'Bye Dear Member'..'\n'..'\n'
	 ..'Your Specifications'..'\n'..'\n'
	 ..'Name :  '..msg.action.user.print_name..'\n'
     ..'Username  : @'..(msg.action.user.username or " You Don't Have")..'\n'
     ..'ID : '..msg.action.user.id..'\n'
     ..'-------------'..'\n'
     ..'Groups Name : '..msg.to.title..'\n'
     ..'Groups ID : '..msg.to.id..'\n'
	 ..'-------------'..'\n'
	 ..'You Are Not In Our Group Anymore'..'\n'
	 ..'Channel : @AntiSpam_TM'..'\n'..'\n' 
     return reply_msg(msg.id, text, ok_cb, false)
     end      
	 
    if matches[1] == "chat_add_user" then 
     local text = 'Hello Dear Member Welcome :)'..'\n'..'\n'
     ..'Your Specifications'..'\n'..'\n'
     ..'Name :  '..msg.action.user.print_name..'\n'
     ..'Username  : @'..(msg.action.user.username or " You Don't Have")..'\n'
     ..'ID : '..msg.action.user.id..'\n'
     ..'-------------'..'\n'
     ..'Groups Name : '..msg.to.title..'\n'
     ..'Groups ID : '..msg.to.id..'\n'
     ..'-------------'..'\n'
     ..'Your Reagents Name : '..msg.from.print_name..'\n'
     ..'Your Reagents Username : @'..(msg.from.username or " Does't Have")..'\n'
     ..'Your Reagents ID : '..msg.from.id..'\n'
     ..'-------------'..'\n'
     ..'Channel : @AntiSpam_TM'..'\n'..'\n'
     return reply_msg(msg.id, text, ok_cb, false)
     end      
       if matches[1] == "chat_add_user_link" then
        local text = 'Hello Dear Member Welcome :)'..'\n'..'\n'
     ..'Your Specifications'..'\n'..'\n'
     ..'Name  :  '..msg.from.print_name..'\n'
     ..'Username : @'..(msg.from.username or " You Don't Have ")..'\n'
     ..'ID : '..msg.from.id..'\n'
     ..'-------------'..'\n'
     ..'Groups Name : '..msg.to.title..'\n'
     ..'Groups ID : '..msg.to.id..'\n'
     ..'-------------'..'\n'
     ..'Channel : @AntiSpam_TM'..'\n'..'\n'
        return reply_msg(msg.id, text, ok_cb, false)
		end
		end
		
		return {

 AntiSpam_TM = {
   "Created by: @To_My_Amigos",
   "CopyRight all right reserved",
 },
 patterns = {

  "^!!tgservice (chat_del_user)$",
  "^!!tgservice (channel_kick)$",
  "^!!tgservice (kick_user)$",
  "^!!tgservice (chat_add_user)$",
  "^!!tgservice (chat_add_user_link)$",

 },
 run = run,
}