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
      image: File.open("./app/assets/images/member1.jpg"),
      name: '田中聡太',
      nickname: 'わんちゃん',
      email: '1@1.com',
      password: 'aaaaaa',
      password_confirmation: 'aaaaaa',
      address: '渋谷区神南1丁目19番11号 パークウェースクエア24階',
      postcode: '1500041',
      admin_flg: false,
    },
    {
      image: File.open("./app/assets/images/member2.jpg"),
      name: '橋本秀行',
      nickname: 'リス',
      email: '2@2.com',
      password: 'aaaaaa',
      password_confirmation: 'aaaaaa',
      address: '渋谷区神南1丁目19番11号 パークウェースクエア24階',
      postcode: '1500041',
      admin_flg: false,
    },
    {
      image: File.open("./app/assets/images/member3.jpg"),
      name: '田中太郎',
      nickname: 'テストユーザー',
      email: 'test@user.com',
      password: 'test123456',
      password_confirmation: 'test123456',
      address: '渋谷区神南1丁目19番11号 パークウェースクエア24階',
      postcode: '1500041',
      admin_flg: false,
    }
  ]
)

Admin.create!(
  [
    {
      email: 'admin@1.com',
      password: 'aaaaaa',
      password_confirmation: 'aaaaaa',
    }
  ]
)

Event.create!(
  [
    {
      member_id: '1',
      start_time: '2020-09-29',
      title: '若草第一病院受診9時〜',
      content: '内科(佐藤先生)を受診',
    }
  ]
)

Hospital.create!(
  [
    {
      image: File.open("./app/assets/images/wakakusa.jpg"),
      name: '若草第一病院',
      address: '大阪府東大阪市若草町1-6',
      postcode: '579-8056',
      feature: '若草第一病院は、大阪府東大阪市にある医療機関。社会医療法人若弘会が運営する病院である。地域医療支援病院、大阪府がん診療連携拠点病院、基幹型臨床研修指定病院等に指定されている。',
      phone_number: '072-988-1409',
      short_message: '瓢箪山駅から近く駐車場もあります',
      notices: '当院は病診連携のもと、紹介予約を基本としております。急患につきましてはお電話にてお問い合わせください。外来診療担当表は都合により変更する場合がございますので必ずご確認のうえご来院ください。'
    },
    {
      image: File.open("./app/assets/images/yaotoku.jpg"),
      name: '八尾徳洲会総合病院',
      address: '大阪府八尾市若草町1-17',
      postcode: '581-0011',
      feature: '八尾徳洲会総合病院は、大阪府八尾市にある民間病院である。徳洲会の病院としては全国で4番目の病院である。',
      phone_number: '03-3263-4801',
      short_message: '平日夜間や土曜日にも受診できます',
      notices: '9:00～12:00 17:00～20:00 土曜AMのみ　一部診療科予約・紹介制　受付8:00～12:00(一部科は11:30) 16:30～19:30　科により異なる'
    },
    {
      image: File.open("./app/assets/images/isikiri.jpg"),
      name: '石切生喜病院',
      address: '大阪府東大阪市弥生町18-28',
      postcode: '579-8026',
      feature: '人が出会う病院、心を通じ合わせる病院、心をもって接する場所が石切生喜病院であり、その場はこのロゴ全体のマーク（ハート形）が表すごとく、暖かな空気に包まれたやすらぎの医療スペースであります。',
      phone_number: '072-988-3121',
      short_message: '近くにドンキホーテがあります。',
      notices: '休診日:土曜午後、日曜、祝日、年末年始'
    },
    {
      image: File.open("./app/assets/images/toukyou.jpg"),
      name: '東京病院',
      address: '東京都清瀬市竹丘3-1-1',
      postcode: '204-8585',
      feature: '東京都の北多摩地区、清瀬市の南西部に位置する。昭和14年創立当時の武蔵野の雑木林を今も残す自然環境にあり、病院構内には花と緑が多く、療養には最適の環境です。周囲の公私十余の病院とともにいわゆる病院街を形成しています。',
      phone_number: '042-491-2111',
      short_message: '感染予防のため、総合内科・呼吸器内科の当番外来の初診の患者さんの受付は、当面の間、午前11時まで',
      notices: '再来の方：午前の診療8時00分～11時00分、午後の診療12時30分～14時00分紹介状をお持ちでない方は【初診時選定療養費　5,500円（税込）】を頂いております。紹介状をお持ちの方につきましては、特定療養費はいただいておりません'
    },
    {
      image: File.open("./app/assets/images/oomorisekizyuusi.jpg"),
      name: '大森赤十字病院',
      address: '東京都大田区中央4-30-1',
      postcode: '143-8527',
      feature: '大森赤十字病院は、東京都大田区中央にある医療機関。日本赤十字社東京都支部が設置する病院である。武蔵野赤十字病院に次いで、東京都支部2ヶ所目の病院として、1953年7月に開設された。',
      phone_number: '03-3776-0004',
      short_message: '大森赤十字病院は、東京都大田区にある病院です。',
      notices: '8:30～11:00　原則紹介制、一部診療科予約制　診療は9:00開始　科により異なる　創立記念日(5/1)休診 臨時休診あり'
    },
    {
      image: File.open("./app/assets/images/tane.jpg"),
      name: '多根総合病院',
      address: '大阪府大阪市西区九条南1丁目12-21',
      postcode: '550-0025',
      feature: '多根総合病院は、阪神なんば線のドーム前駅から歩いて7分、大阪環状線の大正駅からも歩いて7分と、最寄り駅から徒歩圏内の場所にあります。また、有料になりますが立体駐車場があるので、車での通院も可能です。内科や外科、神経内科の診療をはじめさまざまな分野の診療に対応している大阪府大阪市西区にある医院さんです。診療時間は、平日が9時から15時30分まで、土曜日は9時から11時30分までとなっています。予約診療制となっているので、初診の場合は、事前に電話で予約する必要があります。',
      phone_number: '06-6581-1071',
      short_message: '2020年4月よりがん診療センターを開設します',
      notices: '9:00～11:00 14:00～15:30 土曜AMのみ　原則紹介制、全診療科予約制　科により異なる　臨時休診あり　予約センター受付時間/平日8:30～17:00 土曜8:30～12:30(当日予約不可)'
    },
    {
      image: File.open("./app/assets/images/kyuuseiki.jpg"),
      name: '大阪急性期・総合医療センター',
      address: '大阪市住吉区万代東3-1-56',
      postcode: '558-8558',
      feature: '新生児医療と一般小児・小児救急医療の両方に従事できる病院です。病床数はNICU6床、GCU6床、小児病床38床であり、年間入院数はNICU/GCU約200例、一般小児約2000例です。救命センターも有する総合病院であることから、母体の内科疾患、外科疾患、救急疾患、精神疾患への対応が可能であり、新生児医療は、合併症を有する母からの出生児、社会的ハイリスク児が多いことが特徴です。',
      phone_number: '06-6692-1201',
      short_message: '大阪急性期・総合医療センターは、大阪府大阪市住吉区にある病院です。',
      notices: '診療科目によって診療時間が異なりますが、基本的に月曜日から金曜日の8時30分から11時まで受付をしており、診療開始は9時となります。原則として紹介制となっており、診療科目によっては予約が必要です。'
    },
    {
      image: File.open("./app/assets/images/sekizyuuzi.jpg"),
      name: '大阪赤十字病院',
      address: '大阪府大阪市天王寺区筆ケ崎町5-30',
      postcode: '543-8555',
      feature: '大阪赤十字病院は、大阪府大阪市にある医院さんです。診療時間は平日の8時30分から11時30分で、休診日は土曜日、日曜日、祝日です。診療科目は内科や外科、血液内科など幅広く、様々な症状の患者さんに対応しています。糖尿病の相談にも対応しており、糖尿病患者さんの症状を改善するため、医師の診療のほかに管理栄養士などによる指導が行われています。',
      phone_number: '06-6774-5111',
      short_message: '鶴橋駅から徒歩5分の病院さんです',
      notices: '8:30～11:30　原則紹介制、一部診療科予約制　科により異なる'
    }
  ]
)

Comment.create!(
  [
    {
      member_id: '1',
      hospital_id: '1',
      score: '5',
      content: '発熱で受診しました。スムーズに対応してくださり、先生もとても優しく安心して治療を受けることができました。',
    },
    {
      member_id: '1',
      hospital_id: '2',
      score: '3',
      content: '整形外科を定期的に受診しています',
    },
    {
      member_id: '2',
      hospital_id: '1',
      score: '4',
      content: '良い先生がいます。医療器具も整っていると思います　人気がありいつも一杯です',
    }
  ]
)

MedicalDepartment.create!(
  [
    {name: '内科'}, #1
    {name: '消化器科'}, #2
    {name: '循環器科'}, #3
    {name: '呼吸器科'}, #4
    {name: '外科'}, #5
    {name: '整形外科'}, #6
    {name: '形成外科'}, #7
    {name: '脳神経外科'}, #8
    {name: '小児科'}, #9
    {name: '婦人科'},#10
    {name: '産婦人科'}, #11
    {name: '皮膚科'}, #12
    {name: '泌尿器科'}, #13
    {name: '眼科'}, #14
    {name: '耳鼻咽喉科'}, #15
    {name: 'リハビリテーション科'}, #16
    {name: '放射線科'}, #17
    {name: '精神科'}, #18
    {name: '麻酔科'} #19
  ]
)

Medical.create!(
  [
    {hospital_id: '1', medical_department_id: '1', },
    {hospital_id: '1', medical_department_id: '2', },
    {hospital_id: '1', medical_department_id: '3', },
    {hospital_id: '1', medical_department_id: '4', },
    {hospital_id: '1', medical_department_id: '5', },
    {hospital_id: '1', medical_department_id: '6', },
    {hospital_id: '1', medical_department_id: '7', },
    {hospital_id: '1', medical_department_id: '8', },
    {hospital_id: '1', medical_department_id: '9', },
    {hospital_id: '1', medical_department_id: '10', },
    {hospital_id: '1', medical_department_id: '12', },
    {hospital_id: '1', medical_department_id: '13', },
    {hospital_id: '1', medical_department_id: '14', },
    {hospital_id: '1', medical_department_id: '15', },
    {hospital_id: '1', medical_department_id: '18', },

    {hospital_id: '2', medical_department_id: '1', },
    {hospital_id: '2', medical_department_id: '2', },
    {hospital_id: '2', medical_department_id: '3', },
    {hospital_id: '2', medical_department_id: '4', },
    {hospital_id: '2', medical_department_id: '5', },
    {hospital_id: '2', medical_department_id: '6', },
    {hospital_id: '2', medical_department_id: '7', },
    {hospital_id: '2', medical_department_id: '8', },
    {hospital_id: '2', medical_department_id: '9', },
    {hospital_id: '2', medical_department_id: '10', },
    {hospital_id: '2', medical_department_id: '12', },
    {hospital_id: '2', medical_department_id: '13', },
    {hospital_id: '2', medical_department_id: '14', },
    {hospital_id: '2', medical_department_id: '15', },
    {hospital_id: '2', medical_department_id: '16', },
    {hospital_id: '2', medical_department_id: '17', },
    {hospital_id: '2', medical_department_id: '19', },

    {hospital_id: '3', medical_department_id: '1', },
    {hospital_id: '3', medical_department_id: '2', },
    {hospital_id: '3', medical_department_id: '3', },
    {hospital_id: '3', medical_department_id: '4', },
    {hospital_id: '3', medical_department_id: '5', },
    {hospital_id: '3', medical_department_id: '6', },
    {hospital_id: '3', medical_department_id: '7', },
    {hospital_id: '3', medical_department_id: '8', },
    {hospital_id: '3', medical_department_id: '10', },
    {hospital_id: '3', medical_department_id: '11', },
    {hospital_id: '3', medical_department_id: '12', },
    {hospital_id: '3', medical_department_id: '13', },
    {hospital_id: '3', medical_department_id: '14', },
    {hospital_id: '3', medical_department_id: '15', },
    {hospital_id: '3', medical_department_id: '16', },
    {hospital_id: '3', medical_department_id: '17', },
    {hospital_id: '3', medical_department_id: '19', },

    {hospital_id: '4', medical_department_id: '1', },
    {hospital_id: '4', medical_department_id: '2', },
    {hospital_id: '4', medical_department_id: '3', },
    {hospital_id: '4', medical_department_id: '4', },
    {hospital_id: '4', medical_department_id: '5', },
    {hospital_id: '4', medical_department_id: '6', },
    {hospital_id: '4', medical_department_id: '7', },
    {hospital_id: '4', medical_department_id: '8', },
    {hospital_id: '4', medical_department_id: '10', },
    {hospital_id: '4', medical_department_id: '11', },
    {hospital_id: '4', medical_department_id: '12', },
    {hospital_id: '4', medical_department_id: '13', },
    {hospital_id: '4', medical_department_id: '14', },
    {hospital_id: '4', medical_department_id: '15', },
    {hospital_id: '4', medical_department_id: '16', },
    {hospital_id: '4', medical_department_id: '17', },
    {hospital_id: '4', medical_department_id: '19', },

    {hospital_id: '5', medical_department_id: '1', },
    {hospital_id: '5', medical_department_id: '2', },
    {hospital_id: '5', medical_department_id: '3', },
    {hospital_id: '5', medical_department_id: '4', },
    {hospital_id: '5', medical_department_id: '5', },
    {hospital_id: '5', medical_department_id: '6', },
    {hospital_id: '5', medical_department_id: '7', },
    {hospital_id: '5', medical_department_id: '8', },
    {hospital_id: '5', medical_department_id: '10', },
    {hospital_id: '5', medical_department_id: '11', },
    {hospital_id: '5', medical_department_id: '12', },
    {hospital_id: '5', medical_department_id: '13', },
    {hospital_id: '5', medical_department_id: '14', },
    {hospital_id: '5', medical_department_id: '15', },
    {hospital_id: '5', medical_department_id: '16', },
    {hospital_id: '5', medical_department_id: '17', },
    {hospital_id: '5', medical_department_id: '19', },

    {hospital_id: '6', medical_department_id: '1', },
    {hospital_id: '6', medical_department_id: '2', },
    {hospital_id: '6', medical_department_id: '3', },
    {hospital_id: '6', medical_department_id: '5', },
    {hospital_id: '6', medical_department_id: '6', },
    {hospital_id: '6', medical_department_id: '7', },
    {hospital_id: '6', medical_department_id: '8', },
    {hospital_id: '6', medical_department_id: '9', },
    {hospital_id: '6', medical_department_id: '10', },
    {hospital_id: '6', medical_department_id: '12', },
    {hospital_id: '6', medical_department_id: '13', },
    {hospital_id: '6', medical_department_id: '14', },
    {hospital_id: '6', medical_department_id: '15', },
    {hospital_id: '6', medical_department_id: '17', },
    {hospital_id: '6', medical_department_id: '19', },

    {hospital_id: '7', medical_department_id: '1', },
    {hospital_id: '7', medical_department_id: '2', },
    {hospital_id: '7', medical_department_id: '3', },
    {hospital_id: '7', medical_department_id: '4', },
    {hospital_id: '7', medical_department_id: '5', },
    {hospital_id: '7', medical_department_id: '6', },
    {hospital_id: '7', medical_department_id: '7', },
    {hospital_id: '7', medical_department_id: '8', },
    {hospital_id: '7', medical_department_id: '9', },
    {hospital_id: '7', medical_department_id: '10', },
    {hospital_id: '7', medical_department_id: '11', },
    {hospital_id: '7', medical_department_id: '12', },
    {hospital_id: '7', medical_department_id: '13', },
    {hospital_id: '7', medical_department_id: '14', },
    {hospital_id: '7', medical_department_id: '15', },
    {hospital_id: '7', medical_department_id: '16', },
    {hospital_id: '7', medical_department_id: '17', },
    {hospital_id: '7', medical_department_id: '18', },
    {hospital_id: '7', medical_department_id: '19', },

    {hospital_id: '8', medical_department_id: '1', },
    {hospital_id: '8', medical_department_id: '2', },
    {hospital_id: '8', medical_department_id: '3', },
    {hospital_id: '8', medical_department_id: '4', },
    {hospital_id: '8', medical_department_id: '5', },
    {hospital_id: '8', medical_department_id: '6', },
    {hospital_id: '8', medical_department_id: '7', },
    {hospital_id: '8', medical_department_id: '8', },
    {hospital_id: '8', medical_department_id: '9', },
    {hospital_id: '8', medical_department_id: '10', },
    {hospital_id: '8', medical_department_id: '11', },
    {hospital_id: '8', medical_department_id: '12', },
    {hospital_id: '8', medical_department_id: '13', },
    {hospital_id: '8', medical_department_id: '14', },
    {hospital_id: '8', medical_department_id: '15', },
    {hospital_id: '8', medical_department_id: '16', },
    {hospital_id: '8', medical_department_id: '17', },
    {hospital_id: '8', medical_department_id: '18', },
    {hospital_id: '8', medical_department_id: '19', },
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

ConsultationTime.create!(
  [
    {
      consultation_day_id: '1',
      hospital_id: '1',
      start_hour: '9',
      start_minute: '0',
      finish_hour: '12',
      finish_minute: '0',
    },
    {
      consultation_day_id: '2',
      hospital_id: '2',
      start_hour: '9',
      start_minute: '0',
      finish_hour: '20',
      finish_minute: '0',
    },
    {
      consultation_day_id: '1',
      hospital_id: '2',
      start_hour: '9',
      start_minute: '0',
      finish_hour: '12',
      finish_minute: '0',
    },
    {
      consultation_day_id: '1',
      hospital_id: '3',
      start_hour: '9',
      start_minute: '0',
      finish_hour: '12',
      finish_minute: '30',
    },
    {
      consultation_day_id: '2',
      hospital_id: '3',
      start_hour: '18',
      start_minute: '0',
      finish_hour: '20',
      finish_minute: '0',
    },
    {
      consultation_day_id: '2',
      hospital_id: '4',
      start_hour: '8',
      start_minute: '30',
      finish_hour: '14',
      finish_minute: '0',
    },
    {
      consultation_day_id: '2',
      hospital_id: '5',
      start_hour: '8',
      start_minute: '30',
      finish_hour: '11',
      finish_minute: '0',
    },
    {
      consultation_day_id: '1',
      hospital_id: '6',
      start_hour: '9',
      start_minute: '0',
      finish_hour: '15',
      finish_minute: '30',
    },
    {
      consultation_day_id: '2',
      hospital_id: '6',
      start_hour: '9',
      start_minute: '0',
      finish_hour: '11',
      finish_minute: '30',
    },
    {
      consultation_day_id: '2',
      hospital_id: '7',
      start_hour: '8',
      start_minute: '30',
      finish_hour: '11',
      finish_minute: '00',
    },
    {
      consultation_day_id: '2',
      hospital_id: '8',
      start_hour: '8',
      start_minute: '30',
      finish_hour: '11',
      finish_minute: '30',
    }
  ]
)