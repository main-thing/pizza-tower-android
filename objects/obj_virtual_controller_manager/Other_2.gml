ADD_OBJECT_EVENT_GML_HOOK;
if(os_type == os_android)
{
	os_request_permission("android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_AUDIO", "android.permission.MANAGE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE");
}
event_user(2);
event_user(3);