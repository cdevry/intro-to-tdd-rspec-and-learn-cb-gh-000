require 'rest-client'
require 'json'

response = RestClient.post("https://api.fullcontact.com/v3/person.enrich",
{
  "phones": [
    "+17018807347"
  ]
}.to_json,
  {
    :authorization => "Bearer {Iq7CLAQ1gSf3DzuFUZvPIUgEDXAzNTgk}"
  })

JSON.parse(response.body)
