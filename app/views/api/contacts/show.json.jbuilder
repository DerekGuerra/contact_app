json.id @contact.id
json.first_name @contact.first_name
json.last_name @contact.last_name
json.email @contact.email
json.phone_number @contact.phone_number
json.created_at @contact.created_at

json.formatted do
  json.full_name @contact.full_name
  json.created_at @contact.friendly_created_at
  json.japan_phone_number @contact.japan_prefix  
end