class Product < ApplicationRecord
  # Create a model method called is_discounted? that returns true if an item is under $10 and false otherwise.
  #         b. Create a model method called tax which will return the tax that would be charged for a particular product. (Assume a 9% tax rate.)
  #         c.  Create a model method called total which will return the sum of the price + tax.
  #          d.  Modify the products controller show action to display these model methods.
  
  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  

end
