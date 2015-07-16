.class Lcom/example/administrator/tictactoeai/MyActivity$1;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/administrator/tictactoeai/MyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/administrator/tictactoeai/MyActivity;


# direct methods
.method constructor <init>(Lcom/example/administrator/tictactoeai/MyActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    # getter for: Lcom/example/administrator/tictactoeai/MyActivity;->isSinglePlayer:Z
    invoke-static {v0}, Lcom/example/administrator/tictactoeai/MyActivity;->access$000(Lcom/example/administrator/tictactoeai/MyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    # getter for: Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;
    invoke-static {v1}, Lcom/example/administrator/tictactoeai/MyActivity;->access$100(Lcom/example/administrator/tictactoeai/MyActivity;)Lcom/example/administrator/tictactoeai/State;

    move-result-object v1

    invoke-static {v1}, Lcom/example/administrator/tictactoeai/CalculateClass;->calculate(Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;

    move-result-object v1

    # setter for: Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;
    invoke-static {v0, v1}, Lcom/example/administrator/tictactoeai/MyActivity;->access$102(Lcom/example/administrator/tictactoeai/MyActivity;Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;

    .line 62
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    # getter for: Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;
    invoke-static {v1}, Lcom/example/administrator/tictactoeai/MyActivity;->access$100(Lcom/example/administrator/tictactoeai/MyActivity;)Lcom/example/administrator/tictactoeai/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/administrator/tictactoeai/MyActivity;->Print(Lcom/example/administrator/tictactoeai/State;)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    # getter for: Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;
    invoke-static {v1}, Lcom/example/administrator/tictactoeai/MyActivity;->access$100(Lcom/example/administrator/tictactoeai/MyActivity;)Lcom/example/administrator/tictactoeai/State;

    move-result-object v1

    invoke-static {v1}, Lcom/example/administrator/tictactoeai/CalculateClass;->calculate(Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;

    move-result-object v1

    # setter for: Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;
    invoke-static {v0, v1}, Lcom/example/administrator/tictactoeai/MyActivity;->access$102(Lcom/example/administrator/tictactoeai/MyActivity;Lcom/example/administrator/tictactoeai/State;)Lcom/example/administrator/tictactoeai/State;

    .line 66
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    iget-object v1, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    # getter for: Lcom/example/administrator/tictactoeai/MyActivity;->mState:Lcom/example/administrator/tictactoeai/State;
    invoke-static {v1}, Lcom/example/administrator/tictactoeai/MyActivity;->access$100(Lcom/example/administrator/tictactoeai/MyActivity;)Lcom/example/administrator/tictactoeai/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/administrator/tictactoeai/MyActivity;->Print(Lcom/example/administrator/tictactoeai/State;)V

    .line 67
    iget-object v0, p0, Lcom/example/administrator/tictactoeai/MyActivity$1;->this$0:Lcom/example/administrator/tictactoeai/MyActivity;

    # getter for: Lcom/example/administrator/tictactoeai/MyActivity;->mHintButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/example/administrator/tictactoeai/MyActivity;->access$200(Lcom/example/administrator/tictactoeai/MyActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
