require 'rails_helper'

RSpec.describe Goal, type: :model do
  describe 'attributes' do
    it { should respond_to :title }
    it { should respond_to :description }
    it { should respond_to :location }
    it { should respond_to :price }
    it { should respond_to :likes }
    it { should respond_to :difficulty }
    it { should respond_to :picture_file_name }
  end

end
