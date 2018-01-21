.class Lcom/android/server/wm/VivoGlobalTransition;
.super Ljava/lang/Object;
.source "VivoGlobalTransition.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0x15e

.field private static final DURATION_DEFAULT:I = 0x3e8

.field static final MODE_CONTINOUS:I = 0x1

.field static final MODE_DIRTY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VivoGlobalTransition"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mBezierPath:Landroid/graphics/Path;

.field private mDuration:I

.field private mHeight:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mMode:I

.field private mReverse:Z

.field private mReverseInterpolator:Landroid/view/animation/Interpolator;

.field final mSequence:I

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mStartTime:J

.field final mTransformation:Landroid/view/animation/Transformation;

.field private mWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "sequence"    # I

    .prologue
    .line 63
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x15e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/VivoGlobalTransition;-><init>(Lcom/android/server/wm/WindowManagerService;IIZI)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;IIZI)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "sequence"    # I
    .param p3, "mode"    # I
    .param p4, "reverse"    # Z
    .param p5, "duration"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mTransformation:Landroid/view/animation/Transformation;

    .line 48
    iput v1, p0, Lcom/android/server/wm/VivoGlobalTransition;->mMode:I

    .line 50
    iput-boolean v4, p0, Lcom/android/server/wm/VivoGlobalTransition;->mReverse:Z

    .line 56
    new-array v0, v1, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x3e3645a2    # 0.178f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/wm/VivoBezierUtil;->buildPath([Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mBezierPath:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    iget-object v1, p0, Lcom/android/server/wm/VivoGlobalTransition;->mBezierPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mReverseInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/VivoGlobalTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 68
    iput p2, p0, Lcom/android/server/wm/VivoGlobalTransition;->mSequence:I

    .line 69
    iput p3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mMode:I

    .line 70
    iput-boolean p4, p0, Lcom/android/server/wm/VivoGlobalTransition;->mReverse:Z

    .line 71
    iput p5, p0, Lcom/android/server/wm/VivoGlobalTransition;->mDuration:I

    .line 72
    return-void
.end method

.method private createAnimation(II)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    .line 117
    iget v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mMode:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    .line 118
    iget-boolean v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mReverse:Z

    if-eqz v3, :cond_0

    move v1, v5

    .line 119
    .local v1, "start":F
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mReverse:Z

    if-eqz v3, :cond_1

    move v2, v4

    .line 120
    .local v2, "end":F
    :goto_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-int/lit8 v3, p1, 0x2

    int-to-float v5, v3

    div-int/lit8 v3, p2, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 121
    .local v0, "a":Landroid/view/animation/Animation;
    iget v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 122
    iget-boolean v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mReverse:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mReverseInterpolator:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 127
    .end local v1    # "start":F
    .end local v2    # "end":F
    :goto_3
    return-object v0

    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    move v1, v4

    .line 118
    goto :goto_0

    .restart local v1    # "start":F
    :cond_1
    move v2, v5

    .line 119
    goto :goto_1

    .line 122
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v2    # "end":F
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_2

    .line 125
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "start":F
    .end local v2    # "end":F
    :cond_3
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-int/lit8 v3, p1, 0x2

    int-to-float v8, v3

    div-int/lit8 v3, p2, 0x2

    int-to-float v9, v3

    move-object v3, v0

    move v6, v4

    move v7, v5

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 126
    .restart local v0    # "a":Landroid/view/animation/Animation;
    iget v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_3
.end method


# virtual methods
.method restartAnimation(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 111
    const-string v0, "VivoGlobalTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartAnimation, time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wm/VivoGlobalTransition;->mStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 113
    iput-wide p1, p0, Lcom/android/server/wm/VivoGlobalTransition;->mStartTime:J

    .line 114
    return-void
.end method

.method start(IIJ)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "currentTime"    # J

    .prologue
    .line 75
    const-string v0, "VivoGlobalTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, mSequence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/VivoGlobalTransition;->mSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/VivoGlobalTransition;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VivoGlobalTransition;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 80
    iput-wide p3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mStartTime:J

    .line 81
    return-void
.end method

.method step(F)V
    .locals 6
    .param p1, "normalizedTime"    # F

    .prologue
    .line 96
    iget-wide v4, p0, Lcom/android/server/wm/VivoGlobalTransition;->mStartTime:J

    long-to-float v3, v4

    iget-object v4, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-long v0, v3

    .line 97
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/VivoGlobalTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    .line 99
    .local v2, "more":Z
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_0

    .line 100
    const-string v3, "VivoGlobalTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "step dirty, normalizedTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", more = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method step(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 85
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 87
    .local v0, "more":Z
    iget-wide v2, p0, Lcom/android/server/wm/VivoGlobalTransition;->mStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mDuration:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 88
    .local v1, "normalizedTime":F
    const-string v2, "VivoGlobalTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "step continous, normalizedTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", more = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "more":Z
    .end local v1    # "normalizedTime":F
    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/VivoGlobalTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_0
.end method

.method stop()V
    .locals 3

    .prologue
    .line 105
    const-string v0, "VivoGlobalTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, mSequence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/VivoGlobalTransition;->mSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/VivoGlobalTransition;->mAnimation:Landroid/view/animation/Animation;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "VivoGlobalTransition{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, " mSequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    iget v1, p0, Lcom/android/server/wm/VivoGlobalTransition;->mSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 136
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
