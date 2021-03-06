class MakeupSearch::API 
  
  def self.get_data 
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)[21..30]
      response.each do |makeup|
        
        name = makeup["name"]
        brand = makeup["brand"]
        product_type = makeup["product_type"]
        description = makeup["description"]
        
        MakeupSearch::Makeup.new(name, brand, product_type, description)
        
    end 
    
  end 
end 
