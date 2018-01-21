.class Landroid/widget/SpringOverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BOUNCE:I = 0x3

.field private static final BOUNCE_DURANTION:I = 0x190

.field private static final CUBIC:I = 0x1

.field private static final SCROLL:I = 0x4

.field private static final SPLINE:I

.field private static mBounceConfig:Lvivo/util/SpringConfig;

.field private static mCubicConfig:Lvivo/util/SpringConfig;

.field private static mFlingConfig:Lvivo/util/SpringConfig;


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mSpring:Lvivo/util/Spring;

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 724
    new-instance v0, Lvivo/util/SpringConfig;

    const-wide/high16 v2, 0x4036000000000000L    # 22.0

    invoke-direct {v0, v4, v5, v2, v3}, Lvivo/util/SpringConfig;-><init>(DD)V

    sput-object v0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mBounceConfig:Lvivo/util/SpringConfig;

    .line 725
    new-instance v0, Lvivo/util/SpringConfig;

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    invoke-direct {v0, v4, v5, v2, v3}, Lvivo/util/SpringConfig;-><init>(DD)V

    sput-object v0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCubicConfig:Lvivo/util/SpringConfig;

    .line 726
    new-instance v0, Lvivo/util/SpringConfig;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    invoke-direct {v0, v2, v3, v4, v5}, Lvivo/util/SpringConfig;-><init>(DD)V

    sput-object v0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFlingConfig:Lvivo/util/SpringConfig;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFlingFriction:F

    .line 708
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    .line 740
    new-instance v0, Lvivo/util/Spring;

    invoke-direct {v0}, Lvivo/util/Spring;-><init>()V

    iput-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    .line 741
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lvivo/util/Spring;->setRestDisplacementThreshold(D)Lvivo/util/Spring;

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    .line 743
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SpringOverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;

    .prologue
    .line 673
    iget-boolean v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/SpringOverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 673
    iput-boolean p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/SpringOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;

    .prologue
    .line 673
    iget v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SpringOverScroller$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;

    .prologue
    .line 673
    iget v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SpringOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;

    .prologue
    .line 673
    iget v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SpringOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;

    .prologue
    .line 673
    iget v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/SpringOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;

    .prologue
    .line 673
    iget v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/SpringOverScroller$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;

    .prologue
    .line 673
    iget-wide v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/SpringOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpringOverScroller$SplineOverScroller;

    .prologue
    .line 673
    iget v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method static initFromContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .line 731
    .local v0, "ppi":F
    return-void
.end method

.method private startSpringback(III)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    .line 814
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    .line 815
    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    .line 816
    iput p2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    .line 817
    sub-int v0, p2, p1

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mOver:I

    .line 818
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J

    .line 819
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    sget-object v1, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCubicConfig:Lvivo/util/SpringConfig;

    invoke-virtual {v0, v1}, Lvivo/util/Spring;->setSpringConfig(Lvivo/util/SpringConfig;)Lvivo/util/Spring;

    .line 820
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lvivo/util/Spring;->setCurrentValue(D)Lvivo/util/Spring;

    .line 821
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lvivo/util/Spring;->setEndValue(D)Lvivo/util/Spring;

    .line 822
    return-void
.end method


# virtual methods
.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    .line 784
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 785
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 786
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mDuration:I

    .line 787
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    .line 788
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    .line 773
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v0}, Lvivo/util/Spring;->setAtRest()Lvivo/util/Spring;

    .line 774
    return-void
.end method

.method fling(IIIII)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v1, 0x0

    .line 832
    iput p5, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mOver:I

    .line 833
    iput-boolean v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    .line 834
    iput p2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 835
    iput v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mDuration:I

    .line 837
    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 839
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    .line 842
    :cond_0
    if-le p1, p4, :cond_1

    .end local p4    # "max":I
    :goto_0
    invoke-direct {p0, p1, p4, p2}, Landroid/widget/SpringOverScroller$SplineOverScroller;->startSpringback(III)V

    .line 853
    :goto_1
    return-void

    .restart local p4    # "max":I
    :cond_1
    move p4, p3

    .line 842
    goto :goto_0

    .line 846
    :cond_2
    iput v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J

    .line 848
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lvivo/util/Spring;->setCurrentValue(D)Lvivo/util/Spring;

    .line 849
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lvivo/util/Spring;->setVelocity(D)Lvivo/util/Spring;

    .line 850
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    sget-object v1, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFlingConfig:Lvivo/util/SpringConfig;

    invoke-virtual {v0, v1}, Lvivo/util/Spring;->setSpringConfig(Lvivo/util/SpringConfig;)Lvivo/util/Spring;

    .line 851
    iget-object v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {v0, v2, v3}, Lvivo/util/Spring;->setRestSpeedThreshold(D)Lvivo/util/Spring;

    .line 852
    iget-object v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    if-lt p1, p4, :cond_3

    int-to-double v0, p3

    :goto_2
    invoke-virtual {v2, v0, v1}, Lvivo/util/Spring;->setEndValue(D)Lvivo/util/Spring;

    goto :goto_1

    :cond_3
    int-to-double v0, p4

    goto :goto_2
.end method

.method notifyEdgeReached(III)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 864
    iget v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    if-nez v1, :cond_1

    .line 866
    iget-object v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v1}, Lvivo/util/Spring;->getVelocity()D

    move-result-wide v2

    double-to-float v0, v2

    .line 867
    .local v0, "v":F
    iget-object v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    sget-object v2, Landroid/widget/SpringOverScroller$SplineOverScroller;->mBounceConfig:Lvivo/util/SpringConfig;

    invoke-virtual {v1, v2}, Lvivo/util/Spring;->setSpringConfig(Lvivo/util/SpringConfig;)Lvivo/util/Spring;

    .line 868
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    .line 869
    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    .line 870
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J

    .line 871
    iget-object v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    int-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Lvivo/util/Spring;->setCurrentValue(D)Lvivo/util/Spring;

    .line 872
    iget-object v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lvivo/util/Spring;->setVelocity(D)Lvivo/util/Spring;

    .line 873
    iget-object v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    int-to-double v2, p2

    invoke-virtual {v1, v2, v3}, Lvivo/util/Spring;->setEndValue(D)Lvivo/util/Spring;

    .line 874
    iput p2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    .line 882
    .end local v0    # "v":F
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    iget v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 879
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    iput v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    .line 880
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    goto :goto_0
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 778
    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    .line 780
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 735
    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFlingFriction:F

    .line 736
    return-void
.end method

.method springback(III)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x0

    .line 792
    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    .line 794
    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mVelocity:I

    .line 795
    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mDuration:I

    .line 797
    if-ge p1, p2, :cond_2

    .line 799
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->startSpringback(III)V

    .line 806
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 801
    :cond_2
    if-le p1, p3, :cond_0

    .line 803
    invoke-direct {p0, p1, p3, v0}, Landroid/widget/SpringOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 752
    iput-boolean v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinished:Z

    .line 754
    iput p1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    .line 755
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    .line 757
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J

    .line 758
    iput p3, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mDuration:I

    .line 760
    iput v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mVelocity:I

    .line 762
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    .line 763
    return-void
.end method

.method update()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 891
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 892
    .local v0, "current":J
    iget-object v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    iget-wide v6, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lvivo/util/Spring;->advance(D)V

    .line 894
    iput-wide v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStartTime:J

    .line 895
    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 928
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 899
    :pswitch_1
    iget-object v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v4}, Lvivo/util/Spring;->getCurrentValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    iput v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    .line 900
    iget-object v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v4}, Lvivo/util/Spring;->isAtRest()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 904
    :pswitch_2
    iget-object v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v4}, Lvivo/util/Spring;->getCurrentValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 905
    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    if-gez v4, :cond_1

    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    if-ge v4, v5, :cond_3

    :cond_1
    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    if-lez v4, :cond_2

    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    if-le v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v4}, Lvivo/util/Spring;->isAtRest()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 907
    :cond_3
    iput v3, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 908
    iget-object v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v2}, Lvivo/util/Spring;->isAtRest()Z

    move-result v2

    if-nez v2, :cond_4

    .line 909
    iget-object v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v2}, Lvivo/util/Spring;->setAtRest()Lvivo/util/Spring;

    :cond_4
    move v2, v3

    .line 910
    goto :goto_0

    .line 917
    :pswitch_3
    iget-object v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v4}, Lvivo/util/Spring;->getCurrentValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 918
    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    if-lez v4, :cond_5

    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    if-le v4, v5, :cond_7

    :cond_5
    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    if-gez v4, :cond_6

    iget v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    if-ge v4, v5, :cond_7

    :cond_6
    iget-object v4, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v4}, Lvivo/util/Spring;->isAtRest()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 920
    :cond_7
    iput v3, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 921
    iget-object v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v2}, Lvivo/util/Spring;->isAtRest()Z

    move-result v2

    if-nez v2, :cond_8

    .line 922
    iget-object v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mSpring:Lvivo/util/Spring;

    invoke-virtual {v2}, Lvivo/util/Spring;->setAtRest()Lvivo/util/Spring;

    :cond_8
    move v2, v3

    .line 923
    goto/16 :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    .line 747
    iget v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SpringOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 748
    return-void
.end method
