class User < ApplicationRecord
  has_many :hotels
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
         PASSWORD_REGEX_hankaku = /\A[a-zA-Z0-9]+\z/.freeze

  validates :nickname, presence: true
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'
  validates_format_of :password, with: PASSWORD_REGEX_hankaku, message: 'には半角を使用してください'
end
