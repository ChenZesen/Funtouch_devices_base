.class Landroid/widget/BbkMoveBoolButton$1;
.super Landroid/os/Handler;
.source "BbkMoveBoolButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BbkMoveBoolButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BbkMoveBoolButton;


# direct methods
.method constructor <init>(Landroid/widget/BbkMoveBoolButton;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 550
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 624
    :goto_0
    :pswitch_0
    return-void

    .line 552
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 553
    .local v2, "currentTime":J
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    iget-wide v10, v9, Landroid/widget/BbkMoveBoolButton;->mStartTime:J

    sub-long v10, v2, v10

    long-to-float v9, v10

    const/high16 v10, 0x43a50000    # 330.0f

    div-float v7, v9, v10

    .line 555
    .local v7, "normalizedTime":F
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 556
    .local v6, "normalizTime":F
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mInterpolator:Landroid/animation/ValueAnimator;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$000(Landroid/widget/BbkMoveBoolButton;)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    .line 557
    .local v5, "interpolatedTime":F
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    iget-object v10, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v10}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v10

    iget-object v11, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mEnd:I
    invoke-static {v11}, Landroid/widget/BbkMoveBoolButton;->access$300(Landroid/widget/BbkMoveBoolButton;)I

    move-result v11

    iget-object v12, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v12}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v11, v11

    add-int/2addr v10, v11

    # setter for: Landroid/widget/BbkMoveBoolButton;->mOffset:I
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$102(Landroid/widget/BbkMoveBoolButton;I)I

    .line 558
    const v9, 0x3e8a3d71    # 0.27f

    cmpl-float v9, v7, v9

    if-lez v9, :cond_0

    .line 559
    const v9, 0x3e8a3d71    # 0.27f

    sub-float v9, v7, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 560
    .local v8, "time":F
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mInterpolator:Landroid/animation/ValueAnimator;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$000(Landroid/widget/BbkMoveBoolButton;)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    .line 561
    .local v4, "interTime":F
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    iget-object v10, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v10}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v10

    iget-object v11, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mEnd:I
    invoke-static {v11}, Landroid/widget/BbkMoveBoolButton;->access$300(Landroid/widget/BbkMoveBoolButton;)I

    move-result v11

    iget-object v12, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v12}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    add-int/2addr v10, v11

    # setter for: Landroid/widget/BbkMoveBoolButton;->mOffset2:I
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$402(Landroid/widget/BbkMoveBoolButton;I)I

    .line 563
    .end local v4    # "interTime":F
    .end local v8    # "time":F
    :cond_0
    const v9, 0x3e8a3d71    # 0.27f

    sub-float v9, v7, v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    const/4 v1, 0x1

    .line 564
    .local v1, "bMore":Z
    :goto_1
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v9}, Landroid/widget/BbkMoveBoolButton;->invalidate()V

    .line 565
    if-eqz v1, :cond_2

    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$500(Landroid/widget/BbkMoveBoolButton;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 566
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$600(Landroid/widget/BbkMoveBoolButton;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 563
    .end local v1    # "bMore":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 568
    .restart local v1    # "bMore":Z
    :cond_2
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$600(Landroid/widget/BbkMoveBoolButton;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    const-wide/16 v12, 0x14

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 573
    .end local v1    # "bMore":Z
    .end local v2    # "currentTime":J
    .end local v5    # "interpolatedTime":F
    .end local v6    # "normalizTime":F
    .end local v7    # "normalizedTime":F
    :pswitch_2
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v9

    iget-object v10, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mEnd:I
    invoke-static {v10}, Landroid/widget/BbkMoveBoolButton;->access$300(Landroid/widget/BbkMoveBoolButton;)I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 574
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v9

    iget-object v10, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mEnd:I
    invoke-static {v10}, Landroid/widget/BbkMoveBoolButton;->access$300(Landroid/widget/BbkMoveBoolButton;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x2

    if-gt v9, v10, :cond_3

    .line 575
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    iget-object v10, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mEnd:I
    invoke-static {v10}, Landroid/widget/BbkMoveBoolButton;->access$300(Landroid/widget/BbkMoveBoolButton;)I

    move-result v10

    # setter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$202(Landroid/widget/BbkMoveBoolButton;I)I

    .line 579
    :goto_2
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    iget-object v10, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v10}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v10

    # setter for: Landroid/widget/BbkMoveBoolButton;->mOffset:I
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$102(Landroid/widget/BbkMoveBoolButton;I)I

    .line 580
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v9}, Landroid/widget/BbkMoveBoolButton;->invalidate()V

    .line 581
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$600(Landroid/widget/BbkMoveBoolButton;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    const-wide/16 v12, 0x14

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 577
    :cond_3
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    iget-object v10, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v10}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v10

    iget-object v11, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mEnd:I
    invoke-static {v11}, Landroid/widget/BbkMoveBoolButton;->access$300(Landroid/widget/BbkMoveBoolButton;)I

    move-result v11

    iget-object v12, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v12}, Landroid/widget/BbkMoveBoolButton;->access$200(Landroid/widget/BbkMoveBoolButton;)I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    # setter for: Landroid/widget/BbkMoveBoolButton;->mStart:I
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$202(Landroid/widget/BbkMoveBoolButton;I)I

    goto :goto_2

    .line 583
    :cond_4
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # invokes: Landroid/widget/BbkMoveBoolButton;->endOfAnimation()V
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$700(Landroid/widget/BbkMoveBoolButton;)V

    .line 584
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v9}, Landroid/widget/BbkMoveBoolButton;->invalidate()V

    goto/16 :goto_0

    .line 591
    :pswitch_3
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$800(Landroid/widget/BbkMoveBoolButton;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->bInAnimate:Z
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$500(Landroid/widget/BbkMoveBoolButton;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 592
    :cond_5
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$600(Landroid/widget/BbkMoveBoolButton;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 595
    :cond_6
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    iget-object v10, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStepAngle:F
    invoke-static {v10}, Landroid/widget/BbkMoveBoolButton;->access$1000(Landroid/widget/BbkMoveBoolButton;)F

    move-result v10

    # += operator for: Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$916(Landroid/widget/BbkMoveBoolButton;F)F

    .line 596
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$900(Landroid/widget/BbkMoveBoolButton;)F

    move-result v9

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v11, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mStepAngle:F
    invoke-static {v11}, Landroid/widget/BbkMoveBoolButton;->access$1000(Landroid/widget/BbkMoveBoolButton;)F

    move-result v11

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_7

    .line 597
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    const/4 v10, 0x0

    # setter for: Landroid/widget/BbkMoveBoolButton;->mLoadingAngle:F
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$902(Landroid/widget/BbkMoveBoolButton;F)F

    .line 599
    :cond_7
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$1100(Landroid/widget/BbkMoveBoolButton;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 600
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$1200(Landroid/widget/BbkMoveBoolButton;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    add-int/lit8 v9, v9, -0xf

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 601
    .local v0, "alpha":I
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$1200(Landroid/widget/BbkMoveBoolButton;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 602
    if-nez v0, :cond_8

    .line 603
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    const/4 v10, 0x0

    # setter for: Landroid/widget/BbkMoveBoolButton;->mIsLoading:Z
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$802(Landroid/widget/BbkMoveBoolButton;Z)Z

    .line 604
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    const/4 v10, 0x0

    # setter for: Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$1302(Landroid/widget/BbkMoveBoolButton;Z)Z

    .line 605
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    const/4 v10, 0x0

    # setter for: Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$1102(Landroid/widget/BbkMoveBoolButton;Z)Z

    .line 615
    .end local v0    # "alpha":I
    :cond_8
    :goto_3
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v9}, Landroid/widget/BbkMoveBoolButton;->postInvalidate()V

    .line 616
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mhandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$600(Landroid/widget/BbkMoveBoolButton;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    const-wide/16 v12, 0x10

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 607
    :cond_9
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$1300(Landroid/widget/BbkMoveBoolButton;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 608
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$1200(Landroid/widget/BbkMoveBoolButton;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    add-int/lit8 v9, v9, 0x14

    const/16 v10, 0xff

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 609
    .restart local v0    # "alpha":I
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # getter for: Landroid/widget/BbkMoveBoolButton;->mPaintForLoading:Landroid/graphics/Paint;
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$1200(Landroid/widget/BbkMoveBoolButton;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 610
    const/16 v9, 0xff

    if-ne v0, v9, :cond_8

    .line 611
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    const/4 v10, 0x0

    # setter for: Landroid/widget/BbkMoveBoolButton;->mIsStartLoading:Z
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$1302(Landroid/widget/BbkMoveBoolButton;Z)Z

    .line 612
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    const/4 v10, 0x0

    # setter for: Landroid/widget/BbkMoveBoolButton;->mIsStopLoading:Z
    invoke-static {v9, v10}, Landroid/widget/BbkMoveBoolButton;->access$1102(Landroid/widget/BbkMoveBoolButton;Z)Z

    goto :goto_3

    .line 621
    .end local v0    # "alpha":I
    :pswitch_4
    iget-object v9, p0, Landroid/widget/BbkMoveBoolButton$1;->this$0:Landroid/widget/BbkMoveBoolButton;

    # invokes: Landroid/widget/BbkMoveBoolButton;->endOfAnimation()V
    invoke-static {v9}, Landroid/widget/BbkMoveBoolButton;->access$700(Landroid/widget/BbkMoveBoolButton;)V

    goto/16 :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
