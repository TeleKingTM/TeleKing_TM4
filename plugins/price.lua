 local function run(msg, matches) 
if matches[1] == "setprice" then 
if not is_admin1(msg) then 
return '--------------------\nYou Are Not Sudo Or Admin\n--------------------\n\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM' 
end 
local price = matches[2] 
redis:set('bot:price',price) 
return '--------------------\nYour Price Text Has Been Saved\n--------------------\n\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM' 
end 
if matches[1] == 'price' then 
    local hash = ('bot:price') 
    local price = redis:get(hash) 
    if not price then 
    return '----------\nNot Set\n----------' 
    else 
    reply_msg(msg.id, price, ok_cb, false) 
    end 
    end 
if matches[1] == 'delprice' then 
if not is_admin1(msg) then 
return '--------------------\nYou Are Not Sudo Or Admin\n--------------------\n\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM' 
end 
    local hash = ('bot:price') 
    redis:del(hash) 
return '----------\nDeleted\n----------' 
end 
end 
return { 
patterns ={ 
"^[!#/](setprice) (.*)$", 
"^[!#/](price)$",
"^[!#/](delprice)$", 
}, 
run = run 
}