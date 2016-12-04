def nyc_pigeon_organizer(data)
  new_hash = {}

  data[:gender].each do |key, value|
   value.each do |name|
     new_hash[name]= {:color => [],:gender => [], :lives =>[]}
     end
   end

   data.each do |key, hash| # color, etc, hash
     hash.each do |type, name| # purple, array
       name.each do |pigeon| # name array, each name
         if new_hash[pigeon]
           new_hash[pigeon][key] << type.to_s
         end
       end
     end
   end

  new_hash
end
