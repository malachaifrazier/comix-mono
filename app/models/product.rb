# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id           :bigint           not null, primary key
#  age_rating   :string
#  description  :text
#  name         :string
#  page_count   :integer
#  price        :decimal(5, 2)
#  release_date :datetime
#  slug         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  store_id     :bigint           not null
#
# Indexes
#
#  index_products_on_store_id  (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (store_id => stores.id)
#
class Product < ApplicationRecord
  include Sluggable

  belongs_to :store
  has_many :collaborations, dependent: :destroy
  has_many :creator_profiles, through: :collaborations

  has_many :product_genres, dependent: :destroy
  has_many :genres, through: :product_genres

  has_one_attached :issue_cover, dependent: :destroy
  has_one_attached :file_attachment, dependent: :destroy
end
