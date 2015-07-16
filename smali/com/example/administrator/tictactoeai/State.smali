.class public Lcom/example/administrator/tictactoeai/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "hello"


# instance fields
.field counter:I

.field draw:I

.field private i:I

.field private j:I

.field mBoard:[[I

.field private mHashcode:I

.field nextMove:I

.field winO:I

.field winX:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    .line 30
    iput v2, p0, Lcom/example/administrator/tictactoeai/State;->mHashcode:I

    iput v2, p0, Lcom/example/administrator/tictactoeai/State;->counter:I

    iput v2, p0, Lcom/example/administrator/tictactoeai/State;->nextMove:I

    .line 31
    iput v2, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    :goto_0
    iget v0, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    if-ge v0, v3, :cond_1

    .line 33
    iput v2, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    :goto_1
    iget v0, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    if-ge v0, v3, :cond_0

    .line 35
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    aput v2, v0, v1

    .line 33
    iget v0, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    goto :goto_1

    .line 31
    :cond_0
    iget v0, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method Move(II)Lcom/example/administrator/tictactoeai/State;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 46
    new-instance v0, Lcom/example/administrator/tictactoeai/State;

    invoke-direct {v0}, Lcom/example/administrator/tictactoeai/State;-><init>()V

    .line 47
    .local v0, "temp":Lcom/example/administrator/tictactoeai/State;
    iput v5, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    :goto_0
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    if-ge v1, v6, :cond_1

    .line 49
    iput v5, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    :goto_1
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    if-ge v1, v6, :cond_0

    .line 51
    iget-object v1, v0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    iget v2, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    iget-object v3, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    iget v4, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    aget v3, v3, v4

    aput v3, v1, v2

    .line 49
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    goto :goto_1

    .line 47
    :cond_0
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    goto :goto_0

    .line 54
    :cond_1
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->counter:I

    iput v1, v0, Lcom/example/administrator/tictactoeai/State;->counter:I

    .line 55
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->nextMove:I

    iput v1, v0, Lcom/example/administrator/tictactoeai/State;->nextMove:I

    .line 56
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    if-nez v1, :cond_2

    .line 57
    iget-object v1, v0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v1, v1, p1

    iget v2, p0, Lcom/example/administrator/tictactoeai/State;->nextMove:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p2

    .line 58
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->nextMove:I

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/example/administrator/tictactoeai/State;->nextMove:I

    .line 59
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/example/administrator/tictactoeai/State;->counter:I

    .line 61
    :cond_2
    return-object v0
.end method

.method checkGameEnd()I
    .locals 10

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, "win":I
    iget v6, p0, Lcom/example/administrator/tictactoeai/State;->counter:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v4

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v9

    aget v2, v6, v9

    .line 71
    .local v2, "temp":I
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v4

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v8

    aget v7, v7, v8

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v4

    if-ne v6, v2, :cond_2

    .line 73
    move v3, v2

    .line 75
    :cond_2
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v9

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v8

    aget v7, v7, v9

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v9

    if-ne v6, v2, :cond_3

    if-nez v3, :cond_3

    .line 77
    move v3, v2

    .line 80
    :cond_3
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v8

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v8

    aget v7, v7, v4

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v8

    if-ne v6, v2, :cond_4

    if-nez v3, :cond_4

    .line 82
    move v3, v2

    .line 85
    :cond_4
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v9

    aget v6, v6, v4

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v9

    aget v7, v7, v8

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v9

    aget v6, v6, v4

    if-ne v6, v2, :cond_5

    if-nez v3, :cond_5

    .line 87
    move v3, v2

    .line 90
    :cond_5
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v4

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v4

    aget v7, v7, v9

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v9

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v4

    aget v7, v7, v8

    if-ne v6, v7, :cond_6

    if-nez v3, :cond_6

    .line 92
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v3, v6, v4

    .line 95
    :cond_6
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v4

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v9

    aget v7, v7, v4

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v9

    aget v6, v6, v4

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v8

    aget v7, v7, v4

    if-ne v6, v7, :cond_7

    if-nez v3, :cond_7

    .line 97
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v3, v6, v4

    .line 100
    :cond_7
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v8

    aget v6, v6, v4

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v8

    aget v7, v7, v9

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v8

    aget v6, v6, v9

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v8

    aget v7, v7, v8

    if-ne v6, v7, :cond_8

    if-nez v3, :cond_8

    .line 102
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v8

    aget v3, v6, v4

    .line 105
    :cond_8
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v6, v6, v8

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v9

    aget v7, v7, v8

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v9

    aget v6, v6, v8

    iget-object v7, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v7, v7, v8

    aget v7, v7, v8

    if-ne v6, v7, :cond_9

    if-nez v3, :cond_9

    .line 107
    const-string v6, "hello"

    const-string v7, "hello"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v4

    aget v3, v6, v8

    .line 110
    :cond_9
    if-eqz v3, :cond_a

    move v4, v3

    .line 112
    goto/16 :goto_0

    .line 116
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_c

    .line 118
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v5, :cond_b

    .line 120
    iget-object v6, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v6, v6, v0

    aget v6, v6, v1

    if-eqz v6, :cond_0

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "j":I
    :cond_c
    move v4, v5

    .line 125
    goto/16 :goto_0
.end method

.method getmHashcode()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/State;->toHashCode()V

    .line 42
    iget v0, p0, Lcom/example/administrator/tictactoeai/State;->mHashcode:I

    return v0
.end method

.method toHashCode()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 16
    const/4 v0, 0x1

    .line 17
    .local v0, "var":I
    iput v4, p0, Lcom/example/administrator/tictactoeai/State;->mHashcode:I

    .line 18
    iput v4, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    :goto_0
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    if-ge v1, v5, :cond_1

    .line 20
    iput v4, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    :goto_1
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    if-ge v1, v5, :cond_0

    .line 22
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->mHashcode:I

    iget-object v2, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    iget v3, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    aget v2, v2, v3

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/example/administrator/tictactoeai/State;->mHashcode:I

    .line 23
    mul-int/lit8 v0, v0, 0x3

    .line 20
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/example/administrator/tictactoeai/State;->j:I

    goto :goto_1

    .line 18
    :cond_0
    iget v1, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/example/administrator/tictactoeai/State;->i:I

    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method
