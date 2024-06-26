class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :companies
  has_and_belongs_to_many :roles

  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end

end
