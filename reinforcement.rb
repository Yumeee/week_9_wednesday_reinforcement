require 'httparty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

objects = toronto_wards_json['objects']

def iteration(objects)
  objects.map do |object|
    object['name']
  end
end

puts iteration(objects)
