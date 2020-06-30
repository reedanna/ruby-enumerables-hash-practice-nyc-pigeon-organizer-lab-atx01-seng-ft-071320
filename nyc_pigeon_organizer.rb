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
    #this is for the top layer of hash--keys are attributes, values are colors/genders/places
    category = key
    value.each do |key, value|
      #second layer of hash--keys are colors/genders/places, values are arrays of pigeon names
      attribute = key
      value.each do |item|
        #these are arrays of pigeon names
        pigeon_list[item][category].push(attribute)
      end
    end
  end
    
  
  #return the pigeon list
  pigeon_list
end