
// async_load only has type and result



// calls at the start of file copy thread
if async_load[? "type"] == "filepickerstart" {
	copying = 1
}

// calls when copy has been made
if async_load[? "type"] == "filepicker" {
	kitkatdialog = -1
	copying = 0
	
	// This stores relative path (after sdcard)
	var file = async_load[? "result"]
	
	if file == "" {
		show_message_async( "copying failed, for some reason." ) exit
	}
	
	show_message_async( "File /sdcard/" + file + " has been successfully copied." )
	
	
	// copied file is named _temp and it's located at /data/data/[packagename]/files/
	// this functions returns this path.
	// due to certain limitations, you can't access external storage on android versions >=11.
	// modify the extension sources if you don't need support for sdk30+ (???)
	var filepath = GetPickedFile()
	
	
}