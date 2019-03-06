class Contact < ApplicationRecord

  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_prefix
    "+81-" + phone_number
  end
end
