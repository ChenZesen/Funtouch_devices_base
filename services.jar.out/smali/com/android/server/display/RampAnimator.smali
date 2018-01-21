.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final GAP_MS_FAST:I

.field private final GAP_MS_SLOW:I

.field private gap:I

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLCMThresholdHigh:I

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/display/RampAnimator;->GAP_MS_SLOW:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/RampAnimator;->GAP_MS_FAST:I

    .line 39
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mLCMThresholdHigh:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 138
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 52
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLcmThresholdHigh()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mLCMThresholdHigh:I

    .line 53
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->postAnimationCallbackDelayed(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/display/RampAnimator;->gap:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/RampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/server/display/RampAnimator;->gap:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mLCMThresholdHigh:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method private cancelAnimationCallback()V
    .locals 4

    .prologue
    .line 135
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method private postAnimationCallbackDelayed(I)V
    .locals 6
    .param p1, "period"    # I

    .prologue
    .line 131
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 132
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 6
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v3, :cond_0

    if-gtz p2, :cond_6

    .line 69
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v3, :cond_5

    .line 70
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 71
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 72
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 73
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 74
    iget-object v3, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v4, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 75
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v3, :cond_2

    .line 76
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 77
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v2}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_3
    move v0, v1

    .line 112
    :cond_4
    :goto_0
    return v0

    :cond_5
    move v0, v2

    .line 84
    goto :goto_0

    .line 94
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v3, :cond_8

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v3, :cond_7

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v3, v4, :cond_8

    :cond_7
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v3, v4, :cond_9

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v3, p1, :cond_9

    .line 98
    :cond_8
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 101
    :cond_9
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v3, p1, :cond_a

    move v0, v1

    .line 102
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 105
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v3, :cond_4

    .line 106
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 107
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 109
    invoke-direct {p0, v2}, Lcom/android/server/display/RampAnimator;->postAnimationCallbackDelayed(I)V

    goto :goto_0

    .end local v0    # "changed":Z
    :cond_a
    move v0, v2

    .line 101
    goto :goto_1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .prologue
    .line 126
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 127
    return-void
.end method
