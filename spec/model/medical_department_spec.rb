require 'rails_helper'

RSpec.describe MedicalDepartment, type: :model do
  describe 'バリデーションのテスト' do
    context 'nameカラム' do
      it "空欄でないこと" do
        medical_department = build(:medical_department, name: nil)
        medical_department.valid?
        expect(medical_department.errors[:name]).to include("を入力してください")
      end

      it "10文字以下であること" do
        medical_department = build(:medical_department, name: "a" * 11)
        medical_department.valid?
        expect(medical_department.errors[:name]).to include("は10文字以内で入力してください")
      end
    end
  end


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

    context 'Hospitalsモデルとの関係' do
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