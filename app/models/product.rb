class Product < ApplicationRecord
  
  def is_discounted?
    price <= 10
  end

  def tax
    tax = price * 0.09
    tax.round(3)
  end

  def total
    total = price * 1.09
    results = "$#{total}"
  end

  def friendly_time
    created_at.strftime("%B %d, %Y")
  end
end
