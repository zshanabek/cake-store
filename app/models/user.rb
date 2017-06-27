<<<<<<< HEAD
class User <  ActiveRecord::Base
=======
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:confirmable, :validatable
>>>>>>> 61e5fdfe7e95fa1ab62c6fef9842a8683cce0ca7
end
