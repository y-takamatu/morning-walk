class Walk < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one_attached :image

  with_options presence: true do
    validates :time
    validates :content
    validates :start_time
  end

end
