# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :location
  def city
    location.name
  end
end
