require 'puppet'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'property/sqlserver_tsql'))


Puppet::Type::newtype(:sqlserver_tsql) do
  newparam :name, :namevar => true

  def self.newcheck(name, options = {}, &block)
    @checks ||= {}

    check = newparam(name, options, &block)
    @checks[name] = check
  end

  def self.checks
    @checks.keys
  end

  newparam(:command, :parent => Puppet::Property::SqlserverTsql) do
    desc 'command to run against an instance with the authenticated credentials used in sqlserver::config'

  end

  newparam(:instance) do
    desc 'requires the usage of sqlserver::config with the user and password'
  end

  newparam(:database) do
    desc 'initial database to connect to during query execution'
    defaultto 'master'
  end

  newcheck(:onlyif, :parent => Puppet::Property::SqlserverTsql) do
    desc 'SQL Query to run and only run if exits with non-zero'
    #Runs in the event that our TSQL exits with anything other than 0
  end

  def check_all_attributes(refreshing = false)
    check = :onlyif
    true
  end

  def output
  end

  def refresh
  end

  newproperty(:returns, :array_matching => :all, :event => :executed_command) do |property|
    defaultto "0"

    attr_reader :output

    # Make output a bit prettier
    def change_to_s(currentvalue, newvalue)
      "executed successfully"
    end

    # First verify that all of our checks pass.
    def retrieve
      return :notrun
    end

    # Actually execute the command.
    def sync
      event = :executed_command
      event
    end
  end

  def self.instances
    []
  end


end
