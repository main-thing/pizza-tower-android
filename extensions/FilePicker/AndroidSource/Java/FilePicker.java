package ${YYAndroidPackageName};

// Basic imports
import android.util.Log;
import java.lang.String;
import java.lang.Object;
import android.net.Uri;
import java.io.*;

// Android
import android.app.Activity;
import android.content.Intent;
import android.content.Context;
import android.os.Environment;
import android.content.ContentResolver;

// Import Game Maker classes
import ${YYAndroidPackageName}.R;
import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

// Android
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.widget.EditText;
import android.text.InputType;
import android.content.DialogInterface;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;



public class FilePicker extends ExtensionBase {
	private static final int EVENT_OTHER_SOCIAL = 70;
	private static final int FILE_SELECT_CODE = 42;
	
	public void ShowFilePicker() {
		Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
		
		intent.addCategory(Intent.CATEGORY_OPENABLE);
		intent.setType("application/zip");
		
		RunnerActivity.CurrentActivity.startActivityForResult(intent, FILE_SELECT_CODE);
	}
	
	public double IsKitKat() {
		if (android.os.Build.VERSION.SDK_INT >= 19) {
			return 1.0;
		}
		
		return 0.0;
	}
	
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		switch (requestCode) {
			case FILE_SELECT_CODE:
				if (resultCode == android.app.Activity.RESULT_OK) {
					Uri uri = data.getData();
					
					Log.i("yoyo", "File Uri: " + uri.toString());
					
					String[] split = uri.getPath().split(":");
					
					new Thread(new Runnable() {
						public void run() {
							Context ctx = RunnerActivity.CurrentActivity.getBaseContext();
							String dest = getExternalStorageDir() + "/_temp";
							
							
							int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
							
							// send copying start event
							RunnerJNILib.DsMapAddString( dsMapIndex, "type", "filepickerstart");
							RunnerJNILib.DsMapAddString( dsMapIndex, "result", "");
							
							RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
							
							try {
								File destfile = new File(dest);
								
								if (destfile.exists())
									destfile.delete();
								
								InputStream in = ctx.getContentResolver().openInputStream(uri);
								OutputStream out = new FileOutputStream(destfile);
								
								Log.i("yoyo", "Writing to " + dest);
								
								byte[] buf = new byte[1024];
								int len;
								
								while ((len = in.read(buf)) > 0) {
									out.write(buf, 0, len);
								}
								
								Log.i("yoyo", "Done.");
								
								out.close();
								in.close();
								
								// if everything went just fine
								dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
								
								RunnerJNILib.DsMapAddString( dsMapIndex, "type", "filepicker" );
								RunnerJNILib.DsMapAddString( dsMapIndex, "result", split[1]);
								
								RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
								
							} catch (IOException e) {
								Log.e("yoyo", "Copying failed due to an exception. " + e);
								
								// if everything went opposite of fine
								dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
								
								RunnerJNILib.DsMapAddString( dsMapIndex, "type", "filepicker" );
								RunnerJNILib.DsMapAddString( dsMapIndex, "result", "");
								
								RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
								
							}
						}
					}).start();
				}
			break;
		}
	}
	
	public static String getExternalStorageDir() {
		return RunnerActivity.CurrentActivity.getBaseContext().getExternalFilesDir(null).getAbsolutePath();
	}
}