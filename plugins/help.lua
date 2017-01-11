do

function run(msg, matches)
if msg.to.type == 'channel' and is_momod(msg) then
  return ''..[[

** SuperGroup English Help Text With English Commands **

⚓️!block
Kicks a user from SuperGroup

⚓️!bot [on|off]
On or off the bot
			
⚓️!kick
Kicks a user from SuperGroup	
			
⚓️!who
Gives you a list of members
			
⚓️!ban
Bans user from the SuperGroup
			
⚓️!unban
Unbans user from the SuperGroup
			
⚓️!id from
Get ID of user message is forwarded from
			
⚓️!promote [username|id]
Promote a SuperGroup moderator
			
⚓️!demote [username|id]
Demote a SuperGroup moderator
						
⚓️!setadmin [username|id]
Promote a SuperGroup admin		
			
⚓️!demoteadmin [username|id]
Demote a SuperGroup admin	
						
⚓️[!setname|!setphoto|!setrules|!setabout]
Sets the chat name, photo, rules, about text
			
⚓️!newlink
Generates a new group link
			
⚓️!link
Retireives the group link
			
⚓️[!lock|!unlock] [link|flood|spam|arabic|english|member|rtl|sticker|contacts|strict|media|bots|fwd|reply|share|tag|number|badwords|cmd|username|all]
Lock group settings

⚓️!price
Gives you the bots price for buy
						
⚓️!setflood [value]
Set [value] as flood sensitivity, Max:20 and Min:2

⚓️!setprice [text]
Set price for selling your bot
			
⚓️!settings
Returns chat settings

⚓️[!silent] [reply on users msg|username|id ]
Silents user

⚓️[!unsilent] [reply on users msg|username|id ]
Unsilents user
			
⚓️!silentlist
Returns mutes or mute lists for chat

⚓️[!whitelist] [reply on users msg|username|id ]
Adds user/bot to whitelist
		
⚓️!banlist
Returns SuperGroup ban list

⚓️!rmsg [value]
Delets groups message by value
			
⚓️!clean [rules|about|modlist|silentlist|deleted|whitelist]
Cleans those you see or (deleted) kicks deleted accounts
			
⚓️!clear members		
Kicks All Members

⚓️!del
Deletes a message by reply
			
⚓️!public [yes|no]
Set chat visibility in pm !chats or !chatlist commands

⚓️!chats
Show list of bot groups in pv
			
⚓️!broadcast [text]
Send this command in PV . the bot well send your massege to all groups and supergroups

⚓️!muteall
Mute's all

⚓️!muteall h m s 
Muteall witn timer
h Hour(s)
m Minute(s)
s Second(s)

⚓️!chat + [text]
Saves a text with its first words name
			
⚓️!chat - [text]
Removes the saved text
			
⚓️!chat rm
Removes all saved texts
			
⚓️!antibot [enable / disable / allow / disallow]
activating anti-bot for let then enter or not fo channels
			
** SuperGroup Commands: (For memebers and moderators!) **

⚓️!tophoto
Converts sticker to photo
			
⚓️!tosticker
Converts photo to sticker

⚓️!weather [location]
Gives you news about that places weathe you want
			
⚓️!version
Displays a general text about the AntiSpam Cli Bot  
			
⚓️!info
Displays general info about the SuperGroup
			
⚓️!admins
Returns SuperGroup admins list
			
⚓️!owner
Returns group owner
			
⚓️!modlist
Returns Moderators list

⚓️!me
Shows your rank
			
⚓️!id
Return SuperGroup ID And user id
			
⚓️!kickme
Kicks user from SuperGroup
			
⚓️!note [text]
Add a note
			
⚓️!mynote
Get note
								
⚓️!rules
Retrieves the chat rules
			
⚓️!price
Gives you the bots price for buy			
						
⚓️!dler [link]
Download files from link specialy from aparat
			
⚓️!time
Shows IRAN's time and date

***********************************

🌹Welcome To AntiSpam_TM Support🌹

Channel : 《 @AntiSpam_TM 》™

Creator : 《 @To_My_Amigos 》

Reports : 《 @To_My_Amigos_Bot 》

😊 Who Start's The Fight Get's Removed 
So Be Friends 😊

Link :

https://telegram.me/joinchat/EkNFij7cWnespVgwzrlABQ

************************************
]]..''

end
end
return {
AntiSpam = "https://bitbucket.org/AntiSpam99/AntiSpam_TM4",
patterns = {"^[!#/](help)$"},
run = run,
}
end

