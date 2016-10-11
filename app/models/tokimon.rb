class Tokimon < ApplicationRecord
    belongs_to:trainer
    validates :name, presence: true, length: { maximum: 50 }
    validates :fly, :inclusion => {:in => [0,100]}
    validates :fight, :inclusion => {:in => [0,100]}
    validates :fire, :inclusion => {:in => [0,100]}
    validates :water, :inclusion => {:in => [0,100]}
    validates :electric, :inclusion => {:in => [0,100]}
    validates :freeze, :inclusion => {:in => [0,100]}
end
