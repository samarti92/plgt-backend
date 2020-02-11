class User < ApplicationRecord
  def city
    location.name
  end
end
