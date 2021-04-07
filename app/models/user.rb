# frozen_string_literal: true

# rails g model User first_name last_name email

class User < ApplicationRecord
  has_many :items, dependent: :destroy
end
