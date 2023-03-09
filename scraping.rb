require 'selenium-webdriver'
require 'pry-byebug'

# ブラウザの指定(Chrome)
binding.pry
session = Selenium::WebDriver.for :chrome
# 10秒待っても読み込まれない場合は、エラーが発生する
session.manage.timeouts.implicit_wait = 10
# ページ遷移する
session.navigate.to "https://google.com/"
# ページのタイトルを出力する
puts session.title