// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.example.administrator.tictactoeai;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

// Referenced classes of package com.example.administrator.tictactoeai:
//            MyActivity

public class FirstActivity extends ActionBarActivity
{

    Button mMulti;
    Button mSingle;

    public FirstActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030018);
        mSingle = (Button)findViewById(0x7f07003c);
        mMulti = (Button)findViewById(0x7f07003d);
        mMulti.setOnClickListener(new android.view.View.OnClickListener() {

            final FirstActivity this$0;

            public void onClick(View view)
            {
                view = new Intent(FirstActivity.this, com/example/administrator/tictactoeai/MyActivity);
                view.putExtra("com.example.administrator.myapplication.hello.ANSWER_IS_TRUE", false);
                startActivity(view);
            }

            
            {
                this$0 = FirstActivity.this;
                super();
            }
        });
        mSingle.setOnClickListener(new android.view.View.OnClickListener() {

            final FirstActivity this$0;

            public void onClick(View view)
            {
                view = new Intent(FirstActivity.this, com/example/administrator/tictactoeai/MyActivity);
                view.putExtra("com.example.administrator.myapplication.hello.ANSWER_IS_TRUE", true);
                startActivity(view);
            }

            
            {
                this$0 = FirstActivity.this;
                super();
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0c0000, menu);
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
}
