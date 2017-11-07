# sqlserver::user
define sqlserver::user (
  String[1,128] $database,
  Enum['present', 'absent'] $ensure = 'present',
  String[1] $user = $title,
  Optional[String] $default_schema = undef,
  String[1,16] $instance = 'MSSQLSERVER',
  Optional[String[1]] $login = undef,
  Optional[String[1,128]] $password = undef,
  Optional[Hash] $permissions = { },
)
{


}
