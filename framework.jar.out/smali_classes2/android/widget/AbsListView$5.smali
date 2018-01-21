.class Landroid/widget/AbsListView$5;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 7902
    iput-object p1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 7905
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7906
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 7907
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 7908
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mHoldingMode:Z
    invoke-static {v0, v2}, Landroid/widget/AbsListView;->access$5002(Landroid/widget/AbsListView;Z)Z

    .line 7909
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v0, v2}, Landroid/widget/AbsListView;->access$5102(Landroid/widget/AbsListView;I)I

    .line 7910
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->invalidateParentCaches()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)V

    .line 7911
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->finishGlows()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)V

    .line 7912
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 7913
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7914
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7916
    :cond_1
    return-void
.end method
