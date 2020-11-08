# Hosnavi

<img width="1168" alt="README_hosnavi" src="https://user-images.githubusercontent.com/67676627/98328784-e1e46b00-2039-11eb-86dc-34e6ec24de65.png">

## 概要

「これからの医療をここから、より良い医療をもっと身近に、もっと気軽に」

患者さんが自分に合った病院を探すサポートをするサービスです。

## URL

https://hosnavi.work/

ログイン画面の【ゲストログインする】ボタンからテストユーザーとしてログインできます。

## 制作の背景

前職が病院の事務職だった為、患者さんから「どこの病院が〇〇科を診察しているか分からない」「この症状の時は何科を受診したら良いか分からない」という問い合わせが多かったのでそれを解決したいと考えました。

病気、怪我等で病院を探した人は多いはずです。特に急を要する受診の場合病気、怪我をしてから探すのではなく事前に探しておく事が大事です。

そのような人たちが少しでも「自分に合った病院」を見つける事ができたら、という思いからこのサービスを制作しました。同時に、ご高齢の方にとっても使いやすく利用できるサービスを目指しました。

## 主な利用シーン

- 病気、怪我等で病院を受診したいがかかりつけの病院がない
- かかりつけの病院はあるが他の病院で受診したい
- 現在は病気、怪我等ないが急病の際に受診する病院を見つけておきたい

## 機能一覧

- 検索機能 （病院の都道府県、診療科検索）
- マップ表示 （Google MapAPIで取得した住所から表示）
- カレンダー表示(診察日を自分で登録し表示)
- レスポンシブデザイン
<img width="930" alt="スクリーンショット 2020-11-08 10 52 59" src="https://user-images.githubusercontent.com/67676627/98455186-a3bd8780-21b0-11eb-82a1-08e2ee4ded8a.png">


詳細は下記よりご確認ください。

https://docs.google.com/spreadsheets/d/1w9vrc2jQwdv3cAKtUbLvfEFbs9W44MguYfEb9gL4On0/edit?usp=sharing

## 環境・使用技術

### フロントエンド

- Bootstrap 3.3.6
- SCSS (BEM)
- JavaScript、jQuery、Ajax

### バックエンド

- Ruby 2.5.7
- Rails 5.2.4.3

### 開発環境

- Vagrant 2.2.4
- SQLite3

### 本番環境

- AWS (EC2、RDS for MySQL、Route53、CloudWatch、S3、ALB)
- MySQL2
- Nginx、Puma

### インフラ構成図

<img width="436" alt="スクリーンショット 2020-11-06 17 30 00" src="https://user-images.githubusercontent.com/67676627/98343827-be2f1e00-2055-11eb-8392-520b0786fb81.png">

### テスト

- Rspec (単体） 計 18

### その他使用技術

- 非同期通信 (コメント投稿)
- 外部API(Google MapAPI、Google SNSAPI)
- HTTPS接続 (AWS Certificate Manager)

## ER 図

<img width="863" alt="README_ER図" src="https://user-images.githubusercontent.com/67676627/98329463-9a5ede80-203b-11eb-822e-ad4435c2dfac.png">

## 設計書

- UI Flow
  https://drive.google.com/file/d/1bZBA1N_rz8LGjQBGGqMqIuDYQKuH5KlV/view?usp=sharing
- アプリケーション詳細設計<br>
  https://docs.google.com/spreadsheets/d/1a6Px673CT4Dj0kzc1MkPhpSbEyDPl6-txgh_fHpXZF4/edit?usp=sharing
- テーブル定義書<br>
  https://drive.google.com/file/d/1zBMW0soUEJEFN1EB4Ra11cSJQa7gsMLU/view?usp=sharing

## About me

新卒で3年間事務職として病院に勤務しておりました。その後土木資材の営業を経験し、2020年7月からWebエンジニアを目指して勉強中です。
