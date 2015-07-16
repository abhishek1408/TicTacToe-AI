// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.example.administrator.tictactoeai;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

// Referenced classes of package com.example.administrator.tictactoeai:
//            CalculateClass, FirstActivity

public class Loading extends ActionBarActivity
    implements Runnable
{

    private static final String TAG = "hello";
    Thread mThread;

    public Loading()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030019);
        mThread = new Thread(this);
        mThread.start();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0c0001, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f070048)
        {
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onStop()
    {
        super.onStop();
        finish();
    }

    public void run()
    {
        if (CalculateClass.var == 0)
        {
            CalculateClass.init();
            CalculateClass.dpInit();
        }
        Log.d("hello", "outside if");
        startActivity(new Intent(this, com/example/administrator/tictactoeai/FirstActivity));
    }
}
