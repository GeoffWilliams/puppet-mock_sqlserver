# sqlserver::role
define sqlserver::role(
  String[1,128] $role = $title,
  String[1,16] $instance = 'MSSQLSERVER',
  Enum['present', 'absent'] $ensure = 'present',
  Optional[String] $authorization = undef,
  Enum['SERVER', 'DATABASE'] $type = 'SERVER',
  String[1,128] $database = 'master',
  Optional[Hash] $permissions = { },
  Array[String] $members = [],
  Boolean $members_purge = false,
){


}
