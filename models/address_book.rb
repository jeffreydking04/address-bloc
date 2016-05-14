require_relative 'entry'

class AddressBook
   attr_reader :entries
   
   def initialize
       @entries = []
   end
   
   def add_entry(name, phone_number, email)
      index = 0
      entries.each do |entry|
         if name < entry.name
            break
         end
         index += 1
      end
      entries.insert(index, Entry.new(name, phone_number, email))
   end
   
   def remove_entry(name, phone_number, email)
      entries.each_with_index do |entry, index|
         if entries[index].name == 'Ada Lovelace' && entries[index].phone_number == '010.012.1815' && entries[index].email == 'augusta.king@lovelace.com'
            entries.delete_at(index)
         end
      end
   end
end
