def nyc_pigeon_organizer(data)
  output = {}

  data.each do |key1, val1|
    val1.each do |key2, val2|
      val2.each do |name|
        output[name] ||= {}
        output[name][key1] ||= []
        output[name][key1] << key2.to_s
      end
    end
  end
  output
end
