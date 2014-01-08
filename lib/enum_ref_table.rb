module EnumRefTable
  autoload :VERSION, 'enum_ref_table/version'
  autoload :Record, 'enum_ref_table/record'
  autoload :Reflection, 'enum_ref_table/reflection'
  autoload :SchemaDumper, 'enum_ref_table/schema_dumper'
  autoload :SchemaStatements, 'enum_ref_table/schema_statements'
end

require 'enum_ref_table/railtie' if defined?(Rails)
ActiveRecord::Base.send :include, EnumRefTable::Record
ActiveRecord::ConnectionAdapters::AbstractAdapter.send :include, EnumRefTable::SchemaStatements
