def nyc_pigeon_organizer(data)
  # this is where the output hash will go
  pigeon_list = {}
  
  #this is for saving values between enumerables
  category = ""
  attribute = ""
  
  data.each do |key, value|
    #this is for the top layer of hash--keys are attributes, values are colors/genders/places
    value.each do |key, value|
      #second layer of hash--keys are colors/genders/places, values are arrays of pigeon names
      value.each do |item|
        #these are arrays of pigeon names
        if pigeon_list.any?(item) == false
          #checks to see if the name is in the pigeon list already, and if not...
          pigeon_list[item] = {
            :color => [],
            :gender => [],
            :lives => []
          }
          #adds it
        end
      end
    end
  end
  
  data.each do |key, value|
    
  
  #return the pigeon list
  print pigeon_list
end

nyc_pigeon_organizer(
  pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
})
