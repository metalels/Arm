require_relative "config/application"

USAGE_STR =<<EOS
usage: migrate.exe dbconfig_path<:configenv> migrate_file_path<:version>
EOS

if ARGV.length < 2
  puts USAGE_STR
  exit 2
end

db_opts = ARGV[0].split ":"

dbconfig = YAML.load(
  File.read(db_opts[0])
)
dbkey = db_opts.length > 1 ? db_opts[1] : dbconfig.keys.first
dbsetting = dbconfig[dbkey]
migration_opts = ARGV[1].split ":"
migrations = migration_opts[0]
version = migration_opts.length > 1 ? migration_opts[1].to_i : nil

ActiveRecord::Base.establish_connection dbsetting
ActiveRecord::Base.logger = Logger.new "active_record.log"
ActiveRecord::Base.logger.level = 0
ActiveRecord::Migrator.migrate migrations, version
