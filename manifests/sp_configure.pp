# sqlserver::sp_configure
define sqlserver::sp_configure (
  Integer $value,
  Pattern['^\w+'] $config_name = $title,
  String[1,16] $instance = 'MSSQLSERVER',
  Boolean $reconfigure = true,
  Boolean $with_override = false,
  Boolean $restart = false,
){


}
