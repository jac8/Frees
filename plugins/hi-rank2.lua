local function run(msg, matches)
 local makan = 253980997
   local hash = 'rank:variables'
   local text = ''
     local value = redis:hget(hash, msg.from.id)
      if not value then
         if msg.from.id == tonumber(makan) then 
            text = text..'سلام ستی جون 😍 \n\n'
          elseif is_admin2(msg.from.id) then
            text = text..'سلام \n\n'
           elseif is_owner2(msg.from.id, msg.to.id) then
            text = text..'سلام \n\n'
          elseif is_momod2(msg.from.id, msg.to.id) then
            text = text..'سلام \n\n'
      else
            text = text..'سلام\n\n'
       end
       else
        text = text..'سلام ممه دالی ؟😢 '..value..'  \n\n'
      end
 return text
     
 end
 
 return {
   patterns = {
 
 
 "^[Ss]lm$",
 "^سلام$",
 "^salam",
 
   }, 
   run = run 
 }
