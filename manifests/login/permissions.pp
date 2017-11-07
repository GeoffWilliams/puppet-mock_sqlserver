# sqlserver::login::permissions
define sqlserver::login::permissions (
  String[1,128] $login,
  Array[String[4,128]] $permissions,
  Pattern[/(?i)^(GRANT|REVOKE|DENY)$/] $state = 'GRANT',
  Optional[Boolean] $with_grant_option = false,
  String[1,16] $instance = 'MSSQLSERVER',
){
}
