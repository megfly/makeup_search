class MakeupSearch::API 
  
  def self.get_data 
    response = RestClient.get("https://makeup-api.herokuapp.com/api/v1/products.json")
    product_type_array = JSON.parse(response.body)["results"]
    product_type_array.each do |product|
      Product.new(Product)
end 