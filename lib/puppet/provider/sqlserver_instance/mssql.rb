require 'json'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'sqlserver'))


Puppet::Type::type(:sqlserver_instance).provide(:mssql, :parent => Puppet::Provider::Sqlserver) do
  def instance_reserved_switches
  end

  def self.instances
    instances = []
    instances
  end

  def self.prefetch(resources)
    my_instances = instances
  end

  def remove_features(features)
  end

  def add_features(features)
  end

  def modify_features(features, action)
  end

  def installNet35(source_location = nil)
  end

  def create
  end

  def create_temp_for_install_switch
  end

  def basic_cmd_args(features, action)
  end

  def build_cmd_args(features, action="install")
  end

  def format_cmd_args_array(switch, arr, cmd_args, use_discrete = false)
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
  end

end
