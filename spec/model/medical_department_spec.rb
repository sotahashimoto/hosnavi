require 'rails_helper'

RSpec.describe MedicalDepartment, type: :model do
  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'Medicalモデルとの関係' do
      let(:target) { :medicals }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'Hospitalモデルとの関係' do
      let(:target) { :hospitals }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end
  end

  describe '自作メソッドのテスト' do
    context 'searchメソッド' do
      it "診療科検索機能が正しいか" do
        medical_department1 = create(:medical_department, name: "内科")
        medical_department2 = create(:medical_department, name: "脳外科")
        expect(MedicalDepartment.search("脳外科").ids).to include medical_department2.id
      end
    end
  end
end