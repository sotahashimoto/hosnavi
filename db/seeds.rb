# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Member.create!(
  [
    {
      name: '管理者',
      email: '1@1.com',
      password: 'aaaaaa',
      password_confirmation: 'aaaaaa',
      address: '渋谷区神南1丁目19番11号 パークウェースクエア24階',
      postcode: '1500041',
      admin_flg: true,
    },
    {
      name: '橋本聡太',
      email: '2@2.com',
      password: 'aaaaaa',
      password_confirmation: 'aaaaaa',
      address: '渋谷区神南1丁目19番11号 パークウェースクエア24階',
      postcode: '1500041',
      admin_flg: false,
    }
  ]
)

Hospital.create!(
  [
    {
      name: '若草第一病院',
      address: '大阪府東大阪市若草町1-6',
      postcode: '579-8056',
      feature: '若草第一病院は、大阪府東大阪市にある医療機関。社会医療法人若弘会が運営する病院である。
                地域医療支援病院、大阪府がん診療連携拠点病院、基幹型臨床研修指定病院等に指定されている。',
      phone_number: '072-988-1409',
      short_message: '瓢箪山駅から近く駐車場もあります',
    },
    {
      name: '八尾徳洲会総合病院',
      address: '大阪府八尾市若草町1-17',
      postcode: '581-0011',
      feature: '八尾徳洲会総合病院は、大阪府八尾市にある民間病院である。徳洲会の病院としては全国で4番目の病院である。',
      phone_number: '072-993-8501',
      short_message: '八尾にある大きい病院です',
    },
    {
      name: '石切生喜病院',
      address: '大阪府東大阪市弥生町18-28',
      postcode: '579-8026',
      feature: '人が出会う病院、心を通じ合わせる病院、心をもって接する場所が石切生喜病院であり、
                その場はこのロゴ全体のマーク（ハート形）が表すごとく、暖かな空気に包まれたやすらぎの医療スペースであります。',
      phone_number: '072-988-3121',
      short_message: '近くにドンキホーテがあります。ほとんど満床',
    }
  ]
)

MedicalDepartment.create!(
  [
    {name: '内科'},
    {name: '消化器科'},
    {name: '循環器科'},
    {name: '呼吸器科'},
    {name: '外科'},
    {name: '整形外科'},
    {name: '形成外科'},
    {name: '脳神経外科'},
    {name: '小児科'},
    {name: '産婦人科'},
    {name: '皮膚科'},
    {name: '泌尿器科'},
    {name: '眼科'},
    {name: '耳鼻咽喉科'},
    {name: 'リハビリテーション科'},
    {name: '放射線科'},
    {name: '精神科'},
    {name: '麻酔科'}
  ]
)

Medical.create!(
  [
    {hospital_id: '1', medical_department_id: '1', },
    {hospital_id: '1', medical_department_id: '2', },
    {hospital_id: '1', medical_department_id: '5', },
    {hospital_id: '1', medical_department_id: '6', },
    {hospital_id: '1', medical_department_id: '13', },
    {hospital_id: '2', medical_department_id: '1', },
    {hospital_id: '2', medical_department_id: '5', },
    {hospital_id: '2', medical_department_id: '6', },
    {hospital_id: '2', medical_department_id: '11', },
    {hospital_id: '3', medical_department_id: '1', },
    {hospital_id: '3', medical_department_id: '2', },
    {hospital_id: '3', medical_department_id: '4', },
    {hospital_id: '3', medical_department_id: '5', },
    {hospital_id: '3', medical_department_id: '8', }
  ]
)

ConsultationDay.create!(
  [
    {
      is_sunday: 'false',
      is_monday: 'true',
      is_tuesday: 'true',
      is_wednesday: 'true',
      is_thursday: 'true',
      is_friday: 'true',
      is_saturday: 'true',
    },
    {
      is_sunday: 'false',
      is_monday: 'true',
      is_tuesday: 'true',
      is_wednesday: 'true',
      is_thursday: 'true',
      is_friday: 'true',
      is_saturday: 'false',
    }
  ]
)