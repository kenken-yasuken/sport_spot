class User < ApplicationRecord
  enum gender: { male: 1, female: 2 }
  enum user_type_id: { trainer: 1, trainee: 2 }
end
