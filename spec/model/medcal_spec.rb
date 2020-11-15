require 'rails_helper'

RSpec.describe Medical, type: :model do
  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'Hospitalモデルとの関係' do
      let(:target) { :hospital }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end

    context 'MedicalDepartmentモデルとの関係' do
      let(:target) { :medical_department }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end
  end
end