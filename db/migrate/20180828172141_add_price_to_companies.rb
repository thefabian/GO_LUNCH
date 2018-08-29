class AddPriceToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_monetize :companies, :price, currency: { present: false }
  end
end
