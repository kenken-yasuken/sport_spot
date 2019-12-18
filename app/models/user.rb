class User < ApplicationRecord
# family_name                  string, null: false
# first_name                   string, null: false
# family_name_kana             string
# first_name_kana              string
# nickname                     string, null: false
# gender                       int, null: false
# age                          int,  null: false
# birthday                     datetime
# user_type_id                 int, null: false
# encrypted_password           string, null: false

  enum gender: { male: 1, female: 2 }
  enum user_type_id: { trainer: 1, trainee: 2 }
end