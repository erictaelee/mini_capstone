class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, length: { in: 10..500 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end
  
  def is_discounted
    if price < 10
      return true
    else
      return false
    end
  end

 
  def tax
    price * 0.09
  end

  def total
    tax + price
  end
end
