class Company < ActiveRecord::Base
  has_many :addresses
  has_many :contacts
  has_many :services
  belongs_to :user

  has_attached_file :logo, :styles => { :medium => "300x300>" }
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
 
  before_validation :clear_logo

  def delete_logo=(value)
    @delete_logo = !value.to_i.zero?
  end
  
  def delete_logo
    !!@delete_logo
  end
  alias_method :delete_logo?, :delete_logo

def clear_logo
  self.logo = nil if delete_logo? && !logo.dirty?
end

end
