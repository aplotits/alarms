class Alarm < ApplicationRecord
  # belongs_to :visitor
  validates :content, length: { maximum: 5 }
end
