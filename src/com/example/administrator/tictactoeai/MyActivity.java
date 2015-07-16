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
import android.widget.Toast;
import java.lang.reflect.Array;

// Referenced classes of package com.example.administrator.tictactoeai:
//            State, CalculateClass

public class MyActivity extends ActionBarActivity
    implements android.view.View.OnClickListener
{

    public static final String SINGLE_PLAYER = "com.example.administrator.myapplication.hello.ANSWER_IS_TRUE";
    private static final String TAG = "hello";
    private int i;
    private boolean isSinglePlayer;
    private int j;
    private Button mButtons[][];
    private Button mHintButton;
    private State mState;

    public MyActivity()
    {
    }

    void BoardMove(int k, int l)
    {
        if (isSinglePlayer)
        {
            mHintButton.setVisibility(4);
        }
        int i1 = mState.counter;
        mState = mState.Move(k, l);
        if (i1 != mState.counter)
        {
            if (mState.nextMove == 0)
            {
                mButtons[k][l].setText("X");
            } else
            {
                mButtons[k][l].setText("O");
            }
            k = mState.checkGameEnd();
            if (k != 0)
            {
                if (k == 1)
                {
                    Toast.makeText(this, "Congratulations!Player 1 Won", 0).show();
                } else
                if (k == 2)
                {
                    Toast.makeText(this, "Congratulations!Player 2 Won", 0).show();
                } else
                {
                    Toast.makeText(this, "OOPS!Game is Drawn", 0).show();
                }
            }
            if (isSinglePlayer)
            {
                mState = CalculateClass.calculate(mState);
                Print(mState);
            }
            return;
        } else
        {
            Toast.makeText(this, "Invalid Move", 0).show();
            return;
        }
    }

    void Print(State state)
    {
        int k;
label0:
        {
            for (i = 0; i < 3; i = i + 1)
            {
                for (j = 0; j < 3; j = j + 1)
                {
                    mButtons[i][j].setText("");
                    if (state.mBoard[i][j] == 1)
                    {
                        mButtons[i][j].setText("O");
                    }
                    if (state.mBoard[i][j] == 2)
                    {
                        mButtons[i][j].setText("X");
                    }
                }

            }

            k = mState.checkGameEnd();
            if (k != 0)
            {
                if (k != 1)
                {
                    break label0;
                }
                Toast.makeText(this, "Congratulations!Player 1 Won", 0).show();
            }
            return;
        }
        if (k == 2)
        {
            Toast.makeText(this, "Congratulations!Player 2 Won", 0).show();
            return;
        } else
        {
            Toast.makeText(this, "OOPS!Game is Drawn", 0).show();
            return;
        }
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131165246: 
            BoardMove(0, 0);
            return;

        case 2131165247: 
            BoardMove(0, 1);
            return;

        case 2131165248: 
            BoardMove(0, 2);
            return;

        case 2131165249: 
            BoardMove(1, 0);
            return;

        case 2131165250: 
            BoardMove(1, 1);
            return;

        case 2131165251: 
            BoardMove(1, 2);
            return;

        case 2131165252: 
            BoardMove(2, 0);
            return;

        case 2131165253: 
            BoardMove(2, 1);
            return;

        case 2131165254: 
            BoardMove(2, 2);
            break;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001a);
        isSinglePlayer = getIntent().getBooleanExtra("com.example.administrator.myapplication.hello.ANSWER_IS_TRUE", false);
        mState = new State();
        mState = CalculateClass.curState;
        mButtons = (Button[][])Array.newInstance(android/widget/Button, new int[] {
            3, 3
        });
        mHintButton = (Button)findViewById(0x7f070047);
        mButtons[0][0] = (Button)findViewById(0x7f07003e);
        mButtons[0][1] = (Button)findViewById(0x7f07003f);
        mButtons[0][2] = (Button)findViewById(0x7f070040);
        mButtons[1][0] = (Button)findViewById(0x7f070041);
        mButtons[1][1] = (Button)findViewById(0x7f070042);
        mButtons[1][2] = (Button)findViewById(0x7f070043);
        mButtons[2][0] = (Button)findViewById(0x7f070044);
        mButtons[2][1] = (Button)findViewById(0x7f070045);
        mButtons[2][2] = (Button)findViewById(0x7f070046);
        for (i = 0; i < 3; i = i + 1)
        {
            for (j = 0; j < 3; j = j + 1)
            {
                mButtons[i][j].setOnClickListener(this);
            }

        }

        Print(mState);
        if (isSinglePlayer)
        {
            mHintButton.setText(0x7f0a0015);
        } else
        {
            mHintButton.setText(0x7f0a0000);
        }
        mHintButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MyActivity this$0;

            public void onClick(View view)
            {
                if (!isSinglePlayer)
                {
                    mState = CalculateClass.calculate(mState);
                    Print(mState);
                    return;
                } else
                {
                    mState = CalculateClass.calculate(mState);
                    Print(mState);
                    mHintButton.setVisibility(4);
                    return;
                }
            }

            
            {
                this$0 = MyActivity.this;
                super();
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0c0002, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag = true;
        switch (menuitem.getItemId())
        {
        default:
            flag = super.onOptionsItemSelected(menuitem);
            // fall through

        case 2131165256: 
            return flag;

        case 2131165257: 
            mHintButton.setVisibility(0);
            break;
        }
        startNewGame();
        return true;
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        CalculateClass.curState = mState;
    }

    void startNewGame()
    {
        mState = new State();
        CalculateClass.curState = mState;
        Print(mState);
    }




/*
    static State access$102(MyActivity myactivity, State state)
    {
        myactivity.mState = state;
        return state;
    }

*/

}
