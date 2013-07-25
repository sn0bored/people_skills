class Skill < ActiveRecord::Base
  
  has_many :proficiencies
  has_many :users, through: :proficiencies

  validates :name, :context, presence: true, uniqueness: true

  def user_with_proficiency(level)
  	 prof = self.proficiencies.find_by_rating(level)
  	 user = prof.user_id
  	 name = User.find(user)
  end

end
