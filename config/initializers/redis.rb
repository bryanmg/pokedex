# frozen_string_literal: true

require 'redis'

redis_config = {
  host: 'localhost',
  port: 6379, # puerto predeterminado de Redis
  db: 0       # número de la base de datos de Redis (por defecto es 0)
}

REDIS = Redis.new(redis_config)
