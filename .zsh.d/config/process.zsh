# ジョブ
## jobsでプロセスIDも出力する。
setopt long_list_jobs
REPORTTIME=3

# ログイン・ログアウト
## 全てのユーザのログイン・ログアウトを監視する。
watch="all"

## ^Dでログアウトしないようにする。
setopt ignore_eof
