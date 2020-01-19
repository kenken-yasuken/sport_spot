class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :validatable, :confirmable, :lockable, :trackable,
         :authentication_keys => [:user_id]

  validates :user_id, uniqueness: true, presence: true

  # user_idを使用してログインするようオーバーライド
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      # 認証の条件式を変更する
      where(conditions).where(["user_id = :value", {:value => user_id}]).first
    else
      where(conditions).first
    end
  end

  # 登録時にemailを不要とする
  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end
end
