# Написать регулярное выражение для проверки url

correct_url = "http://www.yandex.ru"
correct_url2 = "http://www.yandex.ru/page/1"

incorrect_url = "aaa-bbb-ccc"

puts correct_url.match(/http(s)?:\/\/([a-z0-9][a-z0-9-]*\.){1,4}([a-z0-9][a-z0-9-]*)(\/(\w)*)*/i)
puts correct_url2.match(/http(s)?:\/\/([a-z0-9][a-z0-9-]*\.){1,4}([a-z0-9][a-z0-9-]*)(\/(\w)*)*/i)
puts incorrect_url.match(/http(s)?:\/\/([a-z0-9][a-z0-9-]*\.){1,4}([a-z0-9][a-z0-9-]*)(\/(\w)*)*/i)