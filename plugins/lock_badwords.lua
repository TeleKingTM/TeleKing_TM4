local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_badwords'] then
                lock_badwords = data[tostring(msg.to.id)]['settings']['lock_badwords']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_badwords == "yes" then
    send_large_msg(get_receiver(msg))
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "(ک*س)$",
    "کیر",
	"کص",
	"کــــــــــیر",
	"کــــــــــــــــــــــــــــــیر",
	"کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
    "ک×یر",
	"ک÷یر",
	"ک*ص",
	"کــــــــــیرر",
    "[Kk]ir",
	"کس ننه",
	"حرومزاده",
	"ننه سگ",
	"خواه رکونی",
	"خارتو گاییدم",
	"خوار جنده",
	"حروم",
    "گایید",
	"خارکصه",
	"خارکسه",
	"خوارکسه",
	"خوارکصه",
	"خوارکسته",
	"خوارکصته",
	"خارکسته",
	"خارکصته",
    "گاییدمت",
	"کستو",
    "نکص",
	"کسکش",
    "نکسیم",
	"کس ننت",
	"کس ننه ت",
	"کس خواهرت",
	"ننه جنده",
	"ننه پولی",
	"کون",
	"کس (.*)",
    "نکس",
    "نگصیم",
    "میگامت",
	"[Kk]os",
    "[Aa]ss",
    "[Pp]enis",
    "[Ff]ucker",
    "[Mm][Oo][Tt][Hh][Ee][Ff][Uu][Cc][Kk][Ee][Rr]",
    "[Pp]enies",
    "[Pp]enise",
    "[Ww]hore",
    "[Aa]sshole",
	"[Ff]uck (.*)",
	"[Vv]agina",
	"[Bb]itch",
	"[Ss]ik",
	"سیکتیر",
	"[Ss]iktir",
	"جنده",
  },
  run = run
}