.class Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "GestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field fireActionPerformed:Z

.field resetMultipleStrokes:Z

.field final synthetic this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;
    .param p2, "x1"    # Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$1;

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xff

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 737
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # getter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mIsFadingOut:Z
    invoke-static {v3}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$100(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 738
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 739
    .local v4, "now":J
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # getter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mFadingStart:J
    invoke-static {v3}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$200(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 741
    .local v0, "duration":J
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # getter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mFadeDuration:J
    invoke-static {v3}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$300(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)J

    move-result-wide v6

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 742
    iget-boolean v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v3, :cond_0

    .line 743
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # invokes: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->fireOnGesturePerformed()V
    invoke-static {v3}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$400(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)V

    .line 746
    :cond_0
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mPreviousWasGesturing:Z
    invoke-static {v3, v8}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$502(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Z)Z

    .line 747
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mIsFadingOut:Z
    invoke-static {v3, v8}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$102(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Z)Z

    .line 748
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v3, v8}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$602(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Z)Z

    .line 749
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # getter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$700(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 750
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;
    invoke-static {v3, v12}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$802(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Lcom/vivo/services/motion/gesture/gesture/Gesture;)Lcom/vivo/services/motion/gesture/gesture/Gesture;

    .line 751
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # invokes: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v3, v11}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$900(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;I)V

    .line 772
    .end local v0    # "duration":J
    .end local v4    # "now":J
    :goto_0
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->invalidate()V

    .line 773
    return-void

    .line 753
    .restart local v0    # "duration":J
    .restart local v4    # "now":J
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v3, v9}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$602(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Z)Z

    .line 754
    const/4 v3, 0x0

    long-to-float v6, v0

    iget-object v7, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # getter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mFadeDuration:J
    invoke-static {v7}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$300(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)J

    move-result-wide v8

    long-to-float v7, v8

    div-float/2addr v6, v7

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 756
    .local v2, "interpolatedTime":F
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    iget-object v6, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # getter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;
    invoke-static {v6}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$1100(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v10, v6

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mFadingAlpha:F
    invoke-static {v3, v6}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$1002(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;F)F

    .line 757
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    const/high16 v6, 0x437f0000    # 255.0f

    iget-object v7, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # getter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mFadingAlpha:F
    invoke-static {v7}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$1000(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    # invokes: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v3, v6}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$900(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;I)V

    .line 758
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    const-wide/16 v6, 0x10

    invoke-virtual {v3, p0, v6, v7}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 760
    .end local v0    # "duration":J
    .end local v2    # "interpolatedTime":F
    .end local v4    # "now":J
    :cond_2
    iget-boolean v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v3, :cond_3

    .line 761
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mResetGesture:Z
    invoke-static {v3, v9}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$1202(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Z)Z

    goto :goto_0

    .line 763
    :cond_3
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # invokes: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->fireOnGesturePerformed()V
    invoke-static {v3}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$400(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)V

    .line 765
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v3, v8}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$602(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Z)Z

    .line 766
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # getter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$700(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 767
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;
    invoke-static {v3, v12}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$802(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Lcom/vivo/services/motion/gesture/gesture/Gesture;)Lcom/vivo/services/motion/gesture/gesture/Gesture;

    .line 768
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # setter for: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->mPreviousWasGesturing:Z
    invoke-static {v3, v8}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$502(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;Z)Z

    .line 769
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;

    # invokes: Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v3, v11}, Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;->access$900(Lcom/vivo/services/motion/gesture/gesture/GestureOverlayView;I)V

    goto :goto_0
.end method
