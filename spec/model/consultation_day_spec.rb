require 'rails_helper'

RSpec.describe ConsultationDay, type: :model do
  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'Hospitalモデルとの関係' do
      let(:target) { :hospitals }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'ConsultationTimeモデルとの関係' do
      let(:target) { :consultation_times }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end
  end
end