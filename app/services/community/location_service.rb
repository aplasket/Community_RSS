class LocationService 
  def conn
    Faraday.new(url: "http://maps.googleapis.com") do |f|
      f.params["key"] = ENV["googskey"]
    end
  end

  def get_url
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def location_search(zip)
    get_url("/maps/api/geocode/json?address=80226")
  end
end