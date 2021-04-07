# rails g model Item title description:text image_url user:references

class Item < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, length: { minimum: 10 }, allow_blank: true
end
