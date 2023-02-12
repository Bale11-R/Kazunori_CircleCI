# 第13回課題内容

### cfnブランチにて、cloudformationをcircleci上で実行した

- ![cfn_deploy_success](https://user-images.githubusercontent.com/116282189/218306514-b0c6e68b-f316-479c-9b1a-6d8283df1f70.jpg)

- ![cfn_stack](https://user-images.githubusercontent.com/116282189/218306525-a073c31d-1f8f-458d-9f05-a39634421efd.jpg)


### ansibleブランチにて、ansibleをcircleci上で実行した

- ![ansible_application_start_success](https://user-images.githubusercontent.com/116282189/218306581-0c69a5c8-3ded-40a9-b4f1-aa17ea4a0f08.jpg)

- ![ansible_application_start_check](https://user-images.githubusercontent.com/116282189/218306594-5408330e-c266-4858-8353-70546bf88d40.jpg)

- ![ansible_production_log](https://user-images.githubusercontent.com/116282189/218306603-8f777a0c-7843-4dc4-bd38-1509af14296d.jpg)


### specブランチにて、サーバ起動及びサイトで200番が返ってくることの確認

- ![serverspec_test_success](https://user-images.githubusercontent.com/116282189/218306633-7d97c916-0262-44fb-a36f-424cbe1f7677.jpg)


### その他共有事項

1. ブランチをそれぞれで切って実行させました。特定のブランチで実行できるよう、.circleci/configに記述しております。
2. 上記のため、すべてのファイルがそろっているのが、本「spec」ブランチとなります。
3. RDS設定用のyamlファイル、ansible用のinventoryファイルは、.gitignoreにて共有されないようにしました。
