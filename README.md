# task_appの作成

## 使用した技術要素
 - ruby 2.3.0
 - gem 'uglifier', '>= 1.3.0'
 - Rails  version 4.2.6
 - devise version 4.2.1
 - ransack

## 全体の設計・構成についての説明
- 全体の設計は、主にRailsで構成され、ユーザ管理は、deviseで行われている。

- 画面構成は、
1. ユーザの登録やログイン画面
2. プロジェクトの一覧画面
3. プロジェクト内にあるタスクの確認画面<br>

の3種類で構成されている。

## 開発環境のセットアップ手順
1. このプロジェクトを git clone する
2. プロジェクト内に移動し、bundle exec rake db:migrate でDBを構築する。
3. bundle exec rails s でサーバを起動する。
4. 起動後は、 localhost:3000 でページに移動できる。

## 画面ごとの内容

### ログイン画面
ログイン画面では　ユーザ名もしくはメールアドレスとパスワードを入力することでプロジェクト一覧に入れる。<br>
ログインしなければ他のページには入れない。<br>
また、新規登録することでログインすることが可能である。<br>
下記で示すが、特別の権限を持つ"管理人"という名前のユーザでしか行えないことがあるので <br>
初めは"管理人"という名前で作成してください。 <br>

### プロジェクト一覧
初めはプロジェクト一覧に何もないため、プロジェクトを作成しなければならない。 <br>
プロジェクトの作成や消去は"管理人"という名前のユーザでしか行えない。 <br>
プロジェクト一覧では、各プロジェクトごとにタスクがあり、残っているタスクが一目でわかる。<br>
プロジェクト名をクリックするとタスクをみることができる。<br>
また、検索システムを利用することでそのプロジェクト名のみを表示することができる。<br>
検索は部分一致で可能で、完全一致ではない。<br>

### タスクの確認画面
初めはタスクがないため作成しなければならない。 <br>
タスクの作成や消去は"管理人"という名前のユーザでしか行えない。 <br>
タスク確認画面では、他ユーザのプロジェクトを見ることができる。 <br>
別の権限として、プロジェクト名と同じ名前のユーザもしくは"管理人"ならば、タスクのチェックボックスをつけることができる。<br>
チェックボックスをつけることでタスクの終了をすることができる。<br>
