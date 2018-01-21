.class Landroid/widget/AbsListView$7;
.super Landroid/content/BroadcastReceiver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 7939
    iput-object p1, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7942
    const-string v0, "android.action.multifloatingtask.showsmallwindow"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoldingMode:Z
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7943
    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mSpringBackRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7944
    :cond_0
    return-void
.end method
