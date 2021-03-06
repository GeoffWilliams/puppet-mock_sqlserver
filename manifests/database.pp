# sqlserver::database
define sqlserver::database (
  String[1,128] $db_name = $title,
  String[1,16] $instance = 'MSSQLSERVER',
  Enum['present', 'absent'] $ensure = 'present',
  Integer $compatibility = 100,
  Optional[String[1]] $collation_name = undef,
  Optional[Enum['OFF', 'READ_ONLY', 'FULL']] $filestream_non_transacted_access = undef,
  Optional[Pattern[/^[\w|\s]+$/]] $filestream_directory_name = undef,
  Optional[String[1,128]] $filespec_name = undef,
  Optional[Stdlib::Absolutepath] $filespec_filename = undef,
  Optional[String[1]] $filespec_size = undef,
  Optional[String[1]] $filespec_maxsize = undef,
  Optional[String[1]] $filespec_filegrowth = undef,
  Optional[String[1,128]] $log_name = undef,
  Optional[Stdlib::Absolutepath] $log_filename = undef,
  Optional[String[1]] $log_size = undef,
  Optional[String[1]] $log_maxsize = undef,
  Optional[String[1]] $log_filegrowth = undef,
  Enum['PARTIAL', 'NONE'] $containment = 'NONE',
#require Containment = 'PARTIAL' for the following params to be executed
  String[1] $default_fulltext_language = 'English',
  String[1] $default_language = 'us_english',
  Optional[Enum['ON', 'OFF']] $nested_triggers = undef,
  Optional[Enum['ON', 'OFF']] $transform_noise_words = undef,
  Integer[1753, 9999] $two_digit_year_cutoff = 2049,
  Enum['ON', 'OFF'] $db_chaining = 'OFF',
  Enum['ON', 'OFF'] $trustworthy = 'OFF',
){
}
