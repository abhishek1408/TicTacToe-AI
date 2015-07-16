// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.example.administrator.tictactoeai;

import android.util.Log;
import java.lang.reflect.Array;

public class State
{

    private static final String TAG = "hello";
    int counter;
    int draw;
    private int i;
    private int j;
    int mBoard[][];
    private int mHashcode;
    int nextMove;
    int winO;
    int winX;

    State()
    {
        mBoard = (int[][])Array.newInstance(Integer.TYPE, new int[] {
            3, 3
        });
        mHashcode = 0;
        counter = 0;
        nextMove = 0;
        for (i = 0; i < 3; i = i + 1)
        {
            for (j = 0; j < 3; j = j + 1)
            {
                mBoard[i][j] = 0;
            }

        }

    }

    State Move(int k, int l)
    {
        State state = new State();
        for (i = 0; i < 3; i = i + 1)
        {
            for (j = 0; j < 3; j = j + 1)
            {
                state.mBoard[i][j] = mBoard[i][j];
            }

        }

        state.counter = counter;
        state.nextMove = nextMove;
        if (mBoard[k][l] == 0)
        {
            state.mBoard[k][l] = nextMove + 1;
            state.nextMove = nextMove ^ 1;
            state.counter = counter + 1;
        }
        return state;
    }

    int checkGameEnd()
    {
        int j1;
        j1 = 0;
        if (counter >= 5)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        return 0;
        int k;
        int i1;
        k = mBoard[1][1];
        int l = j1;
        if (mBoard[0][0] == mBoard[2][2])
        {
            l = j1;
            if (mBoard[0][0] == k)
            {
                l = k;
            }
        }
        j1 = l;
        if (mBoard[0][1] == mBoard[2][1])
        {
            j1 = l;
            if (mBoard[0][1] == k)
            {
                j1 = l;
                if (l == 0)
                {
                    j1 = k;
                }
            }
        }
        l = j1;
        if (mBoard[0][2] == mBoard[2][0])
        {
            l = j1;
            if (mBoard[0][2] == k)
            {
                l = j1;
                if (j1 == 0)
                {
                    l = k;
                }
            }
        }
        j1 = l;
        if (mBoard[1][0] == mBoard[1][2])
        {
            j1 = l;
            if (mBoard[1][0] == k)
            {
                j1 = l;
                if (l == 0)
                {
                    j1 = k;
                }
            }
        }
        k = j1;
        if (mBoard[0][0] == mBoard[0][1])
        {
            k = j1;
            if (mBoard[0][1] == mBoard[0][2])
            {
                k = j1;
                if (j1 == 0)
                {
                    k = mBoard[0][0];
                }
            }
        }
        l = k;
        if (mBoard[0][0] == mBoard[1][0])
        {
            l = k;
            if (mBoard[1][0] == mBoard[2][0])
            {
                l = k;
                if (k == 0)
                {
                    l = mBoard[0][0];
                }
            }
        }
        k = l;
        if (mBoard[2][0] == mBoard[2][1])
        {
            k = l;
            if (mBoard[2][1] == mBoard[2][2])
            {
                k = l;
                if (l == 0)
                {
                    k = mBoard[2][0];
                }
            }
        }
        l = k;
        if (mBoard[0][2] == mBoard[1][2])
        {
            l = k;
            if (mBoard[1][2] == mBoard[2][2])
            {
                l = k;
                if (k == 0)
                {
                    Log.d("hello", "hello");
                    l = mBoard[0][2];
                }
            }
        }
        if (l != 0)
        {
            return l;
        }
        k = 0;
          goto _L1
        continue; /* Loop/switch isn't completed */
        k++;
    }

    int getmHashcode()
    {
        toHashCode();
        return mHashcode;
    }

    void toHashCode()
    {
        int k = 1;
        mHashcode = 0;
        for (i = 0; i < 3; i = i + 1)
        {
            for (j = 0; j < 3; j = j + 1)
            {
                mHashcode = mHashcode + mBoard[i][j] * k;
                k *= 3;
            }

        }

    }
}
