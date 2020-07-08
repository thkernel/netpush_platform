class Contact < ApplicationRecord
  belongs_to :contact_book
  belongs_to :user
end
