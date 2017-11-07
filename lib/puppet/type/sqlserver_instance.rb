require File.expand_path(File.join(File.dirname(__FILE__), '..', 'property/sqlserver_login'))

Puppet::Type::newtype(:sqlserver_instance) do

  ensurable

  newparam(:name, :namevar => true) do
  end

  newparam(:source) do

  end

  newparam(:windows_feature_source) do
    desc 'Specify the location of the Windows Feature source files.  This may be needed to install the .Net Framework.
          See https://support.microsoft.com/en-us/kb/2734782 for more information.'
  end

  newparam(:pid) do
    desc 'Specify the SQL Server product key to configure which edition you would like to use.'

  end

  newproperty(:features, :array_matching => :all) do
    desc 'Specifies features to install, uninstall, or upgrade. The list of top-level features include
          SQLEngine, Replication, FullText, DQ AS, and RS.'
    newvalues(:SQL, :SQLEngine, :Replication, :FullText, :DQ, :AS, :RS, :POLYBASE, :ADVANCEDANALYTICS)
  end

  newparam(:sa_pwd) do
    desc 'Required when :security_mode => "SQL"'

  end

  newparam(:sql_svc_account, :parent => Puppet::Property::SqlserverLogin) do
    desc 'Account for SQL Server service: Domain\User or system account.'
    # Default to "NT Service\SQLAGENT$#{instance_name}"

  end

  newparam(:sql_svc_password) do
    desc 'A SQL Server service password is required only for a domain account.'

  end

  newparam(:sql_sysadmin_accounts, :array_matching => :all) do
    desc 'Windows account(s) to provision as SQL Server system administrators.'

  end

  newparam(:agt_svc_account, :parent => Puppet::Property::SqlserverLogin) do
    desc 'Either domain user name or system account'

  end

  newparam(:agt_svc_password) do
    desc 'Password for domain user name. Not required for system account'

  end

  newparam(:as_svc_account, :parent => Puppet::Property::SqlserverLogin) do
    desc 'The account used by the Analysis Services service.'

  end

  newparam(:as_svc_password) do
    desc 'The password for the Analysis Services service account.'

  end

  newparam(:as_sysadmin_accounts, :array_matching => :all) do
    desc 'Specifies the list of administrator accounts to provision.'
  end

  newparam(:rs_svc_account, :parent => Puppet::Property::SqlserverLogin) do
    desc 'Specify the service account of the report server. This value is required.
          If you omit this value, Setup will use the default built-in account for
          the current operating system (either NetworkService or LocalSystem).
          If you specify a domain user account, the domain must be under 254 characters
          and the user name must be under 20 characters. The account name cannot contain the
          following characters: " / \ [ ] : ; | = , + * ? < > '
  end

  newparam(:rs_svc_password) do
    desc 'Specify a strong password for the account. A strong password is at least 8 characters and
          includes a combination of upper and lower case alphanumeric characters and at least one symbol
          character. Avoid spelling an actual word or name that might be listed in a dictionary.'
  end

  newparam(:polybase_svc_account, :parent => Puppet::Property::SqlserverLogin) do
    desc 'The account used by the Polybase Engine service. Only applicable for SQL Server 2016.'

  end

  newparam(:polybase_svc_password) do
    desc 'The password for the Polybase Engine service account. Only applicable for SQL Server 2016.'

  end

  newparam(:security_mode) do
    desc 'Specifies the security mode for SQL Server.
          If this parameter is not supplied, then Windows-only authentication mode is supported.
          Supported value: SQL'
    newvalues('SQL')
  end

  newparam(:install_switches) do
    desc 'A hash of switches you want to pass to the installer'
  end


  def validate
    true
  end

  def set?(key)
  end

  def validate_user_password_required(account, pass)
  end

  def is_domain_or_local_user?(user)
    true
  end

  def is_strong_password?(key)
    true
  end
end
