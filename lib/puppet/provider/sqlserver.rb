require File.expand_path(File.join(File.dirname(__FILE__), 'sqlserver'))
require 'tempfile'

class Puppet::Provider::Sqlserver < Puppet::Provider
  confine :operatingsystem => :windows

  initvars

  def try_execute(command, msg = nil, obfuscate_strings = nil, acceptable_exit_codes = [0])
    "mock"
  end

  private
  def self.native_path(path)
    "/"
  end

  def self.template_path
    "/"
  end

  def not_nil_and_not_empty?(obj)
    !obj.nil? and !obj.empty?
  end

  def self.run_install_dot_net(source_location = nil)
  end
end
