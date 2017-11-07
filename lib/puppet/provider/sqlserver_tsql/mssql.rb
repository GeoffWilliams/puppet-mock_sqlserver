require File.expand_path(File.join(File.dirname(__FILE__), '..', 'sqlserver'))

Puppet::Type::type(:sqlserver_tsql).provide(:mssql, :parent => Puppet::Provider::Sqlserver) do


  def run(query)
  end

  def get_config
  end
end
