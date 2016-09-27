local function run(msg, matches)
 local makan = 265368212
   local hash = 'rank:variables'
   local text = ''
     local value = redis:hget(hash, msg.from.id)
      if not value then
         if msg.from.id == tonumber(makan) then 
            text = text..'اودافظ بابایی 😢\n\n'
          elseif is_admin2(msg.from.id) then
            text = text..'ممه نداشتی نه ؟ 😢 \n\n'
           elseif is_owner2(msg.from.id, msg.to.id) then
            text = text..'ممه نداشتی نه ؟ 😢 \n\n'
          elseif is_momod2(msg.from.id, msg.to.id) then
            text = text..'ممه نداشتی نه ؟ 😢 \n\n'
      else
            text = text..'ممه نداشتی نه ؟ 😢\n\n'
       end
       else
        text = text..'ممه نداشتی نه ؟ 😢 '..value..'  \n\n'
      end
 return text
     
 end
 
 return {
   patterns = {
 
 
 "^[Bb]y$",
 "^بای$",
 "^by",
 
   }, 
   run = run 
 }
