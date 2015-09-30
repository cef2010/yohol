require 'rails_helper'

RSpec.describe User, type: :model do


  describe 'attributes' do
    it { should respond_to :user_name }
    it { should respond_to :description }
    it { should respond_to :days_left }
    it { should respond_to :email }
    it { should respond_to :password }
    it { should respond_to :password_confirmation }
    it { should respond_to :avatar_file_name }
  end

  end


end
