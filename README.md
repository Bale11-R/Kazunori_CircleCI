# Kazunori_CircleCI

## 概要

- CircleCIで、以下の動作を自動化したリポジトリとなっています
  - CloudformationでAWSリソースの作成
  - Ansibleでサーバの環境構築とアプリのデプロイ
  - Serverspecでアプリの起動確認

## 動作環境

### ruby
```
3.1.2
```

### bundler
```
2.3.14
```

### Rails
```
7.0.4
```

### Node
```
v16.19.1
```

### yarn
```
1.22.19
```

### DBエンジン
- MySQLを使用

## 環境構築
1. ~/cloudformation/直下に、「VPC-Subnet」「Security」「EC2」「ALB」「RDS」のテンプレートYAMLファイルを作成
2. ~/ansible/直下の、hosts/inventoryにて、ターゲットのEC2のパブリックアドレスと、ansibleで記述する環境変数を記載
3. ansibleでは各ロールの、「git」→「webpack」→「mysql」→「ruby」→「clone」→「nginx」→「app」の順にセットアップを行う
4. specでは、「gitインストール」、「nginx起動」、「unicorn起動」、「Webページが表示される（レスポンスで200を返す）」内容のテストを実施
5. 「Cloudformation」→「Ansible」→「Serverspec」の順で実行されるよう、~/,circleci/config.ymlに記述
6. 成功後、~/.gitignoreに、「inventory」「RDS.yml」を追加

### CircleCI環境変数
- ![CircleCI_env](https://user-images.githubusercontent.com/116282189/219875270-d38f4fad-7436-454f-94a6-a402ccded95f.jpg)
- ![CircleCI_key](https://user-images.githubusercontent.com/116282189/219875615-c04605f2-28f8-42fb-8d43-19cf316f0362.jpg)


## AWS構成図
- ![AWS最終構成図_ピクチャ](https://user-images.githubusercontent.com/116282189/219875723-fde9aec9-bcc9-49a4-a0ca-1d20898ad337.jpg)
 
