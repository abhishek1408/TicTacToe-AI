// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.example.administrator.tictactoeai;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.example.administrator.tictactoeai:
//            FirstActivity, MyActivity

class this._cls0
    implements android.view.ener
{

    final FirstActivity this$0;

    public void onClick(View view)
    {
        view = new Intent(FirstActivity.this, com/example/administrator/tictactoeai/MyActivity);
        view.putExtra("com.example.administrator.myapplication.hello.ANSWER_IS_TRUE", true);
        startActivity(view);
    }

    ()
    {
        this$0 = FirstActivity.this;
        super();
    }
}
