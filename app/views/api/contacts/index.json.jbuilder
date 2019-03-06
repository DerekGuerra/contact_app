json.array! @contacts.each do |contact|
  json.partial! 'contact.json.jbuilder', the_contact: contact
end