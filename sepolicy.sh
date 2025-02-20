## Dolby

# type
magiskpolicy --live "type system_lib_file"
magiskpolicy --live "type vendor_file"
magiskpolicy --live "type vendor_configs_file"
magiskpolicy --live "type vendor_data_file"
magiskpolicy --live "type vendor_media_data_file"
magiskpolicy --live "type same_process_hal_file"
magiskpolicy --live "type hal_dms_default_exec"

# debug
magiskpolicy --live "dontaudit system_server system_file file write"
magiskpolicy --live "allow     system_server system_file file write"

# chcon
magiskpolicy --live "dontaudit vendor_data_file labeledfs filesystem associate"
magiskpolicy --live "allow     vendor_data_file labeledfs filesystem associate"
magiskpolicy --live "dontaudit init vendor_data_file dir relabelfrom"
magiskpolicy --live "allow     init vendor_data_file dir relabelfrom"
magiskpolicy --live "dontaudit init vendor_data_file file relabelfrom"
magiskpolicy --live "allow     init vendor_data_file file relabelfrom"
magiskpolicy --live "dontaudit vendor_media_data_file labeledfs filesystem associate"
magiskpolicy --live "allow     vendor_media_data_file labeledfs filesystem associate"
magiskpolicy --live "dontaudit init vendor_media_data_file dir relabelfrom"
magiskpolicy --live "allow     init vendor_media_data_file dir relabelfrom"
magiskpolicy --live "dontaudit init vendor_media_data_file file relabelfrom"
magiskpolicy --live "allow     init vendor_media_data_file file relabelfrom"
magiskpolicy --live "dontaudit vendor_configs_file labeledfs filesystem associate"
magiskpolicy --live "allow     vendor_configs_file labeledfs filesystem associate"
magiskpolicy --live "dontaudit init vendor_configs_file dir relabelfrom"
magiskpolicy --live "allow     init vendor_configs_file dir relabelfrom"
magiskpolicy --live "dontaudit init vendor_configs_file file relabelfrom"
magiskpolicy --live "allow     init vendor_configs_file file relabelfrom"

# hwservice_manager
magiskpolicy --live "allow { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app hal_audio_default mtk_hal_audio audioserver } { default_android_hwservice hal_dms_hwservice } hwservice_manager find"

# service_manager
magiskpolicy --live "allow daxservice_app permission_checker_service service_manager find"

# binder
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } hal_dms_default binder call"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } hal_dms_default binder call"

# file
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } { hal_dms_default_exec vendor_displayfeature_prop } file getattr"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } { hal_dms_default_exec vendor_displayfeature_prop } file getattr"
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } bluetooth_prop file map"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } bluetooth_prop file map"
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } vendor_default_prop file { read open getattr }"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } vendor_default_prop file { read open getattr }"
magiskpolicy --live "dontaudit { hal_audio_default mtk_hal_audio audioserver } system_file file { read open getattr execute }"
magiskpolicy --live "allow     { hal_audio_default mtk_hal_audio audioserver } system_file file { read open getattr execute }"
magiskpolicy --live "dontaudit zygote { device unlabeled } file write"
magiskpolicy --live "allow     zygote { device unlabeled } file write"

# chr_file
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } device chr_file { read write open getattr ioctl }"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } device chr_file { read write open getattr ioctl }"

# dir
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } migt_file dir search"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } migt_file dir search"

# additional
magiskpolicy --live "dontaudit { hal_audio_default mtk_hal_audio audioserver } { default_prop boottime_prop } file { read open getattr map }"
magiskpolicy --live "allow     { hal_audio_default mtk_hal_audio audioserver } { default_prop boottime_prop } file { read open getattr map }"
magiskpolicy --live "dontaudit { hal_audio_default mtk_hal_audio audioserver } { mnt_vendor_file system_prop } file { read open getattr }"
magiskpolicy --live "allow     { hal_audio_default mtk_hal_audio audioserver } { mnt_vendor_file system_prop } file { read open getattr }"
magiskpolicy --live "dontaudit { hal_audio_default mtk_hal_audio audioserver } audio_prop file read"
magiskpolicy --live "allow     { hal_audio_default mtk_hal_audio audioserver } audio_prop file read"
magiskpolicy --live "dontaudit { hal_audio_default mtk_hal_audio audioserver } sysfs_wake_lock file { write open }"
magiskpolicy --live "allow     { hal_audio_default mtk_hal_audio audioserver } sysfs_wake_lock file { write open }"
magiskpolicy --live "dontaudit { hal_audio_default mtk_hal_audio audioserver } vendor_default_prop file open"
magiskpolicy --live "allow     { hal_audio_default mtk_hal_audio audioserver } vendor_default_prop file open"
magiskpolicy --live "dontaudit { hal_audio_default mtk_hal_audio audioserver } sysfs_net dir read"
magiskpolicy --live "allow     { hal_audio_default mtk_hal_audio audioserver } sysfs_net dir read"
magiskpolicy --live "dontaudit { hal_audio_default mtk_hal_audio audioserver } { diag_device vendor_diag_device } chr_file { read write open ioctl getattr }"
magiskpolicy --live "allow     { hal_audio_default mtk_hal_audio audioserver } { diag_device vendor_diag_device } chr_file { read write open ioctl getattr }"
magiskpolicy --live "dontaudit hal_audio_default hal_audio_default capability2 block_suspend"
magiskpolicy --live "allow     hal_audio_default hal_audio_default capability2 block_suspend"
magiskpolicy --live "dontaudit mtk_hal_audio mtk_hal_audio capability2 block_suspend"
magiskpolicy --live "allow     mtk_hal_audio mtk_hal_audio capability2 block_suspend"
magiskpolicy --live "dontaudit audioserver audioserver capability2 block_suspend"
magiskpolicy --live "allow     audioserver audioserver capability2 block_suspend"


## MiSound

# type
magiskpolicy --live "type audio_socket"
magiskpolicy --live "type property_socket"

# chcon
magiskpolicy --live "dontaudit audio_socket labeledfs filesystem associate"
magiskpolicy --live "allow     audio_socket labeledfs filesystem associate"
magiskpolicy --live "dontaudit init audio_socket sock_file relabelfrom"
magiskpolicy --live "allow     init audio_socket sock_file relabelfrom"

# file
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } { vendor_audio_prop vendor_display_prop } file { read open getattr map }"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } { vendor_audio_prop vendor_display_prop } file { read open getattr map }"

# sock_file
magiskpolicy --live "dontaudit { hal_audio_default audioserver mtk_hal_audio hal_sensors_default } { audio_socket property_socket } sock_file write"
magiskpolicy --live "allow     { hal_audio_default audioserver mtk_hal_audio hal_sensors_default } { audio_socket property_socket } sock_file write"
magiskpolicy --live "dontaudit init { audio_socket property_socket } sock_file { unlink create setattr }"
magiskpolicy --live "allow     init { audio_socket property_socket } sock_file { unlink create setattr }"

# unix_stream_socket
magiskpolicy --live "dontaudit { hal_audio_default audioserver mtk_hal_audio } init unix_stream_socket connectto"
magiskpolicy --live "allow     { hal_audio_default audioserver mtk_hal_audio } init unix_stream_socket connectto"
magiskpolicy --live "dontaudit hal_sensors_default hal_audio_default unix_stream_socket connectto"
magiskpolicy --live "allow     hal_sensors_default hal_audio_default unix_stream_socket connectto"
magiskpolicy --live "dontaudit crash_dump { hal_audio_default audioserver mtk_hal_audio } unix_stream_socket { read write }"
magiskpolicy --live "allow     crash_dump { hal_audio_default audioserver mtk_hal_audio } unix_stream_socket { read write }"

# property_service
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app hal_audio_default audioserver mtk_hal_audio } vendor_audio_prop property_service set"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app hal_audio_default audioserver mtk_hal_audio } vendor_audio_prop property_service set"




