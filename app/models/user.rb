class User < ApplicationRecord
    # Include default devise modules.
    devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
    include DeviseTokenAuth::Concerns::User

    has_many :dishes

    has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
