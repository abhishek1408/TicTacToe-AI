.class public Lcom/example/administrator/tictactoeai/FirstActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "FirstActivity.java"


# instance fields
.field mMulti:Landroid/widget/Button;

.field mSingle:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/FirstActivity;->setContentView(I)V

    .line 22
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/FirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/FirstActivity;->mSingle:Landroid/widget/Button;

    .line 23
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/example/administrator/tictactoeai/FirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/administrator/tictactoeai/FirstActivity;->mMulti:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/FirstActivity;->mMulti:Landroid/widget/Button;

    new-instance v1, Lcom/example/administrator/tictactoeai/FirstActivity$1;

    invoke-direct {v1, p0}, Lcom/example/administrator/tictactoeai/FirstActivity$1;-><init>(Lcom/example/administrator/tictactoeai/FirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/FirstActivity;->mSingle:Landroid/widget/Button;

    new-instance v1, Lcom/example/administrator/tictactoeai/FirstActivity$2;

    invoke-direct {v1, p0}, Lcom/example/administrator/tictactoeai/FirstActivity$2;-><init>(Lcom/example/administrator/tictactoeai/FirstActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/example/administrator/tictactoeai/FirstActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 56
    .local v0, "id":I
    const v1, 0x7f070048

    if-ne v0, v1, :cond_0

    .line 57
    const/4 v1, 0x1

    .line 59
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
