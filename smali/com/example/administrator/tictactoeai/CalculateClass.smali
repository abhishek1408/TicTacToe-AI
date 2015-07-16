.class public Lcom/example/administrator/tictactoeai/CalculateClass;
.super Ljava/lang/Object;
.source "CalculateClass.java"


# static fields
.field public static curState:Lcom/example/administrator/tictactoeai/State;

.field public static dp:[Lcom/example/administrator/tictactoeai/State;

.field static var:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Lcom/example/administrator/tictactoeai/CalculateClass;->var:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;
    .locals 13
    .param p0, "s"    # Lcom/example/administrator/tictactoeai/State;

    .prologue
    .line 28
    const/4 v6, 0x0

    .local v6, "posi":I
    const/4 v7, 0x0

    .local v7, "posj":I
    const/4 v5, 0x0

    .local v5, "mwinX":I
    const/4 v4, 0x0

    .local v4, "mwinO":I
    const/4 v3, 0x0

    .line 29
    .local v3, "mdraw":I
    sget-object v11, Lcom/example/administrator/tictactoeai/CalculateClass;->dp:[Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/State;->getmHashcode()I

    move-result v12

    aget-object v11, v11, v12

    iget v11, v11, Lcom/example/administrator/tictactoeai/State;->counter:I

    if-eqz v11, :cond_0

    .line 31
    sget-object v11, Lcom/example/administrator/tictactoeai/CalculateClass;->dp:[Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/State;->getmHashcode()I

    move-result v12

    aget-object p0, v11, v12

    .line 95
    .end local p0    # "s":Lcom/example/administrator/tictactoeai/State;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "s":Lcom/example/administrator/tictactoeai/State;
    :cond_0
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/State;->checkGameEnd()I

    move-result v11

    if-nez v11, :cond_5

    .line 37
    const/4 v8, -0x1

    .local v8, "res":I
    const/4 v2, -0x1

    .line 38
    .local v2, "maxres":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v11, 0x3

    if-ge v0, v11, :cond_4

    .line 40
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/4 v11, 0x3

    if-ge v1, v11, :cond_3

    .line 42
    iget-object v11, p0, Lcom/example/administrator/tictactoeai/State;->mBoard:[[I

    aget-object v11, v11, v0

    aget v11, v11, v1

    if-nez v11, :cond_1

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/example/administrator/tictactoeai/State;->Move(II)Lcom/example/administrator/tictactoeai/State;

    move-result-object v9

    .line 45
    .local v9, "temp":Lcom/example/administrator/tictactoeai/State;
    invoke-static {v9}, Lcom/example/administrator/tictactoeai/CalculateClass;->calculate(Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;

    move-result-object v10

    .line 46
    .local v10, "temp2":Lcom/example/administrator/tictactoeai/State;
    iget v11, p0, Lcom/example/administrator/tictactoeai/State;->nextMove:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 48
    iget v11, v10, Lcom/example/administrator/tictactoeai/State;->winX:I

    mul-int/lit8 v11, v11, 0x2

    iget v12, v10, Lcom/example/administrator/tictactoeai/State;->draw:I

    add-int v8, v11, v12

    .line 49
    if-lt v8, v2, :cond_1

    .line 51
    move v2, v8

    .line 52
    move v6, v0

    .line 53
    move v7, v1

    .line 54
    iget v4, v10, Lcom/example/administrator/tictactoeai/State;->winO:I

    .line 55
    iget v5, v10, Lcom/example/administrator/tictactoeai/State;->winX:I

    .line 56
    iget v3, v10, Lcom/example/administrator/tictactoeai/State;->draw:I

    .line 40
    .end local v9    # "temp":Lcom/example/administrator/tictactoeai/State;
    .end local v10    # "temp2":Lcom/example/administrator/tictactoeai/State;
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 61
    .restart local v9    # "temp":Lcom/example/administrator/tictactoeai/State;
    .restart local v10    # "temp2":Lcom/example/administrator/tictactoeai/State;
    :cond_2
    iget v11, v10, Lcom/example/administrator/tictactoeai/State;->winO:I

    mul-int/lit8 v11, v11, 0x2

    iget v12, v10, Lcom/example/administrator/tictactoeai/State;->draw:I

    add-int v8, v11, v12

    .line 62
    if-lt v8, v2, :cond_1

    .line 64
    move v2, v8

    .line 65
    move v6, v0

    .line 66
    move v7, v1

    .line 67
    iget v4, v10, Lcom/example/administrator/tictactoeai/State;->winO:I

    .line 68
    iget v5, v10, Lcom/example/administrator/tictactoeai/State;->winX:I

    .line 69
    iget v3, v10, Lcom/example/administrator/tictactoeai/State;->draw:I

    goto :goto_3

    .line 38
    .end local v9    # "temp":Lcom/example/administrator/tictactoeai/State;
    .end local v10    # "temp2":Lcom/example/administrator/tictactoeai/State;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    .end local v1    # "j":I
    :cond_4
    invoke-virtual {p0, v6, v7}, Lcom/example/administrator/tictactoeai/State;->Move(II)Lcom/example/administrator/tictactoeai/State;

    move-result-object v9

    .line 78
    .restart local v9    # "temp":Lcom/example/administrator/tictactoeai/State;
    iput v3, v9, Lcom/example/administrator/tictactoeai/State;->draw:I

    .line 79
    iput v4, v9, Lcom/example/administrator/tictactoeai/State;->winO:I

    .line 80
    iput v5, v9, Lcom/example/administrator/tictactoeai/State;->winX:I

    .line 81
    sget-object v11, Lcom/example/administrator/tictactoeai/CalculateClass;->dp:[Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/State;->getmHashcode()I

    move-result v12

    aput-object v9, v11, v12

    .line 82
    sget-object v11, Lcom/example/administrator/tictactoeai/CalculateClass;->dp:[Lcom/example/administrator/tictactoeai/State;

    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/State;->getmHashcode()I

    move-result v12

    aget-object p0, v11, v12

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    .end local v2    # "maxres":I
    .end local v8    # "res":I
    .end local v9    # "temp":Lcom/example/administrator/tictactoeai/State;
    :cond_5
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/State;->checkGameEnd()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    .line 88
    const/16 v11, 0x64

    iput v11, p0, Lcom/example/administrator/tictactoeai/State;->draw:I

    goto :goto_0

    .line 89
    :cond_6
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/State;->checkGameEnd()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 91
    const/16 v11, 0x64

    iput v11, p0, Lcom/example/administrator/tictactoeai/State;->winO:I

    goto/16 :goto_0

    .line 94
    :cond_7
    const/16 v11, 0x64

    iput v11, p0, Lcom/example/administrator/tictactoeai/State;->winX:I

    goto/16 :goto_0
.end method

.method static dpInit()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/example/administrator/tictactoeai/State;

    invoke-direct {v0}, Lcom/example/administrator/tictactoeai/State;-><init>()V

    .line 23
    .local v0, "tempState":Lcom/example/administrator/tictactoeai/State;
    invoke-static {v0}, Lcom/example/administrator/tictactoeai/CalculateClass;->calculate(Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;

    .line 24
    return-void
.end method

.method static init()V
    .locals 3

    .prologue
    .line 14
    const/4 v1, 0x1

    sput v1, Lcom/example/administrator/tictactoeai/CalculateClass;->var:I

    .line 15
    new-instance v1, Lcom/example/administrator/tictactoeai/State;

    invoke-direct {v1}, Lcom/example/administrator/tictactoeai/State;-><init>()V

    sput-object v1, Lcom/example/administrator/tictactoeai/CalculateClass;->curState:Lcom/example/administrator/tictactoeai/State;

    .line 16
    const/16 v1, 0x4e84

    new-array v1, v1, [Lcom/example/administrator/tictactoeai/State;

    sput-object v1, Lcom/example/administrator/tictactoeai/CalculateClass;->dp:[Lcom/example/administrator/tictactoeai/State;

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_0

    .line 18
    sget-object v1, Lcom/example/administrator/tictactoeai/CalculateClass;->dp:[Lcom/example/administrator/tictactoeai/State;

    new-instance v2, Lcom/example/administrator/tictactoeai/State;

    invoke-direct {v2}, Lcom/example/administrator/tictactoeai/State;-><init>()V

    aput-object v2, v1, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method
