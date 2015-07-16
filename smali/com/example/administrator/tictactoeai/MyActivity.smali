.class public Lcom/example/administrator/tictactoeai/MyActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SINGLE_PLAYER:Ljava/lang/String; = "com.example.administrator.myapplication.hello.ANSWER_IS_TRUE"

.field private static final TAG:Ljava/lang/String; = "hello"


# instance fields
.field private i:I

.field private isSinglePlayer:Z

.field private j:I

.field private mButtons:[[Landroid/widget/Button;

.field private mHintButton:Landroid/widget/Button;

.field private mState:Lcom/example/administrator/tictactoeai/State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/administrator/tictactoeai/MyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/example/administrator/tictactoeai/MyActivity;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->isSinglePlayer:Z

    return v0
.end method

.method static synthetic access$100(Lcom/example/administrator/tictactoeai/MyActivity;)Lcom/example/administrator/tictactoeai/State;
    .locals 1
    .param p0, "x0"    # Lcom/example/administrator/tictactoeai/MyActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/example/administrator/tictactoeai/MyActivity;Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;
    .locals 0
    .param p0, "x0"    # Lcom/example/administrator/tictactoeai/MyActivity;
    .param p1, "x1"    # Lcom/example/administrator/tictactoeai/State;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/example/administrator/tictactoeai/MyActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/example/administrator/tictactoeai/MyActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mHintButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method BoardMove(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-boolean v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->isSinglePlayer:Z

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mHintButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    iget v0, v1, Lcom/example/administrator/tictactoeai/State;->counter:I

    .line 108
    .local v0, "temp":I
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {v1, p1, p2}, Lcom/example/administrator/tictactoeai/State;->Move(II)Lcom/example/administrator/tictactoeai/State;

    move-result-object v1

    iput-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    .line 109
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    iget v1, v1, Lcom/example/administrator/tictactoeai/State;->counter:I

    if-eq v0, v1, :cond_6

    .line 110
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    iget v1, v1, Lcom/example/administrator/tictactoeai/State;->nextMove:I

    if-nez v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    const-string v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {v1}, Lcom/example/administrator/tictactoeai/State;->checkGameEnd()I

    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 118
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 119
    const-string v1, "Congratulations!Player 1 Won"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 126
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->isSinglePlayer:Z

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    invoke-static {v1}, Lcom/example/administrator/tictactoeai/CalculateClass;->calculate(Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;

    move-result-object v1

    iput-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    .line 129
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {p0, v1}, Lcom/example/administrator/tictactoeai/MyActivity;->Print(Lcom/example/administrator/tictactoeai/State;)V

    .line 138
    :cond_2
    :goto_2
    return-void

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    const-string v2, "O"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 121
    const-string v1, "Congratulations!Player 2 Won"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 123
    :cond_5
    const-string v1, "OOPS!Game is Drawn"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 135
    :cond_6
    const-string v1, "Invalid Move"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method Print(Lcom/example/administrator/tictactoeai/State;)V
    .locals 7
    .param p1, "temp1"    # Lcom/example/administrator/tictactoeai/State;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    iput v3, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    :goto_0
    iget v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    if-ge v1, v6, :cond_3

    .line 80
    iput v3, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    :goto_1
    iget v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    if-ge v1, v6, :cond_2

    .line 82
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p1, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    aget v1, v1, v2

    if-ne v1, v4, :cond_0

    .line 84
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    aget-object v1, v1, v2

    const-string v2, "O"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    iget-object v1, p1, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    aget v1, v1, v2

    if-ne v1, v5, :cond_1

    .line 86
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    aget-object v1, v1, v2

    const-string v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    iget v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    goto :goto_1

    .line 78
    :cond_2
    iget v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {v1}, Lcom/example/administrator/tictactoeai/State;->checkGameEnd()I

    move-result v0

    .line 92
    .local v0, "temp":I
    if-eqz v0, :cond_4

    .line 94
    if-ne v0, v4, :cond_5

    .line 95
    const-string v1, "Congratulations!Player 1 Won"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 102
    :cond_4
    :goto_2
    return-void

    .line 96
    :cond_5
    if-ne v0, v5, :cond_6

    .line 97
    const-string v1, "Congratulations!Player 2 Won"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 99
    :cond_6
    const-string v1, "OOPS!Game is Drawn"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-virtual {p0, v1, v1}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p0, v1, v2}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-virtual {p0, v1, v3}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 156
    :pswitch_3
    invoke-virtual {p0, v2, v1}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 159
    :pswitch_4
    invoke-virtual {p0, v2, v2}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 162
    :pswitch_5
    invoke-virtual {p0, v2, v3}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 165
    :pswitch_6
    invoke-virtual {p0, v3, v1}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 168
    :pswitch_7
    invoke-virtual {p0, v3, v2}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 171
    :pswitch_8
    invoke-virtual {p0, v3, v3}, Lcom/example/administrator/tictactoeai/MyActivity;->BoardMove(II)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x7f07003e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/MyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.example.administrator.myapplication.hello.ANSWER_IS_TRUE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->isSinglePlayer:Z

    .line 32
    new-instance v0, Lcom/example/administrator/tictactoeai/State;

    invoke-direct {v0}, Lcom/example/administrator/tictactoeai/State;-><init>()V

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    .line 33
    sget-object v0, Lcom/example/administrator/tictactoeai/CalculateClass;->curState:Lcom/example/administrator/tictactoeai/State;

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    .line 35
    filled-new-array {v5, v5}, [I

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    .line 36
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mHintButton:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v2

    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 38
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v2

    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 39
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v2

    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    .line 40
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v3

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 41
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v3

    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 42
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v3

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    .line 43
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v4

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 44
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v4

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 45
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    aget-object v1, v0, v4

    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    .line 47
    iput v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    :goto_0
    iget v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    if-ge v0, v5, :cond_1

    .line 49
    iput v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    :goto_1
    iget v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    if-ge v0, v5, :cond_0

    .line 50
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mButtons:[[Landroid/widget/Button;

    iget v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->j:I

    goto :goto_1

    .line 47
    :cond_0
    iget v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->i:I

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->Print(Lcom/example/administrator/tictactoeai/State;)V

    .line 53
    iget-boolean v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->isSinglePlayer:Z

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mHintButton:Landroid/widget/Button;

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 57
    :goto_2
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mHintButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/administrator/tictactoeai/MyActivity$1;

    invoke-direct {v1, p0}, Lcom/example/administrator/tictactoeai/MyActivity$1;-><init>(Lcom/example/administrator/tictactoeai/MyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mHintButton:Landroid/widget/Button;

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/MyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 194
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    :pswitch_0
    return v1

    .line 198
    :pswitch_1
    iget-object v2, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mHintButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/MyActivity;->startNewGame()V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x7f070048
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    sput-object v0, Lcom/example/administrator/tictactoeai/CalculateClass;->curState:Lcom/example/administrator/tictactoeai/State;

    .line 210
    return-void
.end method

.method startNewGame()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/example/administrator/tictactoeai/State;

    invoke-direct {v0}, Lcom/example/administrator/tictactoeai/State;-><init>()V

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    .line 185
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    sput-object v0, Lcom/example/administrator/tictactoeai/CalculateClass;->curState:Lcom/example/administrator/tictactoeai/State;

    .line 186
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/MyActivity;->Print(Lcom/example/administrator/tictactoeai/State;)V

    .line 187
    return-void
.end method
