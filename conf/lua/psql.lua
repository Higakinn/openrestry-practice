local cjson = require "cjson"
local pgmoon = require("pgmoon")
local pg = pgmoon.new({
  host     = "172.18.0.3",
  port     = "5432",
  user     = "postgres",
  password = "example",
  database = "postgres"
})

local success, err = pg:connect()
if err then
  ngx.log(ngx.ERR, 'connect pg error#', err)
  ngx.exit(ngx.HTTP_INTERNAL_SERVER_ERROR)
end

local res = pg:query("select 1 as dog, 'hello' as dog")

pg:keepalive()
pg = nil
ngx.status  = ngx.HTTP_OK
ngx.status  = ngx.HTTP_OK
ngx.say(cjson.encode({status = res, msg=post}))
return ngx.exit(ngx.HTTP_OK)
