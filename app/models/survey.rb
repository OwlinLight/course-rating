class Survey < ApplicationRecord
  belongs_to :event
  belongs_to :audience
  belongs_to :presenter
end
