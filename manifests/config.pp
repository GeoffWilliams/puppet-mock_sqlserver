# sqlserver::config
define sqlserver::config (
  Optional[String] $admin_user = '',
  Optional[String] $admin_pass = '',
  Enum['SQL_LOGIN', 'WINDOWS_LOGIN'] $admin_login_type = 'SQL_LOGIN',
  String[1,16] $instance_name = $title,
) {
}
