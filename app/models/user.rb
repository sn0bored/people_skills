class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies

  validates :name, :email, presence: true

  def proficiency_for(skill)
    self.skills.first.proficiencies.find_by_user_id(self.id).rating
  end
  
  def set_proficiency_for(skill, level)
  	skill_to_update = skill.name
  	self.skills.each do |s|
  	  if s.name == skill_to_update
  		s.proficiencies.each do |p|
  		  if p.user_id == self.id
  	        p.rating = level
  	        p.save
  	      end
  	    end
  	  end
  	end
  end

end
