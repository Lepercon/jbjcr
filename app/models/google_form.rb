class GoogleForm < ApplicationRecord
validates :formalname, length: { minimum: 3 }
validates :formallink, presence: :true
validates :description, presence: :true

end
