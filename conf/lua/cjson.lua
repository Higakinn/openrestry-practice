local json = require 'cjson'

local book = {
  title = "title",
  publisher = "publisher"
}

book_json = json.encode(book)

ngx.say(book_json)