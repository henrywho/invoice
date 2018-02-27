class LineItem < ApplicationRecord
  has_paper_trail

  belongs_to :campaign
end
