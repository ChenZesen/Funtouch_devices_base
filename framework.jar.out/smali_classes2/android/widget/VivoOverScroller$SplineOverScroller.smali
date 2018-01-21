.class Landroid/widget/VivoOverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "VivoOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VivoOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BOUNCE:I = 0x3

.field private static final BOUNCE_DURANTION:I = 0x190

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static PHYSICAL_COEF:F = 0.0f

.field private static final SCROLL:I = 0x4

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mLastTime:J

.field private mLastVelocity:D

.field private mOver:I

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mTension:F

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 735
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    sput v11, Landroid/widget/VivoOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 745
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 746
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 761
    const/4 v7, 0x0

    .line 762
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 763
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 764
    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    .line 766
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 769
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 770
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 771
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    const v12, 0x3e333333    # 0.175f

    mul-float/2addr v11, v12

    const v12, 0x3eb33334    # 0.35000002f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 772
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_0

    .line 779
    sget-object v11, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 782
    const/high16 v9, 0x3f800000    # 1.0f

    .line 785
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 786
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 787
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 788
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_2

    .line 795
    sget-object v11, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e333333    # 0.175f

    mul-float/2addr v12, v13

    const v13, 0x3eb33334    # 0.35000002f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 763
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 774
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    .line 775
    move v6, v5

    goto/16 :goto_1

    .line 777
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 790
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    .line 791
    move v9, v8

    goto :goto_2

    .line 793
    :cond_3
    move v10, v8

    goto :goto_2

    .line 797
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    aput v15, v11, v12

    .line 798
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFlingFriction:F

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    .line 813
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VivoOverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;

    .prologue
    .line 684
    iget-boolean v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/VivoOverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 684
    iput-boolean p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/VivoOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;

    .prologue
    .line 684
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/VivoOverScroller$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;

    .prologue
    .line 684
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/VivoOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;

    .prologue
    .line 684
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/VivoOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;

    .prologue
    .line 684
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/VivoOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;

    .prologue
    .line 684
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/VivoOverScroller$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;

    .prologue
    .line 684
    iget-wide v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$602(Landroid/widget/VivoOverScroller$SplineOverScroller;J)J
    .locals 1
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;
    .param p1, "x1"    # J

    .prologue
    .line 684
    iput-wide p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/widget/VivoOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/VivoOverScroller$SplineOverScroller;

    .prologue
    .line 684
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 825
    sub-int v2, p2, p1

    .line 826
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 827
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 828
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 829
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 830
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 831
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 832
    .local v8, "x_sup":F
    sget-object v9, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 833
    .local v3, "t_inf":F
    sget-object v9, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 834
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 836
    .local v5, "timeCoef":F
    iget v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    .line 838
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_0
    return-void
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .prologue
    .line 948
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFlingFriction:F

    sget v2, Landroid/widget/VivoOverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 953
    invoke-direct {p0, p1}, Landroid/widget/VivoOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 954
    .local v2, "l":D
    sget v4, Landroid/widget/VivoOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 955
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFlingFriction:F

    sget v5, Landroid/widget/VivoOverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/VivoOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 961
    invoke-direct {p0, p1}, Landroid/widget/VivoOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 962
    .local v2, "l":D
    sget v4, Landroid/widget/VivoOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 963
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method static initFromContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .line 802
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    sput v1, Landroid/widget/VivoOverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    .line 805
    return-void
.end method

.method private onEdgeReached()V
    .locals 15

    .prologue
    const/high16 v14, 0x42c80000    # 100.0f

    .line 1029
    iget-wide v10, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    iget v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v12, v9

    add-long v6, v10, v12

    .line 1031
    .local v6, "time":J
    iget v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    iget v10, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 1032
    .local v3, "t":F
    mul-float v9, v14, v3

    float-to-int v2, v9

    .line 1033
    .local v2, "index":I
    const/4 v8, 0x0

    .line 1034
    .local v8, "velocityCoef":F
    const/16 v9, 0x64

    if-ge v2, v9, :cond_0

    .line 1035
    int-to-float v9, v2

    div-float v4, v9, v14

    .line 1036
    .local v4, "t_inf":F
    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    div-float v5, v9, v14

    .line 1037
    .local v5, "t_sup":F
    sget-object v9, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v0, v9, v2

    .line 1038
    .local v0, "d_inf":F
    sget-object v9, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v10, v2, 0x1

    aget v1, v9, v10

    .line 1039
    .local v1, "d_sup":F
    sub-float v9, v1, v0

    sub-float v10, v5, v4

    div-float v8, v9, v10

    .line 1043
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v4    # "t_inf":F
    .end local v5    # "t_sup":F
    :cond_0
    iget v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    iget v10, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    iput v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1045
    iget v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-double v10, v9

    iget-wide v12, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mLastVelocity:D

    sub-double/2addr v10, v12

    iget-wide v12, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mLastTime:J

    sub-long v12, v6, v12

    long-to-double v12, v12

    div-double/2addr v10, v12

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    double-to-float v9, v10

    iput v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDeceleration:F

    .line 1049
    iget v9, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    iget v10, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mOver:I

    iget v11, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v11, v11

    const/16 v12, 0x190

    invoke-virtual {p0, v9, v10, v11, v12}, Landroid/widget/VivoOverScroller$SplineOverScroller;->bounce(IIII)V

    .line 1050
    iput-wide v6, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    .line 1052
    invoke-virtual {p0}, Landroid/widget/VivoOverScroller$SplineOverScroller;->update()Z

    .line 1053
    return-void
.end method

.method private startSpringback(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    .line 899
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    .line 900
    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    .line 901
    iput p2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 902
    sub-int v0, p2, p1

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mOver:I

    .line 903
    const/16 v0, 0x190

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    .line 904
    return-void
.end method


# virtual methods
.method bounce(IIII)V
    .locals 6
    .param p1, "edge"    # I
    .param p2, "range"    # I
    .param p3, "velocity"    # I
    .param p4, "duration"    # I

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 979
    const v3, 0x3dc4bb1b    # 0.09606f

    int-to-float v4, p2

    mul-float/2addr v3, v4

    const v4, 0x3727c5ad    # 1.0000001E-5f

    int-to-float v5, p4

    mul-float/2addr v4, v5

    div-float v0, v3, v4

    .line 980
    .local v0, "maxVelocity":F
    if-lez p3, :cond_1

    move v1, v2

    .line 982
    .local v1, "tension":F
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    .line 983
    int-to-float v3, p3

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    .line 985
    :cond_0
    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    .line 986
    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 987
    iput p3, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mVelocity:I

    .line 988
    iput p2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mOver:I

    .line 989
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    .line 990
    iput p4, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    .line 991
    iput v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mTension:F

    .line 993
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    .line 996
    return-void

    .line 980
    .end local v1    # "tension":F
    :cond_1
    const/high16 v1, -0x3ee00000    # -10.0f

    goto :goto_0
.end method

.method continueWhenFinished()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1056
    iget v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1073
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/VivoOverScroller$SplineOverScroller;->update()Z

    .line 1074
    const/4 v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    .line 1060
    :pswitch_2
    iget v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 1061
    invoke-direct {p0}, Landroid/widget/VivoOverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    .line 871
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 872
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 873
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    .line 874
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    .line 875
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    .line 863
    return-void
.end method

.method fling(IIIII)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v4, 0x0

    .line 907
    iput p5, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mOver:I

    .line 908
    iput-boolean v4, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    .line 909
    iput p2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 910
    iput v4, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    .line 911
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    .line 912
    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 914
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    .line 916
    :cond_0
    if-le p1, p4, :cond_1

    .end local p4    # "max":I
    :goto_0
    invoke-direct {p0, p1, p4, p2}, Landroid/widget/VivoOverScroller$SplineOverScroller;->startSpringback(III)V

    .line 945
    :goto_1
    return-void

    .restart local p4    # "max":I
    :cond_1
    move p4, p3

    .line 916
    goto :goto_0

    .line 920
    :cond_2
    iput v4, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    .line 921
    const-wide/16 v0, 0x0

    .line 923
    .local v0, "totalDistance":D
    if-eqz p2, :cond_3

    .line 924
    invoke-direct {p0, p2}, Landroid/widget/VivoOverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    .line 925
    invoke-direct {p0, p2}, Landroid/widget/VivoOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDeceleration:F

    .line 926
    invoke-direct {p0, p2}, Landroid/widget/VivoOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 929
    :cond_3
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDistance:I

    .line 930
    iget v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 933
    iget v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_4

    .line 934
    iget v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/VivoOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 935
    iput p3, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 938
    :cond_4
    iget v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_5

    .line 939
    iget v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/VivoOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 940
    iput p4, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 943
    :cond_5
    int-to-double v2, p2

    iput-wide v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mLastVelocity:D

    .line 944
    iget-wide v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    iput-wide v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mLastTime:J

    goto :goto_1
.end method

.method notifyEdgeReached(III)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 1006
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_2

    .line 1007
    if-ne p1, p2, :cond_1

    .line 1008
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mVelocity:I

    const/16 v1, 0x190

    invoke-virtual {p0, p2, p3, v0, v1}, Landroid/widget/VivoOverScroller$SplineOverScroller;->bounce(IIII)V

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrentPosition:I

    sub-int v3, p1, p2

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/VivoOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 1013
    iput p3, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mOver:I

    .line 1014
    iput p2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 1015
    invoke-direct {p0}, Landroid/widget/VivoOverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1019
    :cond_2
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrentPosition:I

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    goto :goto_0
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 866
    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    .line 868
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 808
    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFlingFriction:F

    .line 809
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 878
    iput-boolean v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    .line 880
    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    .line 881
    iput v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mVelocity:I

    .line 883
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    .line 884
    iput v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    .line 886
    if-ge p1, p2, :cond_1

    .line 887
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/VivoOverScroller$SplineOverScroller;->startSpringback(III)V

    .line 892
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 888
    :cond_1
    if-le p1, p3, :cond_0

    .line 889
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/VivoOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 892
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 841
    iput-boolean v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinished:Z

    .line 843
    iput p1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    .line 844
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    .line 846
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    .line 847
    iput p3, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    .line 850
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDeceleration:F

    .line 851
    iput v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mVelocity:I

    .line 853
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    .line 854
    return-void
.end method

.method update()Z
    .locals 20

    .prologue
    .line 1087
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    .line 1088
    .local v14, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v2, v14, v16

    .line 1090
    .local v2, "currentTime":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v16, v2, v16

    if-lez v16, :cond_0

    .line 1091
    const/16 v16, 0x0

    .line 1132
    :goto_0
    return v16

    .line 1094
    :cond_0
    const-wide/16 v6, 0x0

    .line 1095
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mState:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1130
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    move/from16 v16, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1132
    const/16 v16, 0x1

    goto :goto_0

    .line 1097
    :pswitch_1
    long-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v10, v16, v17

    .line 1098
    .local v10, "t":F
    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v16, v16, v10

    move/from16 v0, v16

    float-to-int v9, v0

    .line 1099
    .local v9, "index":I
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1100
    .local v8, "distanceCoef":F
    const/4 v13, 0x0

    .line 1101
    .local v13, "velocityCoef":F
    const/16 v16, 0x64

    move/from16 v0, v16

    if-ge v9, v0, :cond_1

    .line 1102
    int-to-float v0, v9

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v11, v16, v17

    .line 1103
    .local v11, "t_inf":F
    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v12, v16, v17

    .line 1104
    .local v12, "t_sup":F
    sget-object v16, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v4, v16, v9

    .line 1105
    .local v4, "d_inf":F
    sget-object v16, Landroid/widget/VivoOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v17, v9, 0x1

    aget v5, v16, v17

    .line 1106
    .local v5, "d_sup":F
    sub-float v16, v5, v4

    sub-float v17, v12, v11

    div-float v13, v16, v17

    .line 1107
    sub-float v16, v10, v11

    mul-float v16, v16, v13

    add-float v8, v4, v16

    .line 1110
    .end local v4    # "d_inf":F
    .end local v5    # "d_sup":F
    .end local v11    # "t_inf":F
    .end local v12    # "t_sup":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v8

    move/from16 v0, v16

    float-to-double v6, v0

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    const/high16 v17, 0x447a0000    # 1000.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1113
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrVelocity:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mLastVelocity:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mLastTime:J

    move-wide/from16 v18, v0

    sub-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDeceleration:F

    goto/16 :goto_1

    .line 1118
    .end local v8    # "distanceCoef":F
    .end local v9    # "index":I
    .end local v10    # "t":F
    .end local v13    # "velocityCoef":F
    :pswitch_2
    long-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v10, v16, v17

    .line 1119
    .restart local v10    # "t":F
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v10

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v10

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mOver:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v6, v0

    .line 1120
    goto/16 :goto_1

    .line 1124
    .end local v10    # "t":F
    :pswitch_3
    long-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v10, v16, v17

    .line 1126
    .restart local v10    # "t":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mOver:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v10

    mul-float v16, v16, v10

    mul-float v16, v16, v10

    mul-float v16, v16, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mTension:F

    move/from16 v17, v0

    mul-float v17, v17, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mTension:F

    move/from16 v18, v0

    add-float v17, v17, v18

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v6, v0

    goto/16 :goto_1

    .line 1095
    nop

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
    .line 816
    iget v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/VivoOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 817
    return-void
.end method
