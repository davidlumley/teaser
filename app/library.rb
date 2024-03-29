require   'rubygems'
# Framework
require   'sinatra'

# ORM
require   'dm-core'
require   'dm-sqlite-adapter'
require   'dm-migrations'

# ORM additional
require   'dm-types'
require   'dm-validations'
require   'dm-timestamps'
require   'dm-serializer'

# JSON
require   'json'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

require File.dirname(__FILE__) + '/models/user'

DataMapper.finalize.auto_upgrade!