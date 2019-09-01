# 概要
汎用ログ配信用S3バケット

ログ配信後、30日でSTANDARD_IAへ移行され、90日で削除されます。

# パラメータ 
## Region
S3が配置されるリージョン

## namespace
名前空間。バケット名のPrefixとして利用されます。

## transition_days
STANDARD_IAへ移行されるまでの日数。デフォルト30日

## expiration_days
削除されるまでの日数。デフォルト90日

## tags
タグ。