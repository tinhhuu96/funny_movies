require 'rails_helper'

RSpec.describe UserShare, type: :model do
  context 'DB' do
    describe 'columns' do
      it { should have_db_column(:link).of_type(:string) }
      it { should have_db_column(:description).of_type(:text) }
      it { should have_db_column(:user_id).of_type(:integer) }
      it { should have_db_column(:share_type).of_type(:string) }
    end
  end

  context 'association' do
    it { should belong_to(:user) }
  end
  
end
