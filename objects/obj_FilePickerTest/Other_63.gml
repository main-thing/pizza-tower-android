if async_load[? "id"] == kitkatdialog {
	
	// ShowFilePicker calls the intent.
	// After user has picked the file,
	// system will need some time to copy source file (asynchronously),
	// since it's impossible to read external storage with sdk 30 and newer.
	
	if IsKitKat()
		ShowFilePicker()
}