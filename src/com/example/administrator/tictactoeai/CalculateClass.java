// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.example.administrator.tictactoeai;


// Referenced classes of package com.example.administrator.tictactoeai:
//            State

public class CalculateClass
{

    public static State curState;
    public static State dp[];
    static int var = 0;

    public CalculateClass()
    {
    }

    public static State calculate(State state)
    {
        int j2 = 0;
        int i2 = 0;
        int k2 = 0;
        int l2 = 0;
        int i3 = 0;
        if (dp[state.getmHashcode()].counter != 0)
        {
            return dp[state.getmHashcode()];
        }
        if (state.checkGameEnd() == 0)
        {
            int j3 = -1;
            int i = 0;
            do
            {
                if (i >= 3)
                {
                    break;
                }
                int j = 0;
                while (j < 3) 
                {
                    int k = j3;
                    int l = i3;
                    int i1 = l2;
                    int j1 = k2;
                    int k1 = j2;
                    int l1 = i2;
                    if (state.mBoard[i][j] == 0)
                    {
                        State state1 = calculate(state.Move(i, j));
                        if (state.nextMove == 1)
                        {
                            int k3 = state1.winX * 2 + state1.draw;
                            k = j3;
                            l = i3;
                            i1 = l2;
                            j1 = k2;
                            k1 = j2;
                            l1 = i2;
                            if (k3 >= j3)
                            {
                                k = k3;
                                k1 = i;
                                l1 = j;
                                i1 = state1.winO;
                                j1 = state1.winX;
                                l = state1.draw;
                            }
                        } else
                        {
                            int l3 = state1.winO * 2 + state1.draw;
                            k = j3;
                            l = i3;
                            i1 = l2;
                            j1 = k2;
                            k1 = j2;
                            l1 = i2;
                            if (l3 >= j3)
                            {
                                k = l3;
                                k1 = i;
                                l1 = j;
                                i1 = state1.winO;
                                j1 = state1.winX;
                                l = state1.draw;
                            }
                        }
                    }
                    j++;
                    j3 = k;
                    i3 = l;
                    l2 = i1;
                    k2 = j1;
                    j2 = k1;
                    i2 = l1;
                }
                i++;
            } while (true);
            State state2 = state.Move(j2, i2);
            state2.draw = i3;
            state2.winO = l2;
            state2.winX = k2;
            dp[state.getmHashcode()] = state2;
            return dp[state.getmHashcode()];
        } else
        {
            if (state.checkGameEnd() == 3)
            {
                state.draw = 100;
                return state;
            }
            if (state.checkGameEnd() == 1)
            {
                state.winO = 100;
                return state;
            } else
            {
                state.winX = 100;
                return state;
            }
        }
    }

    static void dpInit()
    {
        calculate(new State());
    }

    static void init()
    {
        var = 1;
        curState = new State();
        dp = new State[20100];
        for (int i = 0; i < 20000; i++)
        {
            dp[i] = new State();
        }

    }

}
