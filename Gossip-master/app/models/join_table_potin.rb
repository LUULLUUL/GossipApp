class JoinTablePotin < ApplicationRecord
    belongs_to :potin, optional: true
    belongs_to :tag, optional: true
end
