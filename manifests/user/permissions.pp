# sqlserver::user::permissions
define sqlserver::user::permissions (
  String[1,128] $user,
  Array[String[4,128]] $permissions,
  String[1,128] $database = 'master',
  Pattern[/(?i)^(GRANT|REVOKE|DENY)$/] $state = 'GRANT',
  Optional[Boolean] $with_grant_option = false,
  String[1,16] $instance = 'MSSQLSERVER',
){
}
