.class Landroid/widget/AbsListView$6;
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
    .line 7919
    iput-object p1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7922
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsListView;->mHoldingMode:Z
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$5002(Landroid/widget/AbsListView;Z)Z

    .line 7923
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7924
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7925
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 7927
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_1

    .line 7928
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7930
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7931
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7932
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7933
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    iget-object v2, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    # setter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$4802(Landroid/widget/AbsListView;Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/AbsListView$FlingRunnable;

    .line 7935
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 7936
    return-void
.end method
