class Tokimon < ApplicationRecord
    belongs_to :trainer
    
    validates :name, presence: true, length: { maximum: 20 }
	validates :height, presence: true, :numericality => { :less_than_or_equal_to => 100 }
	validates :weight, presence: true, :numericality => { :less_than_or_equal_to => 100 }
	validates :fire, presence: true, :numericality => { :less_than_or_equal_to => 100 }
	validates :fight, presence: true, :numericality => { :less_than_or_equal_to => 100 }
	validates :fly, presence: true, :numericality => { :less_than_or_equal_to => 100 }
	validates :water, presence: true, :numericality => { :less_than_or_equal_to => 100 }
	validates :electric, presence: true, :numericality => { :less_than_or_equal_to => 100 }
	validates :freeze, presence: true, :numericality => { :less_than_or_equal_to => 100 }
	validates :trainer_id, presence: true
end
