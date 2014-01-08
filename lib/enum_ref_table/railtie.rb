module EnumRefTable
  class Railtie < Rails::Railtie
    rake_tasks do
      namespace :enum_ref_table do
        task :load_schema_dumper do
          require 'enum_ref_table/schema_dumper'
        end
      end

      Rake::Task['db:schema:dump'].prerequisites << 'enum_ref_table:load_schema_dumper'
    end
  end
end
