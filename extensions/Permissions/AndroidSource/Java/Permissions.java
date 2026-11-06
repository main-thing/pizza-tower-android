package ${YYAndroidPackageName};

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;

import com.yoyogames.runner.RunnerJNILib;

public class FileAccessPermission {
    public static void RequestManageAllFilesPermission() {
        Activity activity = RunnerJNILib.GetApplicationContext();

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            if (!android.os.Environment.isExternalStorageManager()) {
                Intent intent = new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION);
                intent.setData(Uri.parse("package:" + activity.getPackageName()));
                activity.startActivity(intent);
            }
        }
    }
}
