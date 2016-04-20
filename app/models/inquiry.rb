class Inquiry < ActiveRecord::Base
  VALID_EMAIL_REGEXP = /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/

  validates :name,
            presence: {message: '名前を入力してください'}
  validates :email,
            format: {with: VALID_EMAIL_REGEXP, message: 'メールアドレスの形式が不正です'},
            presence: {message: 'メールアドレスを入力してください'}
  validates :message,
            presence: {message: 'お問い合わせ内容を入力してください'}
end
