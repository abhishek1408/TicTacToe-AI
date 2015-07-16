.class public Lcom/example/administrator/tictactoeai/Loading;
.super Landroid/support/v7/app/ActionBarActivity;
.source "Loading.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "hello"


# instance fields
.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/Loading;->setContentView(I)V

    .line 18
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/Loading;->mThread:Ljava/lang/Thread;

    .line 19
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/Loading;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/Loading;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 48
    .local v0, "id":I
    const v1, 0x7f070048

    if-ne v0, v1, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 51
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 57
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/Loading;->finish()V

    .line 58
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 26
    sget v1, Lcom/example/administrator/tictactoeai/CalculateClass;->var:I

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/example/administrator/tictactoeai/CalculateClass;->init()V

    .line 28
    invoke-static {}, Lcom/example/administrator/tictactoeai/CalculateClass;->dpInit()V

    .line 30
    :cond_0
    const-string v1, "hello"

    const-string v2, "outside if"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/administrator/tictactoeai/FirstActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/Loading;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
