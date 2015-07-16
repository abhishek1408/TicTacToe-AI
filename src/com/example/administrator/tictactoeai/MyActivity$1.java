// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.example.administrator.tictactoeai;

import android.view.View;
import android.widget.Button;

// Referenced classes of package com.example.administrator.tictactoeai:
//            MyActivity, CalculateClass

class this._cls0
    implements android.view.istener
{

    final MyActivity this$0;

    public void onClick(View view)
    {
        if (!MyActivity.access$000(MyActivity.this))
        {
            MyActivity.access$102(MyActivity.this, CalculateClass.calculate(MyActivity.access$100(MyActivity.this)));
            Print(MyActivity.access$100(MyActivity.this));
            return;
        } else
        {
            MyActivity.access$102(MyActivity.this, CalculateClass.calculate(MyActivity.access$100(MyActivity.this)));
            Print(MyActivity.access$100(MyActivity.this));
            MyActivity.access$200(MyActivity.this).setVisibility(4);
            return;
        }
    }

    s()
    {
        this$0 = MyActivity.this;
        super();
    }
}
