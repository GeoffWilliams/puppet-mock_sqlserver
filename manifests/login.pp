# sqlserver::login
define sqlserver::login (
  $login = $title,
  String[1,16] $instance = 'MSSQLSERVER',
  Enum['SQL_LOGIN', 'WINDOWS_LOGIN'] $login_type = 'SQL_LOGIN',
  Enum['present', 'absent'] $ensure = 'present',
  Optional[String] $password = undef,
  Optional[Hash] $svrroles = { },
  String $default_database = 'master',
  String $default_language = 'us_english',
  Boolean $check_expiration = false,
  Boolean $check_policy = true,
  Boolean $disabled = false,
  Optional[Hash] $permissions = { },
) {

}
