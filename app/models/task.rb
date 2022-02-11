class Task < ApplicationRecord
    belongs_to :journal
    has_many :descriptions, dependent: :destroy
    has_rich_text :description
end
