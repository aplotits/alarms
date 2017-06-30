class Alarm < ApplicationRecord
  validates :content, length: { maximum: 5 }
end
