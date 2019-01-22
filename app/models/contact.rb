class Contact < ApplicationRecord

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    if first_name == "Smitty" && last_name == "Werbenjagermanjensen"
      "This contact's name is #{first_name} #{last_name}, and HE WAS NUMBER 1!" 
    else
      "This contact's name is #{first_name} #{last_name}." 
    end
  end

  def japan_phone
    "+81 #{phone_number}"
  end

end
