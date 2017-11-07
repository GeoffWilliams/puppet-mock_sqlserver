require 'json'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'sqlserver'))


Puppet::Type::type(:sqlserver_features).provide(:mssql, :parent => Puppet::Provider::Sqlserver) do
  def self.instances
    instances = []
    instances
  end

  def self.prefetch(resources)
    features = instances
  end

  def remove_features(features)
  end

  def add_features(features)
  end

  def modify_features(action, features)
  end

  def create_temp_for_install_switch
  end

  def installNet35(source_location = nil)
  end

  def create
  end

  def destroy
  end

  mk_resource_methods

  def exists?
    return @property_hash[:ensure] == :present || false
  end

  def current_installed_features
    @property_hash[:features]
  end

  def features=(new_features)
    self.features
  end

end
