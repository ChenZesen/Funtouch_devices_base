.class public Landroid/widget/SpringOverScroller;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpringOverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-nez p2, :cond_0

    .line 98
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    :goto_0
    iput-boolean p3, p0, Landroid/widget/SpringOverScroller;->mFlywheel:Z

    .line 106
    new-instance v0, Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-direct {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    .line 107
    new-instance v0, Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-direct {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    .line 109
    invoke-static {p1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->initFromContext(Landroid/content/Context;)V

    .line 110
    return-void

    .line 102
    :cond_0
    iput-object p2, p0, Landroid/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->finish()V

    .line 646
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->finish()V

    .line 647
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/widget/SpringOverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    const/4 v6, 0x0

    .line 434
    :goto_0
    return v6

    .line 380
    :cond_0
    iget v6, p0, Landroid/widget/SpringOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 434
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 383
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 386
    .local v4, "time":J
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$600(Landroid/widget/SpringOverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 388
    .local v2, "elapsedTime":J
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$500(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    .line 389
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 391
    long-to-float v6, v2

    int-to-float v7, v0

    div-float v1, v6, v7

    .line 393
    .local v1, "q":F
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 395
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 397
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->updateScroll(F)V

    .line 399
    :cond_2
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 401
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 406
    .end local v1    # "q":F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SpringOverScroller;->abortAnimation()V

    goto :goto_1

    .line 411
    .end local v0    # "duration":I
    .end local v2    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 413
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 416
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->finish()V

    .line 421
    :cond_4
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 423
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 426
    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->finish()V

    goto :goto_1

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 326
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 327
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 515
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/SpringOverScroller;->fling(IIIIIIIIII)V

    .line 516
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 558
    iget-boolean v0, p0, Landroid/widget/SpringOverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SpringOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$200(Landroid/widget/SpringOverScroller$SplineOverScroller;)F

    move-result v6

    .line 561
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$200(Landroid/widget/SpringOverScroller$SplineOverScroller;)F

    move-result v7

    .line 562
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 564
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 565
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 569
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SpringOverScroller;->mMode:I

    .line 570
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SpringOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 571
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SpringOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 572
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # setter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$002(Landroid/widget/SpringOverScroller$SplineOverScroller;Z)Z

    move-result v1

    # setter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$002(Landroid/widget/SpringOverScroller$SplineOverScroller;Z)Z

    .line 216
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$200(Landroid/widget/SpringOverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$200(Landroid/widget/SpringOverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 247
    .local v0, "squaredNorm":F
    iget-object v1, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$200(Landroid/widget/SpringOverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$200(Landroid/widget/SpringOverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 248
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$100(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$100(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$500(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$500(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$400(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$400(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$300(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$300(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$700(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$700(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 668
    iget-object v2, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$400(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$300(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 669
    .local v0, "dx":I
    iget-object v2, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$400(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$300(Landroid/widget/SpringOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 670
    .local v1, "dy":I
    invoke-virtual {p0}, Landroid/widget/SpringOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 593
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SpringOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 594
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 614
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SpringOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 615
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 347
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 367
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 190
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->setFriction(F)V

    .line 191
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller$SplineOverScroller;->setFriction(F)V

    .line 192
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Landroid/widget/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 505
    iput v2, p0, Landroid/widget/SpringOverScroller;->mMode:I

    .line 508
    iget-object v3, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/widget/SpringOverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 509
    .local v0, "spingbackX":Z
    iget-object v3, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 510
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 457
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SpringOverScroller;->startScroll(IIIII)V

    .line 458
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SpringOverScroller;->mMode:I

    .line 481
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/SpringOverScroller$SplineOverScroller;->startScroll(III)V

    .line 482
    iget-object v0, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/SpringOverScroller$SplineOverScroller;->startScroll(III)V

    .line 483
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 658
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 659
    .local v2, "time":J
    iget-object v4, p0, Landroid/widget/SpringOverScroller;->mScrollerX:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$600(Landroid/widget/SpringOverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/SpringOverScroller;->mScrollerY:Landroid/widget/SpringOverScroller$SplineOverScroller;

    # getter for: Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/SpringOverScroller$SplineOverScroller;->access$600(Landroid/widget/SpringOverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 660
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
