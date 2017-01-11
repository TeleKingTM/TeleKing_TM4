-- weather
local function get_weather(location)
  print("Finding weather in ", location)
  local BASE_URL = "http://api.openweathermap.org/data/2.5/weather"
  local url = BASE_URL
  url = url..'?q='..location..'&APPID=eedbc05ba060c787ab0614cad1f2e12b'
  url = url..'&units=metric'
  local b, c, h = http.request(url)
  if c ~= 200 then return nil end

   local weather = json:decode(b)
   local location = weather.name
   local country = weather.sys.country
   local temp = 'Now Temperatore At '..location..' Is '..weather.main.temp..' Centigrade\n____________________\n'
   local conditions = 'Main Weathers Condition Is : '

   if weather.weather[1].main == 'Clear' then
     conditions = conditions .. 'Clear ☀\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM'
   elseif weather.weather[1].main == 'Clouds' then
     conditions = conditions .. 'Cloudy ☁☁\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM'
   elseif weather.weather[1].main == 'Rain' then
     conditions = conditions .. 'Rainy ☔\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM'
   elseif weather.weather[1].main == 'Thunderstorm' then
     conditions = conditions .. 'Windy ☔☔☔☔\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM'
   elseif weather.weather[1].main == 'Mist' then
     conditions = conditions .. 'Foggy 💨\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM'
   elseif weather.weather[1].main == 'Snow' then
	 conditions =  conditions .. 'Snowy ❄️\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM'
   elseif jtab.weather[1].main == 'Extreme' then
	 conditions = conditions ..'Extreme ⛈\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM'
   elseif jtab.weather[1].main == 'Additional' then
	 conditions = conditions ..'Additional 🌦\nCreated By @To_My_Amigos\nOur Channel @AntiSpam_TM'
  end

  return temp .. '\n' .. conditions
end
-- weather
local function run(msg, matches)
if matches[1] == 'weather' then
    location = matches[2]
  local wtext = get_weather(location)
  if not wtext then
    wtext = 'Place Not Found'
  end
  return wtext
end
end

return {           
patterns = {

"^[!/#]([Ww]eather) (.*)$"
},
run = run
}