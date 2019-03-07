json.id the_contact.id
json.first_name the_contact.first_name
json.last_name the_contact.last_name
json.middle_name the_contact.middle_name
json.email the_contact.email
json.phone_number the_contact.phone_number
json.biography the_contact.bio
json.created_at the_contact.created_at

json.formatted do
  json.full_name the_contact.full_name
  json.created_at the_contact.friendly_created_at
  json.japan_phone_number the_contact.japan_prefix  
end