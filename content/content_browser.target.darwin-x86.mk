# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := content_content_browser_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,content_content_resources_gyp)/content_resources.stamp \
	$(call intermediates-dir-for,GYP,skia_skia_gyp)/skia.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp)/skia_skia_library_gyp.a \
	$(call intermediates-dir-for,GYP,ui_resources_ui_resources_gyp)/ui_resources.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_ui_gyp)/ui_ui_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,content_browser_speech_proto_speech_proto_gyp)/content_browser_speech_proto_speech_proto_gyp.a \
	$(call intermediates-dir-for,GYP,content_browser_devtools_devtools_resources_gyp)/devtools_resources.stamp \
	$(call intermediates-dir-for,GYP,webkit_webkit_resources_gyp)/webkit_resources.stamp \
	$(call intermediates-dir-for,GYP,webkit_webkit_strings_gyp)/webkit_strings.stamp \
	$(call intermediates-dir-for,GYP,third_party_WebKit_public_blink_gyp)/blink.stamp \
	$(call intermediates-dir-for,GYP,sandbox_sandbox_gyp)/sandbox.stamp \
	$(call intermediates-dir-for,GYP,content_content_jni_headers_gyp)/content_jni_headers.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
$(gyp_intermediate_dir)/devtools_resources_map.cc: $(gyp_shared_intermediate_dir)/webkit/grit/devtools_resources_map.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/webui_resources_map.cc: $(gyp_shared_intermediate_dir)/ui/ui_resources/grit/webui_resources_map.cc
	mkdir -p $(@D); cp $< $@
LOCAL_GENERATED_SOURCES := \
	$(gyp_intermediate_dir)/devtools_resources_map.cc \
	$(gyp_intermediate_dir)/webui_resources_map.cc

GYP_COPIED_SOURCE_ORIGIN_DIRS := \
	$(gyp_shared_intermediate_dir)/webkit/grit \
	$(gyp_shared_intermediate_dir)/ui/ui_resources/grit

LOCAL_SRC_FILES := \
	content/public/browser/android/synchronous_compositor.cc \
	content/public/browser/browser_child_process_host_delegate.cc \
	content/public/browser/browser_child_process_host_iterator.cc \
	content/public/browser/browser_child_process_observer.cc \
	content/public/browser/browser_main_parts.cc \
	content/public/browser/browser_message_filter.cc \
	content/public/browser/browser_plugin_guest_delegate.cc \
	content/public/browser/content_browser_client.cc \
	content/public/browser/download_manager_delegate.cc \
	content/public/browser/download_save_info.cc \
	content/public/browser/download_url_parameters.cc \
	content/public/browser/favicon_status.cc \
	content/public/browser/indexed_db_info.cc \
	content/public/browser/javascript_dialog_manager.cc \
	content/public/browser/load_from_memory_cache_details.cc \
	content/public/browser/local_storage_usage_info.cc \
	content/public/browser/media_device_id.cc \
	content/public/browser/navigation_controller.cc \
	content/public/browser/navigation_details.cc \
	content/public/browser/notification_registrar.cc \
	content/public/browser/page_navigator.cc \
	content/public/browser/resource_dispatcher_host_delegate.cc \
	content/public/browser/resource_request_details.cc \
	content/public/browser/speech_recognition_session_config.cc \
	content/public/browser/speech_recognition_session_context.cc \
	content/public/browser/web_contents.cc \
	content/public/browser/web_contents_delegate.cc \
	content/public/browser/web_contents_observer.cc \
	content/public/browser/web_ui_controller.cc \
	content/public/browser/url_data_source.cc \
	content/browser/accessibility/accessibility_tree_formatter.cc \
	content/browser/accessibility/accessibility_tree_formatter_android.cc \
	content/browser/accessibility/accessibility_ui.cc \
	content/browser/accessibility/browser_accessibility.cc \
	content/browser/accessibility/browser_accessibility_android.cc \
	content/browser/accessibility/browser_accessibility_manager.cc \
	content/browser/accessibility/browser_accessibility_manager_android.cc \
	content/browser/accessibility/browser_accessibility_state_impl.cc \
	content/browser/android/browser_jni_registrar.cc \
	content/browser/android/browser_startup_controller.cc \
	content/browser/android/child_process_launcher_android.cc \
	content/browser/android/content_settings.cc \
	content/browser/android/content_startup_flags.cc \
	content/browser/android/content_video_view.cc \
	content/browser/android/content_view_core_impl.cc \
	content/browser/android/content_view_render_view.cc \
	content/browser/android/content_view_statics.cc \
	content/browser/android/date_time_chooser_android.cc \
	content/browser/android/download_controller_android_impl.cc \
	content/browser/android/devtools_auth.cc \
	content/browser/android/edge_effect.cc \
	content/browser/android/in_process/synchronous_compositor_impl.cc \
	content/browser/android/in_process/synchronous_compositor_output_surface.cc \
	content/browser/android/in_process/synchronous_input_event_filter.cc \
	content/browser/android/interstitial_page_delegate_android.cc \
	content/browser/android/load_url_params.cc \
	content/browser/android/overscroll_glow.cc \
	content/browser/android/surface_texture_peer_browser_impl.cc \
	content/browser/android/touch_point.cc \
	content/browser/android/tracing_controller_android.cc \
	content/browser/android/web_contents_observer_android.cc \
	content/browser/appcache/appcache_dispatcher_host.cc \
	content/browser/appcache/appcache_frontend_proxy.cc \
	content/browser/appcache/chrome_appcache_service.cc \
	content/browser/browser_child_process_host_impl.cc \
	content/browser/browser_context.cc \
	content/browser/browser_main.cc \
	content/browser/browser_main_loop.cc \
	content/browser/browser_main_runner.cc \
	content/browser/browser_plugin/browser_plugin_embedder.cc \
	content/browser/browser_plugin/browser_plugin_geolocation_permission_context.cc \
	content/browser/browser_plugin/browser_plugin_guest.cc \
	content/browser/browser_plugin/browser_plugin_guest_manager.cc \
	content/browser/browser_plugin/browser_plugin_message_filter.cc \
	content/browser/browser_process_sub_thread.cc \
	content/browser/browser_shutdown_profile_dumper.cc \
	content/browser/browser_thread_impl.cc \
	content/browser/browser_url_handler_impl.cc \
	content/browser/browsing_instance.cc \
	content/browser/byte_stream.cc \
	content/browser/cert_store_impl.cc \
	content/browser/child_process_launcher.cc \
	content/browser/child_process_security_policy_impl.cc \
	content/browser/cross_site_request_manager.cc \
	content/browser/devtools/devtools_agent_host_impl.cc \
	content/browser/devtools/devtools_browser_target.cc \
	content/browser/devtools/devtools_external_agent_proxy_impl.cc \
	content/browser/devtools/devtools_frontend_host.cc \
	content/browser/devtools/devtools_http_handler_impl.cc \
	content/browser/devtools/devtools_manager_impl.cc \
	content/browser/devtools/devtools_netlog_observer.cc \
	content/browser/devtools/devtools_protocol.cc \
	content/browser/devtools/devtools_protocol_constants.cc \
	content/browser/devtools/devtools_system_info_handler.cc \
	content/browser/devtools/devtools_tracing_handler.cc \
	content/browser/devtools/ipc_devtools_agent_host.cc \
	content/browser/devtools/render_view_devtools_agent_host.cc \
	content/browser/devtools/renderer_overrides_handler.cc \
	content/browser/devtools/tethering_handler.cc \
	content/browser/devtools/worker_devtools_manager.cc \
	content/browser/devtools/worker_devtools_message_filter.cc \
	content/browser/device_orientation/data_fetcher_impl_android.cc \
	content/browser/device_orientation/data_fetcher_shared_memory_android.cc \
	content/browser/device_orientation/data_fetcher_shared_memory_base.cc \
	content/browser/device_orientation/device_inertial_sensor_service.cc \
	content/browser/device_orientation/device_motion_message_filter.cc \
	content/browser/device_orientation/device_orientation_message_filter.cc \
	content/browser/dom_storage/dom_storage_area.cc \
	content/browser/dom_storage/dom_storage_context_impl.cc \
	content/browser/dom_storage/dom_storage_context_wrapper.cc \
	content/browser/dom_storage/dom_storage_database.cc \
	content/browser/dom_storage/dom_storage_host.cc \
	content/browser/dom_storage/dom_storage_message_filter.cc \
	content/browser/dom_storage/dom_storage_namespace.cc \
	content/browser/dom_storage/dom_storage_session.cc \
	content/browser/dom_storage/dom_storage_task_runner.cc \
	content/browser/dom_storage/local_storage_database_adapter.cc \
	content/browser/dom_storage/session_storage_database.cc \
	content/browser/dom_storage/session_storage_database_adapter.cc \
	content/browser/dom_storage/session_storage_namespace_impl.cc \
	content/browser/download/base_file.cc \
	content/browser/download/base_file_posix.cc \
	content/browser/download/download_create_info.cc \
	content/browser/download/download_file_factory.cc \
	content/browser/download/download_file_impl.cc \
	content/browser/download/download_interrupt_reasons_impl.cc \
	content/browser/download/download_item_impl.cc \
	content/browser/download/download_item_impl_delegate.cc \
	content/browser/download/download_manager_impl.cc \
	content/browser/download/download_net_log_parameters.cc \
	content/browser/download/download_request_handle.cc \
	content/browser/download/download_resource_handler.cc \
	content/browser/download/download_stats.cc \
	content/browser/download/drag_download_file.cc \
	content/browser/download/drag_download_util.cc \
	content/browser/download/mhtml_generation_manager.cc \
	content/browser/download/rate_estimator.cc \
	content/browser/download/save_file.cc \
	content/browser/download/save_file_manager.cc \
	content/browser/download/save_file_resource_handler.cc \
	content/browser/download/save_item.cc \
	content/browser/download/save_package.cc \
	content/browser/download/save_types.cc \
	content/browser/fileapi/browser_file_system_helper.cc \
	content/browser/fileapi/chrome_blob_storage_context.cc \
	content/browser/fileapi/fileapi_message_filter.cc \
	content/browser/frame_host/debug_urls.cc \
	content/browser/frame_host/frame_tree.cc \
	content/browser/frame_host/frame_tree_node.cc \
	content/browser/frame_host/interstitial_page_impl.cc \
	content/browser/frame_host/navigation_controller_impl.cc \
	content/browser/frame_host/navigation_entry_impl.cc \
	content/browser/frame_host/navigation_entry_screenshot_manager.cc \
	content/browser/frame_host/navigator.cc \
	content/browser/frame_host/render_frame_host_factory.cc \
	content/browser/frame_host/render_frame_host_impl.cc \
	content/browser/frame_host/render_frame_host_manager.cc \
	content/browser/frame_host/render_frame_message_filter.cc \
	content/browser/gamepad/gamepad_provider.cc \
	content/browser/gamepad/gamepad_service.cc \
	content/browser/geolocation/empty_wifi_data_provider.cc \
	content/browser/geolocation/geolocation_dispatcher_host.cc \
	content/browser/geolocation/geolocation_provider_impl.cc \
	content/browser/geolocation/location_api_adapter_android.cc \
	content/browser/geolocation/location_arbitrator_impl.cc \
	content/browser/geolocation/location_provider_android.cc \
	content/browser/geolocation/location_provider_base.cc \
	content/browser/geolocation/wifi_data.cc \
	content/browser/geolocation/wifi_data_provider.cc \
	content/browser/gpu/browser_gpu_channel_host_factory.cc \
	content/browser/gpu/compositor_util.cc \
	content/browser/gpu/gpu_data_manager_impl.cc \
	content/browser/gpu/gpu_data_manager_impl_private.cc \
	content/browser/gpu/gpu_internals_ui.cc \
	content/browser/gpu/gpu_process_host.cc \
	content/browser/gpu/gpu_process_host_ui_shim.cc \
	content/browser/gpu/gpu_surface_tracker.cc \
	content/browser/gpu/shader_disk_cache.cc \
	content/browser/histogram_controller.cc \
	content/browser/histogram_internals_request_job.cc \
	content/browser/histogram_message_filter.cc \
	content/browser/histogram_synchronizer.cc \
	content/browser/host_zoom_map_impl.cc \
	content/browser/indexed_db/indexed_db_backing_store.cc \
	content/browser/indexed_db/indexed_db_callbacks.cc \
	content/browser/indexed_db/indexed_db_connection.cc \
	content/browser/indexed_db/indexed_db_context_impl.cc \
	content/browser/indexed_db/indexed_db_cursor.cc \
	content/browser/indexed_db/indexed_db_database.cc \
	content/browser/indexed_db/indexed_db_database_callbacks.cc \
	content/browser/indexed_db/indexed_db_dispatcher_host.cc \
	content/browser/indexed_db/indexed_db_factory.cc \
	content/browser/indexed_db/indexed_db_index_writer.cc \
	content/browser/indexed_db/indexed_db_internals_ui.cc \
	content/browser/indexed_db/indexed_db_leveldb_coding.cc \
	content/browser/indexed_db/indexed_db_metadata.cc \
	content/browser/indexed_db/indexed_db_quota_client.cc \
	content/browser/indexed_db/indexed_db_transaction.cc \
	content/browser/indexed_db/indexed_db_transaction_coordinator.cc \
	content/browser/indexed_db/leveldb/leveldb_database.cc \
	content/browser/indexed_db/leveldb/leveldb_transaction.cc \
	content/browser/indexed_db/leveldb/leveldb_write_batch.cc \
	content/browser/loader/async_resource_handler.cc \
	content/browser/loader/buffered_resource_handler.cc \
	content/browser/loader/certificate_resource_handler.cc \
	content/browser/loader/cross_site_resource_handler.cc \
	content/browser/loader/detachable_resource_handler.cc \
	content/browser/loader/layered_resource_handler.cc \
	content/browser/loader/offline_policy.cc \
	content/browser/loader/power_save_block_resource_throttle.cc \
	content/browser/loader/redirect_to_file_resource_handler.cc \
	content/browser/loader/resource_buffer.cc \
	content/browser/loader/resource_dispatcher_host_impl.cc \
	content/browser/loader/resource_handler.cc \
	content/browser/loader/resource_loader.cc \
	content/browser/loader/resource_message_delegate.cc \
	content/browser/loader/resource_message_filter.cc \
	content/browser/loader/resource_request_info_impl.cc \
	content/browser/loader/resource_scheduler.cc \
	content/browser/loader/resource_scheduler_filter.cc \
	content/browser/loader/stream_resource_handler.cc \
	content/browser/loader/sync_resource_handler.cc \
	content/browser/loader/throttling_resource_handler.cc \
	content/browser/loader/upload_data_stream_builder.cc \
	content/browser/media/android/browser_demuxer_android.cc \
	content/browser/media/android/browser_media_player_manager.cc \
	content/browser/media/android/media_drm_credential_manager.cc \
	content/browser/media/android/media_resource_getter_impl.cc \
	content/browser/media/media_internals.cc \
	content/browser/media/media_internals_handler.cc \
	content/browser/media/media_internals_proxy.cc \
	content/browser/media/media_internals_ui.cc \
	content/browser/media/webrtc_identity_store.cc \
	content/browser/media/webrtc_identity_store_backend.cc \
	content/browser/media/webrtc_internals.cc \
	content/browser/media/webrtc_internals_message_handler.cc \
	content/browser/media/webrtc_internals_ui.cc \
	content/browser/media_devices_monitor.cc \
	content/browser/message_port_message_filter.cc \
	content/browser/message_port_service.cc \
	content/browser/mime_registry_message_filter.cc \
	content/browser/net/browser_online_state_observer.cc \
	content/browser/net/sqlite_persistent_cookie_store.cc \
	content/browser/net/view_blob_internals_job_factory.cc \
	content/browser/net/view_http_cache_job_factory.cc \
	content/browser/notification_service_impl.cc \
	content/browser/power_monitor_message_broadcaster.cc \
	content/browser/power_save_blocker_android.cc \
	content/browser/power_save_blocker_impl.cc \
	content/browser/profiler_controller_impl.cc \
	content/browser/profiler_message_filter.cc \
	content/browser/quota_dispatcher_host.cc \
	content/browser/renderer_host/backing_store.cc \
	content/browser/renderer_host/backing_store_manager.cc \
	content/browser/renderer_host/clipboard_message_filter.cc \
	content/browser/renderer_host/compositor_impl_android.cc \
	content/browser/renderer_host/database_message_filter.cc \
	content/browser/renderer_host/delegated_frame_evictor.cc \
	content/browser/renderer_host/dip_util.cc \
	content/browser/renderer_host/file_utilities_message_filter.cc \
	content/browser/renderer_host/gamepad_browser_message_filter.cc \
	content/browser/renderer_host/gpu_message_filter.cc \
	content/browser/renderer_host/image_transport_factory_android.cc \
	content/browser/renderer_host/ime_adapter_android.cc \
	content/browser/renderer_host/input/gesture_event_filter.cc \
	content/browser/renderer_host/input/immediate_input_router.cc \
	content/browser/renderer_host/input/synthetic_gesture.cc \
	content/browser/renderer_host/input/synthetic_gesture_controller.cc \
	content/browser/renderer_host/input/synthetic_gesture_target_android.cc \
	content/browser/renderer_host/input/synthetic_gesture_target_base.cc \
	content/browser/renderer_host/input/synthetic_pinch_gesture.cc \
	content/browser/renderer_host/input/synthetic_smooth_scroll_gesture.cc \
	content/browser/renderer_host/input/synthetic_web_input_event_builders.cc \
	content/browser/renderer_host/input/tap_suppression_controller.cc \
	content/browser/renderer_host/input/touch_event_queue.cc \
	content/browser/renderer_host/input/touchpad_tap_suppression_controller.cc \
	content/browser/renderer_host/input/touchscreen_tap_suppression_controller.cc \
	content/browser/renderer_host/input/web_input_event_builders_android.cc \
	content/browser/renderer_host/input/web_input_event_util.cc \
	content/browser/renderer_host/input/web_input_event_util_posix.cc \
	content/browser/renderer_host/java/java_bound_object.cc \
	content/browser/renderer_host/java/java_bridge_channel_host.cc \
	content/browser/renderer_host/java/java_bridge_dispatcher_host.cc \
	content/browser/renderer_host/java/java_bridge_dispatcher_host_manager.cc \
	content/browser/renderer_host/java/java_method.cc \
	content/browser/renderer_host/java/java_type.cc \
	content/browser/renderer_host/java/jni_helper.cc \
	content/browser/renderer_host/media/audio_input_device_manager.cc \
	content/browser/renderer_host/media/audio_input_renderer_host.cc \
	content/browser/renderer_host/media/audio_input_sync_writer.cc \
	content/browser/renderer_host/media/audio_mirroring_manager.cc \
	content/browser/renderer_host/media/audio_renderer_host.cc \
	content/browser/renderer_host/media/audio_sync_reader.cc \
	content/browser/renderer_host/media/device_request_message_filter.cc \
	content/browser/renderer_host/media/media_stream_dispatcher_host.cc \
	content/browser/renderer_host/media/media_stream_manager.cc \
	content/browser/renderer_host/media/media_stream_ui_proxy.cc \
	content/browser/renderer_host/media/midi_dispatcher_host.cc \
	content/browser/renderer_host/media/midi_host.cc \
	content/browser/renderer_host/media/video_capture_buffer_pool.cc \
	content/browser/renderer_host/media/video_capture_controller.cc \
	content/browser/renderer_host/media/video_capture_controller_event_handler.cc \
	content/browser/renderer_host/media/video_capture_device_impl.cc \
	content/browser/renderer_host/media/video_capture_host.cc \
	content/browser/renderer_host/media/video_capture_manager.cc \
	content/browser/renderer_host/media/video_capture_oracle.cc \
	content/browser/renderer_host/media/web_contents_audio_input_stream.cc \
	content/browser/renderer_host/media/web_contents_capture_util.cc \
	content/browser/renderer_host/media/web_contents_tracker.cc \
	content/browser/renderer_host/media/web_contents_video_capture_device.cc \
	content/browser/renderer_host/memory_benchmark_message_filter.cc \
	content/browser/renderer_host/native_web_keyboard_event_android.cc \
	content/browser/renderer_host/overscroll_configuration.cc \
	content/browser/renderer_host/overscroll_controller.cc \
	content/browser/renderer_host/render_message_filter.cc \
	content/browser/renderer_host/render_process_host_impl.cc \
	content/browser/renderer_host/render_view_host_delegate.cc \
	content/browser/renderer_host/render_view_host_factory.cc \
	content/browser/renderer_host/render_view_host_impl.cc \
	content/browser/renderer_host/render_widget_helper.cc \
	content/browser/renderer_host/render_widget_host_delegate.cc \
	content/browser/renderer_host/render_widget_host_impl.cc \
	content/browser/renderer_host/render_widget_host_view_android.cc \
	content/browser/renderer_host/render_widget_host_view_base.cc \
	content/browser/renderer_host/render_widget_host_view_guest.cc \
	content/browser/renderer_host/renderer_frame_manager.cc \
	content/browser/renderer_host/software_frame_manager.cc \
	content/browser/renderer_host/socket_stream_dispatcher_host.cc \
	content/browser/renderer_host/socket_stream_host.cc \
	content/browser/renderer_host/websocket_dispatcher_host.cc \
	content/browser/renderer_host/websocket_host.cc \
	content/browser/resolve_proxy_msg_helper.cc \
	content/browser/resource_context_impl.cc \
	content/browser/service_worker/service_worker_context_core.cc \
	content/browser/service_worker/service_worker_context_wrapper.cc \
	content/browser/service_worker/service_worker_dispatcher_host.cc \
	content/browser/service_worker/service_worker_provider_host.cc \
	content/browser/service_worker/service_worker_registration.cc \
	content/browser/service_worker/service_worker_version.cc \
	content/browser/signed_certificate_timestamp_store_impl.cc \
	content/browser/site_instance_impl.cc \
	content/browser/speech/speech_recognition_dispatcher_host.cc \
	content/browser/speech/speech_recognition_manager_impl.cc \
	content/browser/speech/speech_recognizer_impl_android.cc \
	content/browser/ssl/ssl_cert_error_handler.cc \
	content/browser/ssl/ssl_client_auth_handler.cc \
	content/browser/ssl/ssl_error_handler.cc \
	content/browser/ssl/ssl_host_state.cc \
	content/browser/ssl/ssl_manager.cc \
	content/browser/ssl/ssl_policy_backend.cc \
	content/browser/ssl/ssl_policy.cc \
	content/browser/ssl/ssl_request_info.cc \
	content/browser/startup_task_runner.cc \
	content/browser/streams/stream.cc \
	content/browser/streams/stream_context.cc \
	content/browser/streams/stream_handle_impl.cc \
	content/browser/streams/stream_registry.cc \
	content/browser/streams/stream_url_request_job.cc \
	content/browser/storage_partition_impl.cc \
	content/browser/storage_partition_impl_map.cc \
	content/browser/tcmalloc_internals_request_job.cc \
	content/browser/tracing/trace_controller_impl.cc \
	content/browser/tracing/trace_message_filter.cc \
	content/browser/tracing/trace_subscriber_stdio.cc \
	content/browser/tracing/tracing_controller_impl.cc \
	content/browser/user_metrics.cc \
	content/browser/utility_process_host_impl.cc \
	content/browser/vibration/vibration_message_filter.cc \
	content/browser/vibration/vibration_provider_android.cc \
	content/browser/web_contents/web_contents_impl.cc \
	content/browser/web_contents/web_contents_view_android.cc \
	content/browser/web_contents/web_contents_view_guest.cc \
	content/browser/webui/content_web_ui_controller_factory.cc \
	content/browser/webui/generic_handler.cc \
	content/browser/webui/shared_resources_data_source.cc \
	content/browser/webui/url_data_manager.cc \
	content/browser/webui/url_data_manager_backend.cc \
	content/browser/webui/url_data_source_impl.cc \
	content/browser/webui/web_ui_data_source_impl.cc \
	content/browser/webui/web_ui_controller_factory_registry.cc \
	content/browser/webui/web_ui_impl.cc \
	content/browser/webui/web_ui_message_handler.cc \
	content/browser/worker_host/worker_document_set.cc \
	content/browser/worker_host/worker_message_filter.cc \
	content/browser/worker_host/worker_process_host.cc \
	content/browser/worker_host/worker_service_impl.cc \
	content/browser/worker_host/worker_storage_partition.cc \
	content/browser/gamepad/gamepad_platform_data_fetcher.cc


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-m32 \
	-mmmx \
	-march=pentium4 \
	-msse2 \
	-mfpmath=sse \
	-fuse-ld=gold \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-fno-stack-protector \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_DEFS_Debug := \
	'-DCONTENT_IMPLEMENTATION' \
	'-DANGLE_DX11' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DAVOID_LIBYUV_FOR_ANDROID_WEBVIEW' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DSK_SUPPORT_LEGACY_COLORTYPE=1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DAPPCACHE_USE_SIMPLE_CACHE' \
	'-DMEDIA_DISABLE_LIBVPX' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(LOCAL_PATH) \
	$(gyp_intermediate_dir) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(gyp_shared_intermediate_dir)/content \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/re2 \
	$(LOCAL_PATH)/third_party/zlib \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(gyp_shared_intermediate_dir)/ui/ui_resources \
	$(gyp_shared_intermediate_dir)/protoc_out \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src \
	$(gyp_shared_intermediate_dir)/webkit \
	$(LOCAL_PATH)/third_party/leveldatabase/src/include \
	$(LOCAL_PATH)/third_party/leveldatabase/src \
	$(LOCAL_PATH)/third_party/leveldatabase \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/v8/include \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-m32 \
	-mmmx \
	-march=pentium4 \
	-msse2 \
	-mfpmath=sse \
	-fuse-ld=gold \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-fno-stack-protector \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-fno-unwind-tables \
	-fno-asynchronous-unwind-tables

MY_DEFS_Release := \
	'-DCONTENT_IMPLEMENTATION' \
	'-DANGLE_DX11' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DAVOID_LIBYUV_FOR_ANDROID_WEBVIEW' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DSK_SUPPORT_LEGACY_COLORTYPE=1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DAPPCACHE_USE_SIMPLE_CACHE' \
	'-DMEDIA_DISABLE_LIBVPX' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(LOCAL_PATH) \
	$(gyp_intermediate_dir) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(gyp_shared_intermediate_dir)/content \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/re2 \
	$(LOCAL_PATH)/third_party/zlib \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(gyp_shared_intermediate_dir)/ui/ui_resources \
	$(gyp_shared_intermediate_dir)/protoc_out \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src \
	$(gyp_shared_intermediate_dir)/webkit \
	$(LOCAL_PATH)/third_party/leveldatabase/src/include \
	$(LOCAL_PATH)/third_party/leveldatabase/src \
	$(LOCAL_PATH)/third_party/leveldatabase \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/v8/include \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
### Rules for final target.

LOCAL_LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-m32 \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--fatal-warnings \
	-Wl,--gc-sections \
	-Wl,--warn-shared-textrel \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-m32 \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections \
	-Wl,--fatal-warnings \
	-Wl,--warn-shared-textrel


LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_$(GYP_CONFIGURATION))

LOCAL_STATIC_LIBRARIES := \
	skia_skia_library_gyp \
	ui_ui_gyp \
	content_browser_speech_proto_speech_proto_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: content_content_browser_gyp

# Alias gyp target name.
.PHONY: content_browser
content_browser: content_content_browser_gyp

include $(BUILD_STATIC_LIBRARY)
