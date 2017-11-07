require File.expand_path(File.join(File.dirname(__FILE__), '..', 'property/sqlserver_login'))

Puppet::Type::newtype(:sqlserver_features) do
  ensurable


  newparam(:name, :namevar => true) do
    #Due to our prefetch and unaware of what name the user will provide we munge the value to meet our expecations.
  end

  newparam(:source)

  newparam(:windows_feature_source) do
    desc 'Specify the location of the Windows Feature source files.  This may be needed to install the .Net Framework.
          See https://support.microsoft.com/en-us/kb/2734782 for more information.'
  end

  newparam(:pid) do
    desc 'Specify the SQL Server product key to configure which edition you would like to use.'

  end

  newparam(:is_svc_account, :parent => Puppet::Property::SqlserverLogin) do
    desc 'Either domain user name or system account. Defaults to "NT AUTHORITY\NETWORK SERVICE"'

  end

  newparam(:is_svc_password) do
    desc 'Password for domain user.'

  end

  newproperty(:features, :array_matching => :all) do
    desc 'Specifies features to install, uninstall, or upgrade. The list of top-level features include
         BC, Conn, SSMS, ADV_SSMS, SDK, IS and MDS.'
    newvalues(:Tools, :BC, :Conn, :SSMS, :ADV_SSMS, :SDK, :IS, :MDS, :BOL, :DREPLAY_CTLR, :DREPLAY_CLT)
  end

  newparam(:install_switches) do
    desc 'A hash of switches you want to pass to the installer'
  end

  def validate
  end

  def is_domain_or_local_user?(user)
  end

  def validate_user_password_required(account, pass)
  end

  def set?(key)
    !self[key].nil? && !self[key].empty?
  end
end
