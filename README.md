# Hosnavi

## 概要

「これからの医療をここから、より良い医療をもっと身近に、もっと気軽に」
患者さんが自分に合った病院を探すサポートをするサービスです。

## URL

https://hosnavi.work/
ログイン画面の【ゲストログインする】ボタンからテストユーザーとしてログインできます。

## 制作の背景

前職が病院の事務職だった為、患者さんから「どこの病院が〇〇科を診察しているか分からない」「この症状の時は何科を受診したら良いか分からない」という問い合わせが多かったのでそれを解決したいと考えました。

特に急を要する受診の場合病気、怪我をしてから探すのではなく事前に探しておく事が大事です。

病気、怪我等で病院を探した人は多いはずです。そのような人たちが少しでも「自分に合った病院」を見つける事ができたら、という思いからこのサービスを制作しました。同時に、ご高齢の方にとっても使いやすく利用できるサービスを目指しました。

## 主な利用シーン

・病気、怪我等で病院を受診したいがかかりつけの病院がない
・かかりつけの病院はあるが他の病院で受診したい
・現在は病気、怪我等ないが急病の際に受診する病院を見つけておきたい

## 機能一覧

- 検索機能 （ぐるなび API を使用し店舗検索、保存）
- マップ表示 （ぐるなび API にて取得した住所から表示）
- カレンダー表示(保存した飲み会情報を表示)

詳細は下記よりご確認ください。

https://docs.google.com/spreadsheets/d/1w9vrc2jQwdv3cAKtUbLvfEFbs9W44MguYfEb9gL4On0/edit?usp=sharing

## 設計書

- ER 図<br>
  https://drive.google.com/file/d/1ZGPnai60k-Ln-LQ7YFtVz2HpQPa_H2D-/view?usp=sharing
- UI Flow<br>
  https://drive.google.com/file/d/1bZBA1N_rz8LGjQBGGqMqIuDYQKuH5KlV/view?usp=sharing
- アプリケーション詳細設計<br>
  https://docs.google.com/spreadsheets/d/1a6Px673CT4Dj0kzc1MkPhpSbEyDPl6-txgh_fHpXZF4/edit?usp=sharing
- テーブル定義書<br>
  https://drive.google.com/file/d/1zBMW0soUEJEFN1EB4Ra11cSJQa7gsMLU/view?usp=sharing
- チャレンジ要素一覧<br>
  https://docs.google.com/spreadsheets/d/1w9vrc2jQwdv3cAKtUbLvfEFbs9W44MguYfEb9gL4On0/edit?usp=sharing
- AWS 設計図<br>
  https://drive.google.com/file/d/10xPIVvjXtohbK9_ImK_HcoB99YLvWO06/view?usp=sharing

## 環境・使用技術

### フロントエンド

- Bootstrap 4.5.0
- SCSS (BEM)
- JavaScript、jQuery、Ajax

### バックエンド

- Ruby 2.5.7
- Rails 5.2.4.3

### 開発環境

- Vagrant 2.2.4
- MySQL2

### 本番環境

- AWS (EC2、RDS for MySQL、Route53、CloudWatch、S3)
- MySQL2
- Nginx、 Puma

### インフラ構成図

### テスト

- Rspec (単体／結合） 計 10

### その他使用技術

- 非同期通信 (コメント投稿)
- 外部 API(Google MapAPI、Google SNSAPI)
- HTTPS 接続 (Certbot)

## ER 図

## About me

新卒で 3 年間事務職として病院に勤務しておりました。その後土木資材の営業を経験し、2020 年 7 月から Web エンジニアを目指して勉強中です。
