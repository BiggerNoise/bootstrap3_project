json.array!(@turds) do |turd|
  json.extract! turd, 
  json.url turd_url(turd, format: :json)
end
