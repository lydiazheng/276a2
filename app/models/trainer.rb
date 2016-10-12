class Trainer < ApplicationRecord
    has_many :tokimons
    
    validates :name, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false}
	after_initialize :init_config		
	#validates :level, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
	def init_config
      self.level  ||= 0          #will set the default value only if it's nil
    end
end
