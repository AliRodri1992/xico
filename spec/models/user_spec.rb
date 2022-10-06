# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  it 'orders by last name' do
    lindeman = User.create!(email: 'andy@gmail.com', password: '123456')
    chelimsky = User.create!(email: 'chelimsky@hotmail.com', password: '123456')

    expect(User.email).to eq([chelimsky, lindeman])
  end
end
