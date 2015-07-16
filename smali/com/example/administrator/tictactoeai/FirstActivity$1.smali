.class Lcom/example/administrator/tictactoeai/FirstActivity$1;
.super Ljava/lang/Object;
.source "FirstActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/administrator/tictactoeai/FirstActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/administrator/tictactoeai/FirstActivity;


# direct methods
.method constructor <init>(Lcom/example/administrator/tictactoeai/FirstActivity;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/example/administrator/tictactoeai/FirstActivity$1;->this$0:Lcom/example/administrator/tictactoeai/FirstActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/administrator/tictactoeai/FirstActivity$1;->this$0:Lcom/example/administrator/tictactoeai/FirstActivity;

    const-class v2, Lcom/example/administrator/tictactoeai/MyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "I":Landroid/content/Intent;
    const-string v1, "com.example.administrator.myapplication.hello.ANSWER_IS_TRUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    iget-object v1, p0, Lcom/example/administrator/tictactoeai/FirstActivity$1;->this$0:Lcom/example/administrator/tictactoeai/FirstActivity;

    invoke-virtual {v1, v0}, Lcom/example/administrator/tictactoeai/FirstActivity;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
