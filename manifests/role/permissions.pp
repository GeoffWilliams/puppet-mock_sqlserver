# sqlserver::role::permissions
define sqlserver::role::permissions (
  String[1,128] $role,
  Array[String[4,128]] $permissions,
  Pattern[/(?i)^(GRANT|REVOKE|DENY)$/] $state = 'GRANT',
  Optional[Boolean] $with_grant_option = false,
  Enum['SERVER','DATABASE'] $type = 'SERVER',
  String[1,128] $database = 'master',
  String[1,16] $instance = 'MSSQLSERVER',
){

}
