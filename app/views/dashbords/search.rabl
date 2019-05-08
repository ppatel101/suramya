collection :@members
attributes :id, :flat, :name_in_english, :contact_no1, :contact_no2
child(:vehicles) { attributes :number, :vehicle_type }