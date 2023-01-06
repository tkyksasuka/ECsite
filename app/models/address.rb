class Address < ApplicationRecord
  belongs_to :custmer

def address_display
  '〒' + postal_code + ' ' + address + ' ' + name
end

end
