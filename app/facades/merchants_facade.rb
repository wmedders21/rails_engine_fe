class MerchantsFacade

  def self.all_merchants
    json = RailsEngineService.json('merchants')
    data = json[:data]
    list = data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
