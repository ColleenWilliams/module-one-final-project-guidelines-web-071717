class WineApi

  def get_all_wine_list_from_api
    #make the web request
    all_wines = HTTParty.get('http://api.snooth.com/wines/?akey=dy7389zagljx71jjbykjwgwox0yviakytisjbzhfgv3rs73p&ip=192.168.3.51&n=250')
    wine_hash = JSON.parse(all_wines.parsed_response)
    wine_data = wine_hash["wines"]
    wines = wine_data.map do |line|
      line["color"] = line["type"]
      w = Wine.find_or_create_by(line.except"type", "msrp")
    end
  wines
  end

end
