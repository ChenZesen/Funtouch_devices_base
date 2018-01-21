.class public final Lcom/vivo/services/motion/gesture/GestureDetectCustom;
.super Ljava/lang/Object;
.source "GestureDetectCustom.java"


# static fields
.field public static final CODE_LENGTH:I = 0x10

.field public static final GESTURE_LENGTH:F = 50.0f

.field private static final LETTER:Ljava/lang/String; = "LetterGestureRecognition"

.field public static final LETTER_NUM:I = 0x3

.field public static final MAX_DATA_NUM:I = 0x1388

.field public static final RATE:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "GestureDetectCustom"

.field private static mContext:Landroid/content/Context; = null

.field private static mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils; = null

.field public static final mINTERVAL_THS1:F = 20.0f

.field public static final sINTERVAL_THS1:F = 20.0f

.field private static singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetectCustom; = null

.field public static final vINTERVAL_THS1:F = 15.0f


# instance fields
.field private DataSize:I

.field private centerDataX:F

.field private centerDataY:F

.field private codeData:[I

.field public dataX:[F

.field public dataY:[F

.field public maxDataX:F

.field public maxDataY:F

.field public minDataX:F

.field public minDataY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1388

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->DataSize:I

    .line 21
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->codeData:[I

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    .line 50
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->reset()V

    .line 51
    new-instance v0, Lcom/vivo/services/motion/gesture/GestureUtils;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/GestureUtils;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/services/motion/gesture/GestureDetectCustom;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 40
    sput-object p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mContext:Landroid/content/Context;

    .line 42
    :cond_0
    sget-object v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    .line 45
    :cond_1
    sget-object v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    return-object v0
.end method


# virtual methods
.method public centerData()V
    .locals 5

    .prologue
    .line 830
    const/4 v1, 0x0

    .line 831
    .local v1, "num":I
    const/4 v2, 0x0

    .line 832
    .local v2, "sumX":F
    const/4 v3, 0x0

    .line 833
    .local v3, "sumY":F
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v1

    .line 834
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 836
    iget-object v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v4, v4, v0

    add-float/2addr v2, v4

    .line 837
    iget-object v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v4, v4, v0

    add-float/2addr v3, v4

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    :cond_0
    int-to-float v4, v1

    div-float v4, v2, v4

    iput v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->centerDataX:F

    .line 840
    int-to-float v4, v1

    div-float v4, v3, v4

    iput v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->centerDataY:F

    .line 841
    return-void
.end method

.method public codeFromDeltaPos(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 876
    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    add-double/2addr v2, v6

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 877
    .local v0, "num":I
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 879
    const/4 v0, 0x1

    .line 881
    :cond_0
    return v0
.end method

.method public dataFlip()V
    .locals 7

    .prologue
    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, "num":I
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v1

    .line 905
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 907
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    iget-object v3, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v3, v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->centerDataX:F

    iget-object v6, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v6, v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :cond_0
    return-void
.end method

.method public dataRotate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 913
    const/4 v3, 0x0

    .line 914
    .local v3, "num":I
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v3

    .line 915
    mul-int/lit8 v6, v3, 0x2

    new-array v4, v6, [F

    .line 916
    .local v4, "points":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 918
    mul-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v7, v7, v2

    aput v7, v4, v6

    .line 919
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v7, v7, v2

    aput v7, v4, v6

    .line 916
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    :cond_0
    const-string v6, "GestureDetectCustom"

    const-string v7, "++++++++step1++++++++"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    sget-object v6, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    iget v6, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->centerDataX:F

    neg-float v6, v6

    iget v7, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->centerDataY:F

    neg-float v7, v7

    invoke-static {v4, v6, v7}, Lcom/vivo/services/motion/gesture/GestureUtils;->translate([FFF)[F

    .line 923
    sget-object v6, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    invoke-static {v4}, Lcom/vivo/services/motion/gesture/GestureUtils;->computeCoVariance([F)[[F

    move-result-object v1

    .line 924
    .local v1, "array":[[F
    const-string v6, "GestureDetectCustom"

    const-string v7, "++++++++step2++++++++"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-object v6, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    invoke-static {v1}, Lcom/vivo/services/motion/gesture/GestureUtils;->computeOrientation([[F)[F

    move-result-object v5

    .line 926
    .local v5, "targetVector":[F
    const-string v6, "GestureDetectCustom"

    const-string v7, "++++++++step3++++++++"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    aget v6, v5, v9

    cmpl-float v6, v6, v8

    if-nez v6, :cond_1

    aget v6, v5, v10

    cmpl-float v6, v6, v8

    if-nez v6, :cond_1

    .line 930
    const v0, -0x4036f025

    .line 937
    .local v0, "angle":F
    :goto_1
    const-string v6, "GestureDetectCustom"

    const-string v7, "++++++++step4++++++++"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    .line 940
    iget-object v6, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    mul-int/lit8 v7, v2, 0x2

    aget v7, v4, v7

    iget v8, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->centerDataX:F

    add-float/2addr v7, v8

    aput v7, v6, v2

    .line 941
    iget-object v6, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, v4, v7

    iget v8, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->centerDataY:F

    add-float/2addr v7, v8

    aput v7, v6, v2

    .line 938
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 934
    .end local v0    # "angle":F
    :cond_1
    aget v6, v5, v10

    float-to-double v6, v6

    aget v8, v5, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 935
    .restart local v0    # "angle":F
    sget-object v6, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    neg-float v6, v0

    invoke-static {v4, v6}, Lcom/vivo/services/motion/gesture/GestureUtils;->rotate([FF)[F

    goto :goto_1

    .line 943
    :cond_2
    const-string v6, "GestureDetectCustom"

    const-string v7, "++++++++step5++++++++"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return-void
.end method

.method public dataSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 955
    const/4 v1, 0x0

    .line 956
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x1388

    if-ge v0, v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 967
    :cond_0
    return v1

    .line 964
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public extremeData()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 845
    const/4 v1, 0x0

    .line 846
    .local v1, "num":I
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v1

    .line 847
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v2, v2, v3

    iput v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataX:F

    .line 848
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v2, v2, v3

    iput v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataX:F

    .line 849
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v2, v2, v3

    iput v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataY:F

    .line 850
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v2, v2, v3

    iput v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataY:F

    .line 851
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 853
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v2, v2, v0

    iput v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataX:F

    .line 857
    :cond_0
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 859
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v2, v2, v0

    iput v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataX:F

    .line 862
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 864
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v2, v2, v0

    iput v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataY:F

    .line 866
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 868
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v2, v2, v0

    iput v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataY:F

    .line 851
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_4
    const-string v2, "GestureDetectCustom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minDataX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxDataX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minDataY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxDataY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-void
.end method

.method public mRecognition()I
    .locals 50

    .prologue
    .line 536
    const/16 v26, 0x0

    .line 537
    .local v26, "num":I
    const/16 v27, 0x0

    .line 538
    .local v27, "result":I
    const/16 v45, 0x5

    move/from16 v0, v45

    new-array v2, v0, [I

    .line 539
    .local v2, "I":[I
    const/16 v45, 0x5

    move/from16 v0, v45

    new-array v3, v0, [F

    .line 540
    .local v3, "X":[F
    const/16 v16, 0x0

    .line 541
    .local v16, "k1":F
    const/4 v5, 0x0

    .line 542
    .local v5, "b1":F
    const/16 v36, 0x0

    .line 543
    .local v36, "y11":F
    const/16 v37, 0x0

    .line 544
    .local v37, "y12":F
    const/16 v17, 0x0

    .line 545
    .local v17, "k2":F
    const/4 v6, 0x0

    .line 546
    .local v6, "b2":F
    const/16 v38, 0x0

    .line 547
    .local v38, "y21":F
    const/16 v39, 0x0

    .line 548
    .local v39, "y22":F
    const/16 v18, 0x0

    .line 549
    .local v18, "k3":F
    const/4 v7, 0x0

    .line 550
    .local v7, "b3":F
    const/16 v40, 0x0

    .line 551
    .local v40, "y31":F
    const/16 v41, 0x0

    .line 552
    .local v41, "y32":F
    const/16 v19, 0x0

    .line 553
    .local v19, "k4":F
    const/4 v8, 0x0

    .line 554
    .local v8, "b4":F
    const/16 v42, 0x0

    .line 555
    .local v42, "y41":F
    const/16 v43, 0x0

    .line 556
    .local v43, "y42":F
    const/16 v44, 0x0

    .line 557
    .local v44, "y43":F
    const/16 v21, 0x0

    .line 558
    .local v21, "maxY1":F
    const/16 v22, 0x0

    .line 559
    .local v22, "maxY2":F
    const/16 v23, 0x0

    .line 560
    .local v23, "maxY3":F
    const/16 v24, 0x0

    .line 561
    .local v24, "minY1":F
    const/16 v25, 0x0

    .line 562
    .local v25, "minY2":F
    const/16 v20, 0x0

    .line 563
    .local v20, "length":F
    const/16 v33, 0x0

    .line 564
    .local v33, "subLength":F
    const/16 v34, 0x0

    .line 565
    .local v34, "subLength1":F
    const/16 v35, 0x0

    .line 566
    .local v35, "subLength2":F
    const/4 v13, 0x0

    .line 567
    .local v13, "distance":F
    const/4 v4, 0x0

    .line 568
    .local v4, "abstLength":F
    const/16 v28, 0x1

    .line 569
    .local v28, "state1":Z
    const/16 v29, 0x1

    .line 570
    .local v29, "state2":Z
    const/16 v30, 0x1

    .line 571
    .local v30, "state3":Z
    const/16 v31, 0x1

    .line 572
    .local v31, "state4":Z
    const/16 v32, 0x1

    .line 573
    .local v32, "state5":Z
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v26

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->traceLength()F

    move-result v20

    .line 575
    const/16 v45, 0xa

    move/from16 v0, v26

    move/from16 v1, v45

    if-ge v0, v1, :cond_0

    move/from16 v45, v27

    .line 813
    :goto_0
    return v45

    .line 579
    :cond_0
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_1
    move/from16 v0, v26

    if-ge v14, v0, :cond_3

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    aget v46, v46, v47

    sub-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v47, v0

    add-int/lit8 v48, v14, -0x1

    aget v47, v47, v48

    sub-float v46, v46, v47

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v47, v0

    add-int/lit8 v48, v14, -0x1

    aget v47, v47, v48

    sub-float v46, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v47, v0

    aget v47, v47, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v14, -0x1

    aget v48, v48, v49

    sub-float v47, v47, v48

    mul-float v46, v46, v47

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v45, v0

    add-float v34, v34, v45

    .line 582
    const/high16 v45, 0x41200000    # 10.0f

    div-float v45, v20, v45

    cmpg-float v45, v34, v45

    if-gez v45, :cond_3

    .line 584
    const/16 v35, 0x0

    .line 585
    add-int/lit8 v15, v26, -0x1

    .local v15, "j":I
    :goto_2
    if-lez v15, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v45, v0

    aget v45, v45, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v15, -0x1

    aget v46, v46, v47

    sub-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v47, v0

    add-int/lit8 v48, v15, -0x1

    aget v47, v47, v48

    sub-float v46, v46, v47

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v46, v0

    aget v46, v46, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v47, v0

    add-int/lit8 v48, v15, -0x1

    aget v47, v47, v48

    sub-float v46, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v47, v0

    aget v47, v47, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget v48, v48, v49

    sub-float v47, v47, v48

    mul-float v46, v46, v47

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v45, v0

    add-float v35, v35, v45

    .line 588
    const/high16 v45, 0x41200000    # 10.0f

    div-float v45, v20, v45

    cmpg-float v45, v35, v45

    if-gez v45, :cond_2

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v15

    sub-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v47, v0

    aget v47, v47, v15

    sub-float v46, v46, v47

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v47, v0

    aget v47, v47, v15

    sub-float v46, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v47, v0

    aget v47, v47, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v48, v0

    aget v48, v48, v15

    sub-float v47, v47, v48

    mul-float v46, v46, v47

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v13, v0

    .line 591
    const/high16 v45, 0x41a00000    # 20.0f

    cmpg-float v45, v13, v45

    if-gez v45, :cond_1

    .line 593
    const-string v45, "LetterGestureRecognition"

    const-string v46, "mReturn: too close"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v45, v27

    .line 594
    goto/16 :goto_0

    .line 585
    :cond_1
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_2

    .line 579
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 609
    .end local v15    # "j":I
    :cond_3
    const/4 v14, 0x1

    :goto_3
    move/from16 v0, v26

    if-ge v14, v0, :cond_e

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    aget v46, v46, v47

    sub-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v47, v0

    add-int/lit8 v48, v14, -0x1

    aget v47, v47, v48

    sub-float v46, v46, v47

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v47, v0

    add-int/lit8 v48, v14, -0x1

    aget v47, v47, v48

    sub-float v46, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v47, v0

    aget v47, v47, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v14, -0x1

    aget v48, v48, v49

    sub-float v47, v47, v48

    mul-float v46, v46, v47

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v45, v0

    add-float v33, v33, v45

    .line 612
    const/16 v45, 0x0

    cmpl-float v45, v33, v45

    if-ltz v45, :cond_5

    const/high16 v45, 0x40400000    # 3.0f

    div-float v45, v20, v45

    cmpg-float v45, v33, v45

    if-gtz v45, :cond_5

    .line 614
    if-eqz v28, :cond_4

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    add-int/lit8 v46, v14, -0x1

    aget v21, v45, v46

    .line 617
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    aget v46, v46, v47

    aput v46, v3, v45

    .line 618
    const/16 v45, 0x0

    add-int/lit8 v46, v14, -0x1

    aput v46, v2, v45

    .line 619
    const/16 v28, 0x0

    .line 621
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    cmpl-float v45, v45, v21

    if-lez v45, :cond_5

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v21, v45, v14

    .line 624
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    aput v46, v3, v45

    .line 625
    const/16 v45, 0x0

    aput v14, v2, v45

    .line 628
    :cond_5
    const/high16 v45, 0x40a00000    # 5.0f

    div-float v45, v20, v45

    cmpl-float v45, v33, v45

    if-lez v45, :cond_7

    const/high16 v45, 0x40a00000    # 5.0f

    div-float v45, v20, v45

    const/high16 v46, 0x40400000    # 3.0f

    mul-float v45, v45, v46

    cmpg-float v45, v33, v45

    if-gez v45, :cond_7

    .line 630
    if-eqz v29, :cond_6

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    add-int/lit8 v46, v14, -0x1

    aget v24, v45, v46

    .line 633
    const/16 v45, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    aget v46, v46, v47

    aput v46, v3, v45

    .line 634
    const/16 v45, 0x1

    add-int/lit8 v46, v14, -0x1

    aput v46, v2, v45

    .line 635
    const/16 v29, 0x0

    .line 637
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    cmpg-float v45, v45, v24

    if-gez v45, :cond_7

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v24, v45, v14

    .line 640
    const/16 v45, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    aput v46, v3, v45

    .line 641
    const/16 v45, 0x1

    aput v14, v2, v45

    .line 652
    :cond_7
    const/high16 v45, 0x40400000    # 3.0f

    div-float v45, v20, v45

    cmpl-float v45, v33, v45

    if-lez v45, :cond_9

    const/high16 v45, 0x40800000    # 4.0f

    div-float v45, v20, v45

    const/high16 v46, 0x40400000    # 3.0f

    mul-float v45, v45, v46

    cmpg-float v45, v33, v45

    if-gez v45, :cond_9

    .line 654
    if-eqz v30, :cond_8

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    add-int/lit8 v46, v14, -0x1

    aget v22, v45, v46

    .line 657
    const/16 v45, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    aget v46, v46, v47

    aput v46, v3, v45

    .line 658
    const/16 v45, 0x2

    add-int/lit8 v46, v14, -0x1

    aput v46, v2, v45

    .line 659
    const/16 v30, 0x0

    .line 661
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    cmpl-float v45, v45, v22

    if-lez v45, :cond_9

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v22, v45, v14

    .line 664
    const/16 v45, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    aput v46, v3, v45

    .line 665
    const/16 v45, 0x2

    aput v14, v2, v45

    .line 676
    :cond_9
    const/high16 v45, 0x40a00000    # 5.0f

    div-float v45, v20, v45

    const/high16 v46, 0x40400000    # 3.0f

    mul-float v45, v45, v46

    cmpl-float v45, v33, v45

    if-lez v45, :cond_b

    const/high16 v45, 0x40c00000    # 6.0f

    div-float v45, v20, v45

    const/high16 v46, 0x40a00000    # 5.0f

    mul-float v45, v45, v46

    cmpg-float v45, v33, v45

    if-gez v45, :cond_b

    .line 678
    if-eqz v31, :cond_a

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    add-int/lit8 v46, v14, -0x1

    aget v25, v45, v46

    .line 681
    const/16 v45, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    aget v46, v46, v47

    aput v46, v3, v45

    .line 682
    const/16 v45, 0x3

    add-int/lit8 v46, v14, -0x1

    aput v46, v2, v45

    .line 683
    const/16 v31, 0x0

    .line 685
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    cmpg-float v45, v45, v25

    if-gez v45, :cond_b

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v25, v45, v14

    .line 688
    const/16 v45, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    aput v46, v3, v45

    .line 689
    const/16 v45, 0x3

    aput v14, v2, v45

    .line 700
    :cond_b
    const/high16 v45, 0x40800000    # 4.0f

    div-float v45, v20, v45

    const/high16 v46, 0x40400000    # 3.0f

    mul-float v45, v45, v46

    cmpl-float v45, v33, v45

    if-ltz v45, :cond_d

    cmpg-float v45, v33, v20

    if-gtz v45, :cond_d

    .line 702
    if-eqz v32, :cond_c

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    add-int/lit8 v46, v14, -0x1

    aget v23, v45, v46

    .line 705
    const/16 v45, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    aget v46, v46, v47

    aput v46, v3, v45

    .line 706
    const/16 v45, 0x4

    add-int/lit8 v46, v14, -0x1

    aput v46, v2, v45

    .line 707
    const/16 v32, 0x0

    .line 709
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    cmpl-float v45, v45, v23

    if-lez v45, :cond_d

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v23, v45, v14

    .line 712
    const/16 v45, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v46, v0

    aget v46, v46, v14

    aput v46, v3, v45

    .line 713
    const/16 v45, 0x4

    aput v14, v2, v45

    .line 609
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 717
    :cond_e
    sub-float v45, v22, v24

    const/16 v46, 0x2

    aget v46, v3, v46

    const/16 v47, 0x1

    aget v47, v3, v47

    sub-float v46, v46, v47

    div-float v16, v45, v46

    .line 718
    const/16 v45, 0x1

    aget v45, v3, v45

    mul-float v45, v45, v22

    const/16 v46, 0x2

    aget v46, v3, v46

    mul-float v46, v46, v24

    sub-float v45, v45, v46

    const/16 v46, 0x1

    aget v46, v3, v46

    const/16 v47, 0x2

    aget v47, v3, v47

    sub-float v46, v46, v47

    div-float v5, v45, v46

    .line 719
    const/16 v45, 0x0

    aget v45, v3, v45

    mul-float v45, v45, v16

    add-float v36, v45, v5

    .line 720
    const/16 v45, 0x3

    aget v45, v3, v45

    mul-float v45, v45, v16

    add-float v37, v45, v5

    .line 721
    sub-float v45, v25, v22

    const/16 v46, 0x3

    aget v46, v3, v46

    const/16 v47, 0x2

    aget v47, v3, v47

    sub-float v46, v46, v47

    div-float v17, v45, v46

    .line 722
    const/16 v45, 0x2

    aget v45, v3, v45

    mul-float v45, v45, v25

    const/16 v46, 0x3

    aget v46, v3, v46

    mul-float v46, v46, v22

    sub-float v45, v45, v46

    const/16 v46, 0x2

    aget v46, v3, v46

    const/16 v47, 0x3

    aget v47, v3, v47

    sub-float v46, v46, v47

    div-float v6, v45, v46

    .line 723
    const/16 v45, 0x1

    aget v45, v3, v45

    mul-float v45, v45, v17

    add-float v38, v45, v6

    .line 724
    const/16 v45, 0x4

    aget v45, v3, v45

    mul-float v45, v45, v17

    add-float v39, v45, v6

    .line 725
    sub-float v45, v23, v21

    const/16 v46, 0x4

    aget v46, v3, v46

    const/16 v47, 0x0

    aget v47, v3, v47

    sub-float v46, v46, v47

    div-float v18, v45, v46

    .line 726
    const/16 v45, 0x0

    aget v45, v3, v45

    mul-float v45, v45, v23

    const/16 v46, 0x4

    aget v46, v3, v46

    mul-float v46, v46, v21

    sub-float v45, v45, v46

    const/16 v46, 0x0

    aget v46, v3, v46

    const/16 v47, 0x4

    aget v47, v3, v47

    sub-float v46, v46, v47

    div-float v7, v45, v46

    .line 727
    const/16 v45, 0x1

    aget v45, v3, v45

    mul-float v45, v45, v18

    add-float v40, v45, v7

    .line 728
    const/16 v45, 0x3

    aget v45, v3, v45

    mul-float v45, v45, v18

    add-float v41, v45, v7

    .line 729
    sub-float v45, v25, v24

    const/16 v46, 0x3

    aget v46, v3, v46

    const/16 v47, 0x1

    aget v47, v3, v47

    sub-float v46, v46, v47

    div-float v19, v45, v46

    .line 730
    const/16 v45, 0x1

    aget v45, v3, v45

    mul-float v45, v45, v25

    const/16 v46, 0x3

    aget v46, v3, v46

    mul-float v46, v46, v24

    sub-float v45, v45, v46

    const/16 v46, 0x1

    aget v46, v3, v46

    const/16 v47, 0x3

    aget v47, v3, v47

    sub-float v46, v46, v47

    div-float v8, v45, v46

    .line 731
    const/16 v45, 0x0

    aget v45, v3, v45

    mul-float v45, v45, v19

    add-float v42, v45, v8

    .line 732
    const/16 v45, 0x2

    aget v45, v3, v45

    mul-float v45, v45, v19

    add-float v43, v45, v8

    .line 733
    const/16 v45, 0x4

    aget v45, v3, v45

    mul-float v45, v45, v19

    add-float v44, v45, v8

    .line 734
    const/16 v45, 0x1

    aget v45, v3, v45

    const/16 v46, 0x0

    aget v46, v3, v46

    sub-float v45, v45, v46

    const/16 v46, 0x1

    aget v46, v3, v46

    const/16 v47, 0x0

    aget v47, v3, v47

    sub-float v46, v46, v47

    mul-float v45, v45, v46

    sub-float v46, v24, v21

    sub-float v47, v24, v21

    mul-float v46, v46, v47

    add-float v45, v45, v46

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    const/16 v45, 0x2

    aget v45, v3, v45

    const/16 v48, 0x1

    aget v48, v3, v48

    sub-float v45, v45, v48

    const/16 v48, 0x2

    aget v48, v3, v48

    const/16 v49, 0x1

    aget v49, v3, v49

    sub-float v48, v48, v49

    mul-float v45, v45, v48

    sub-float v48, v22, v24

    sub-float v49, v22, v24

    mul-float v48, v48, v49

    add-float v45, v45, v48

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v48

    add-double v46, v46, v48

    const/16 v45, 0x3

    aget v45, v3, v45

    const/16 v48, 0x2

    aget v48, v3, v48

    sub-float v45, v45, v48

    const/16 v48, 0x3

    aget v48, v3, v48

    const/16 v49, 0x2

    aget v49, v3, v49

    sub-float v48, v48, v49

    mul-float v45, v45, v48

    sub-float v48, v25, v22

    sub-float v49, v25, v22

    mul-float v48, v48, v49

    add-float v45, v45, v48

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v48

    add-double v46, v46, v48

    const/16 v45, 0x4

    aget v45, v3, v45

    const/16 v48, 0x3

    aget v48, v3, v48

    sub-float v45, v45, v48

    const/16 v48, 0x4

    aget v48, v3, v48

    const/16 v49, 0x3

    aget v49, v3, v49

    sub-float v48, v48, v49

    mul-float v45, v45, v48

    sub-float v48, v23, v25

    sub-float v49, v23, v25

    mul-float v48, v48, v49

    add-float v45, v45, v48

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v48

    add-double v46, v46, v48

    move-wide/from16 v0, v46

    double-to-float v4, v0

    .line 738
    const-string v46, "LetterGestureRecognition"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " mdelta11: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-float v45, v21, v24

    const/high16 v48, 0x40c80000    # 6.25f

    cmpl-float v45, v45, v48

    if-lez v45, :cond_10

    const/16 v45, 0x1

    :goto_4
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " mdelta21: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-float v45, v22, v24

    const/high16 v48, 0x40c80000    # 6.25f

    cmpl-float v45, v45, v48

    if-lez v45, :cond_11

    const/16 v45, 0x1

    :goto_5
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " mdelta22: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-float v45, v22, v25

    const/high16 v48, 0x40c80000    # 6.25f

    cmpl-float v45, v45, v48

    if-lez v45, :cond_12

    const/16 v45, 0x1

    :goto_6
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " mdelta32: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-float v45, v23, v25

    const/high16 v48, 0x40c80000    # 6.25f

    cmpl-float v45, v45, v48

    if-lez v45, :cond_13

    const/16 v45, 0x1

    :goto_7
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " X02: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x0

    aget v45, v3, v45

    const/16 v48, 0x2

    aget v48, v3, v48

    cmpg-float v45, v45, v48

    if-gez v45, :cond_14

    const/16 v45, 0x1

    :goto_8
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " X24: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x2

    aget v45, v3, v45

    const/16 v48, 0x4

    aget v48, v3, v48

    cmpg-float v45, v45, v48

    if-gez v45, :cond_15

    const/16 v45, 0x1

    :goto_9
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " X40: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x4

    aget v45, v3, v45

    const/16 v48, 0x0

    aget v48, v3, v48

    sub-float v45, v45, v48

    const/high16 v48, 0x41480000    # 12.5f

    cmpl-float v45, v45, v48

    if-lez v45, :cond_16

    const/16 v45, 0x1

    :goto_a
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " X13: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x1

    aget v45, v3, v45

    const/16 v48, 0x3

    aget v48, v3, v48

    cmpg-float v45, v45, v48

    if-gez v45, :cond_17

    const/16 v45, 0x1

    :goto_b
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y11: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v16, v36

    mul-float v48, v16, v21

    cmpg-float v45, v45, v48

    if-gez v45, :cond_18

    const/16 v45, 0x1

    :goto_c
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y12: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v16, v37

    mul-float v48, v16, v25

    cmpl-float v45, v45, v48

    if-lez v45, :cond_19

    const/16 v45, 0x1

    :goto_d
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y21: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v17, v38

    mul-float v48, v17, v24

    cmpg-float v45, v45, v48

    if-gez v45, :cond_1a

    const/16 v45, 0x1

    :goto_e
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y22: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v17, v39

    mul-float v48, v17, v23

    cmpl-float v45, v45, v48

    if-lez v45, :cond_1b

    const/16 v45, 0x1

    :goto_f
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y31: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v18, v40

    mul-float v48, v18, v24

    cmpl-float v45, v45, v48

    if-lez v45, :cond_1c

    const/16 v45, 0x1

    :goto_10
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y32: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v18, v41

    mul-float v48, v18, v25

    cmpl-float v45, v45, v48

    if-lez v45, :cond_1d

    const/16 v45, 0x1

    :goto_11
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y41: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v19, v42

    mul-float v48, v19, v21

    cmpl-float v45, v45, v48

    if-lez v45, :cond_1e

    const/16 v45, 0x1

    :goto_12
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y42: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v19, v43

    mul-float v48, v19, v22

    cmpl-float v45, v45, v48

    if-lez v45, :cond_1f

    const/16 v45, 0x1

    :goto_13
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " y43: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    mul-float v45, v19, v44

    mul-float v48, v19, v23

    cmpl-float v45, v45, v48

    if-lez v45, :cond_20

    const/16 v45, 0x1

    :goto_14
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " abstLength: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/high16 v45, 0x40000000    # 2.0f

    div-float v45, v20, v45

    cmpl-float v45, v4, v45

    if-lez v45, :cond_21

    const/16 v45, 0x1

    :goto_15
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " I01: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x0

    aget v45, v2, v45

    const/16 v48, 0x1

    aget v48, v2, v48

    move/from16 v0, v45

    move/from16 v1, v48

    if-ge v0, v1, :cond_22

    const/16 v45, 0x1

    :goto_16
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " I12: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x1

    aget v45, v2, v45

    const/16 v48, 0x2

    aget v48, v2, v48

    move/from16 v0, v45

    move/from16 v1, v48

    if-ge v0, v1, :cond_23

    const/16 v45, 0x1

    :goto_17
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " I23: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x2

    aget v45, v2, v45

    const/16 v48, 0x3

    aget v48, v2, v48

    move/from16 v0, v45

    move/from16 v1, v48

    if-ge v0, v1, :cond_24

    const/16 v45, 0x1

    :goto_18
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " I34: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x3

    aget v45, v2, v45

    const/16 v48, 0x4

    aget v48, v2, v48

    move/from16 v0, v45

    move/from16 v1, v48

    if-ge v0, v1, :cond_25

    const/16 v45, 0x1

    :goto_19
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v45, "LetterGestureRecognition"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " mdelta11: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sub-float v47, v21, v24

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mdelta21: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sub-float v47, v22, v24

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mdelta22: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sub-float v47, v22, v25

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " mdelta32: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sub-float v47, v23, v25

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X02: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x0

    aget v47, v3, v47

    const/16 v48, 0x2

    aget v48, v3, v48

    sub-float v47, v47, v48

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X24: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x2

    aget v47, v3, v47

    const/16 v48, 0x4

    aget v48, v3, v48

    sub-float v47, v47, v48

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X40: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x4

    aget v47, v3, v47

    const/16 v48, 0x0

    aget v48, v3, v48

    sub-float v47, v47, v48

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X13: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    aget v47, v3, v47

    const/16 v48, 0x3

    aget v48, v3, v48

    sub-float v47, v47, v48

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " I0: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x0

    aget v47, v2, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " I1: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    aget v47, v2, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " I2: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x2

    aget v47, v2, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " I3: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x3

    aget v47, v2, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " I4: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x4

    aget v47, v2, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v45, "LetterGestureRecognition"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " maxY1: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " maxY2: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " maxY3: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " minY1: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " minY2: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X[0]: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x0

    aget v47, v3, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X[1]: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    aget v47, v3, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X[2]: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x2

    aget v47, v3, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X[3]: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x3

    aget v47, v3, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " X[4]: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x4

    aget v47, v3, v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    sub-float v45, v21, v24

    const/high16 v46, 0x40c80000    # 6.25f

    cmpl-float v45, v45, v46

    if-lez v45, :cond_26

    sub-float v45, v22, v24

    const/high16 v46, 0x40c80000    # 6.25f

    cmpl-float v45, v45, v46

    if-lez v45, :cond_26

    sub-float v45, v22, v25

    const/high16 v46, 0x40c80000    # 6.25f

    cmpl-float v45, v45, v46

    if-lez v45, :cond_26

    sub-float v45, v23, v25

    const/high16 v46, 0x40c80000    # 6.25f

    cmpl-float v45, v45, v46

    if-lez v45, :cond_26

    const/16 v45, 0x4

    aget v45, v3, v45

    const/16 v46, 0x0

    aget v46, v3, v46

    sub-float v45, v45, v46

    const/high16 v46, 0x41480000    # 12.5f

    cmpl-float v45, v45, v46

    if-lez v45, :cond_26

    mul-float v45, v16, v36

    mul-float v46, v16, v21

    cmpg-float v45, v45, v46

    if-gez v45, :cond_26

    mul-float v45, v16, v37

    mul-float v46, v16, v25

    cmpl-float v45, v45, v46

    if-lez v45, :cond_26

    mul-float v45, v17, v38

    mul-float v46, v17, v24

    cmpg-float v45, v45, v46

    if-gez v45, :cond_26

    mul-float v45, v17, v39

    mul-float v46, v17, v23

    cmpl-float v45, v45, v46

    if-lez v45, :cond_26

    const/high16 v45, 0x40000000    # 2.0f

    div-float v45, v20, v45

    cmpl-float v45, v4, v45

    if-lez v45, :cond_26

    const/16 v45, 0x0

    aget v45, v2, v45

    const/16 v46, 0x1

    aget v46, v2, v46

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_26

    const/16 v45, 0x1

    aget v45, v2, v45

    const/16 v46, 0x2

    aget v46, v2, v46

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_26

    const/16 v45, 0x2

    aget v45, v2, v45

    const/16 v46, 0x3

    aget v46, v2, v46

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_26

    const/16 v45, 0x3

    aget v45, v2, v45

    const/16 v46, 0x4

    aget v46, v2, v46

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_26

    .line 762
    const/16 v27, 0x3

    .line 769
    const/16 v45, 0x3

    move/from16 v0, v27

    move/from16 v1, v45

    if-ne v0, v1, :cond_33

    .line 771
    const/4 v9, 0x0

    .line 772
    .local v9, "count1":I
    const/4 v10, 0x0

    .line 773
    .local v10, "count2":I
    const/4 v11, 0x0

    .line 774
    .local v11, "count3":I
    const/4 v12, 0x0

    .line 775
    .local v12, "count4":I
    const/16 v45, 0x0

    aget v14, v2, v45

    :goto_1a
    const/16 v45, 0x1

    aget v45, v2, v45

    move/from16 v0, v45

    if-ge v14, v0, :cond_27

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, 0x1

    aget v46, v46, v47

    cmpl-float v45, v45, v46

    if-lez v45, :cond_f

    .line 779
    add-int/lit8 v9, v9, 0x1

    .line 775
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    .line 738
    .end local v9    # "count1":I
    .end local v10    # "count2":I
    .end local v11    # "count3":I
    .end local v12    # "count4":I
    :cond_10
    const/16 v45, 0x0

    goto/16 :goto_4

    :cond_11
    const/16 v45, 0x0

    goto/16 :goto_5

    :cond_12
    const/16 v45, 0x0

    goto/16 :goto_6

    :cond_13
    const/16 v45, 0x0

    goto/16 :goto_7

    :cond_14
    const/16 v45, 0x0

    goto/16 :goto_8

    :cond_15
    const/16 v45, 0x0

    goto/16 :goto_9

    :cond_16
    const/16 v45, 0x0

    goto/16 :goto_a

    :cond_17
    const/16 v45, 0x0

    goto/16 :goto_b

    :cond_18
    const/16 v45, 0x0

    goto/16 :goto_c

    :cond_19
    const/16 v45, 0x0

    goto/16 :goto_d

    :cond_1a
    const/16 v45, 0x0

    goto/16 :goto_e

    :cond_1b
    const/16 v45, 0x0

    goto/16 :goto_f

    :cond_1c
    const/16 v45, 0x0

    goto/16 :goto_10

    :cond_1d
    const/16 v45, 0x0

    goto/16 :goto_11

    :cond_1e
    const/16 v45, 0x0

    goto/16 :goto_12

    :cond_1f
    const/16 v45, 0x0

    goto/16 :goto_13

    :cond_20
    const/16 v45, 0x0

    goto/16 :goto_14

    :cond_21
    const/16 v45, 0x0

    goto/16 :goto_15

    :cond_22
    const/16 v45, 0x0

    goto/16 :goto_16

    :cond_23
    const/16 v45, 0x0

    goto/16 :goto_17

    :cond_24
    const/16 v45, 0x0

    goto/16 :goto_18

    :cond_25
    const/16 v45, 0x0

    goto/16 :goto_19

    .line 766
    :cond_26
    const-string v45, "LetterGestureRecognition"

    const-string v46, "mReturn: special point not right"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v45, v27

    .line 767
    goto/16 :goto_0

    .line 782
    .restart local v9    # "count1":I
    .restart local v10    # "count2":I
    .restart local v11    # "count3":I
    .restart local v12    # "count4":I
    :cond_27
    const/16 v45, 0x1

    aget v14, v2, v45

    :goto_1b
    const/16 v45, 0x2

    aget v45, v2, v45

    move/from16 v0, v45

    if-ge v14, v0, :cond_29

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, 0x1

    aget v46, v46, v47

    cmpg-float v45, v45, v46

    if-gez v45, :cond_28

    .line 786
    add-int/lit8 v10, v10, 0x1

    .line 782
    :cond_28
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b

    .line 789
    :cond_29
    const/16 v45, 0x2

    aget v14, v2, v45

    :goto_1c
    const/16 v45, 0x3

    aget v45, v2, v45

    move/from16 v0, v45

    if-ge v14, v0, :cond_2b

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, 0x1

    aget v46, v46, v47

    cmpl-float v45, v45, v46

    if-lez v45, :cond_2a

    .line 793
    add-int/lit8 v11, v11, 0x1

    .line 789
    :cond_2a
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    .line 796
    :cond_2b
    const/16 v45, 0x3

    aget v14, v2, v45

    :goto_1d
    const/16 v45, 0x4

    aget v45, v2, v45

    add-int/lit8 v45, v45, -0x1

    move/from16 v0, v45

    if-ge v14, v0, :cond_2d

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v45, v0

    aget v45, v45, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, 0x1

    aget v46, v46, v47

    cmpg-float v45, v45, v46

    if-gez v45, :cond_2c

    .line 800
    add-int/lit8 v12, v12, 0x1

    .line 796
    :cond_2c
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d

    .line 803
    :cond_2d
    const-string v45, "LetterGestureRecognition"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " count1: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " count2: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " count3: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " count4: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v45, "LetterGestureRecognition"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " I10: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    aget v47, v2, v47

    const/16 v48, 0x0

    aget v48, v2, v48

    sub-int v47, v47, v48

    div-int/lit8 v47, v47, 0x4

    mul-int/lit8 v47, v47, 0x3

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " I21: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x2

    aget v47, v2, v47

    const/16 v48, 0x1

    aget v48, v2, v48

    sub-int v47, v47, v48

    div-int/lit8 v47, v47, 0x4

    mul-int/lit8 v47, v47, 0x3

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " I32: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x3

    aget v47, v2, v47

    const/16 v48, 0x2

    aget v48, v2, v48

    sub-int v47, v47, v48

    div-int/lit8 v47, v47, 0x4

    mul-int/lit8 v47, v47, 0x3

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " I43: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x4

    aget v47, v2, v47

    const/16 v48, 0x3

    aget v48, v2, v48

    sub-int v47, v47, v48

    div-int/lit8 v47, v47, 0x4

    mul-int/lit8 v47, v47, 0x3

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v46, "LetterGestureRecognition"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " I10: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x1

    aget v45, v2, v45

    const/16 v48, 0x0

    aget v48, v2, v48

    sub-int v45, v45, v48

    div-int/lit8 v45, v45, 0x4

    mul-int/lit8 v45, v45, 0x3

    move/from16 v0, v45

    if-ge v9, v0, :cond_2f

    const/16 v45, 0x1

    :goto_1e
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " I21: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x2

    aget v45, v2, v45

    const/16 v48, 0x1

    aget v48, v2, v48

    sub-int v45, v45, v48

    div-int/lit8 v45, v45, 0x4

    mul-int/lit8 v45, v45, 0x3

    move/from16 v0, v45

    if-ge v10, v0, :cond_30

    const/16 v45, 0x1

    :goto_1f
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " I32: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x3

    aget v45, v2, v45

    const/16 v48, 0x2

    aget v48, v2, v48

    sub-int v45, v45, v48

    div-int/lit8 v45, v45, 0x4

    mul-int/lit8 v45, v45, 0x3

    move/from16 v0, v45

    if-ge v11, v0, :cond_31

    const/16 v45, 0x1

    :goto_20
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v47, " I43: "

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v45, 0x4

    aget v45, v2, v45

    const/16 v48, 0x3

    aget v48, v2, v48

    sub-int v45, v45, v48

    div-int/lit8 v45, v45, 0x4

    mul-int/lit8 v45, v45, 0x3

    move/from16 v0, v45

    if-ge v12, v0, :cond_32

    const/16 v45, 0x1

    :goto_21
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    int-to-float v0, v10

    move/from16 v45, v0

    const/16 v46, 0x2

    aget v46, v2, v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x1

    aget v47, v2, v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v46, v46, v47

    const/high16 v47, 0x41000000    # 8.0f

    div-float v46, v46, v47

    const/high16 v47, 0x40a00000    # 5.0f

    mul-float v46, v46, v47

    cmpg-float v45, v45, v46

    if-ltz v45, :cond_2e

    int-to-float v0, v11

    move/from16 v45, v0

    const/16 v46, 0x3

    aget v46, v2, v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x2

    aget v47, v2, v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v46, v46, v47

    const/high16 v47, 0x41000000    # 8.0f

    div-float v46, v46, v47

    const/high16 v47, 0x40a00000    # 5.0f

    mul-float v46, v46, v47

    cmpg-float v45, v45, v46

    if-ltz v45, :cond_2e

    int-to-float v0, v12

    move/from16 v45, v0

    const/16 v46, 0x4

    aget v46, v2, v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x3

    aget v47, v2, v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v46, v46, v47

    const/high16 v47, 0x41000000    # 8.0f

    div-float v46, v46, v47

    const/high16 v47, 0x40a00000    # 5.0f

    mul-float v46, v46, v47

    cmpg-float v45, v45, v46

    if-gez v45, :cond_33

    .line 809
    :cond_2e
    const-string v45, "LetterGestureRecognition"

    const-string v46, "mReturn: gesture maybe others"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/16 v45, 0x0

    goto/16 :goto_0

    .line 805
    :cond_2f
    const/16 v45, 0x0

    goto/16 :goto_1e

    :cond_30
    const/16 v45, 0x0

    goto/16 :goto_1f

    :cond_31
    const/16 v45, 0x0

    goto/16 :goto_20

    :cond_32
    const/16 v45, 0x0

    goto/16 :goto_21

    .end local v9    # "count1":I
    .end local v10    # "count2":I
    .end local v11    # "count3":I
    .end local v12    # "count4":I
    :cond_33
    move/from16 v45, v27

    .line 813
    goto/16 :goto_0
.end method

.method public normData()V
    .locals 8

    .prologue
    const/high16 v7, 0x42480000    # 50.0f

    .line 886
    const/4 v3, 0x0

    .line 887
    .local v3, "num":I
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v3

    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 890
    .local v1, "deltaY":F
    iget v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataX:F

    iget v5, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataX:F

    sub-float v0, v4, v5

    .line 891
    iget v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->maxDataY:F

    iget v5, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->minDataY:F

    sub-float v1, v4, v5

    .line 892
    const-string v4, "GestureDetectCustom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normdeltaX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " deltaY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 895
    iget-object v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    iget-object v5, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v5, v5, v2

    mul-float/2addr v5, v7

    div-float/2addr v5, v1

    aput v5, v4, v2

    .line 896
    iget-object v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    iget-object v5, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v5, v5, v2

    mul-float/2addr v5, v7

    div-float/2addr v5, v1

    aput v5, v4, v2

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 899
    :cond_0
    return-void
.end method

.method public path2dData(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "i"    # I

    .prologue
    .line 948
    iget-object v0, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aput p1, v0, p3

    .line 949
    iget-object v0, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aput p2, v0, p3

    .line 950
    const-string v0, "GestureDetectCustom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-void
.end method

.method public recognition()I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "result":I
    new-array v2, v8, [I

    .line 58
    .local v2, "letter":[I
    const/4 v1, 0x0

    .line 59
    .local v1, "length":F
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->extremeData()V

    .line 60
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->normData()V

    .line 61
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->centerData()V

    .line 62
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->vRecognition()I

    move-result v4

    aput v4, v2, v5

    .line 63
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->sRecognition()I

    move-result v4

    aput v4, v2, v7

    .line 64
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mRecognition()I

    move-result v4

    aput v4, v2, v6

    .line 75
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataFlip()V

    .line 76
    aget v4, v2, v5

    if-nez v4, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->vRecognition()I

    move-result v4

    aput v4, v2, v5

    .line 80
    :cond_0
    aget v4, v2, v7

    if-nez v4, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->sRecognition()I

    move-result v4

    aput v4, v2, v7

    .line 84
    :cond_1
    aget v4, v2, v6

    if-nez v4, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->mRecognition()I

    move-result v4

    aput v4, v2, v6

    .line 88
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_4

    .line 90
    aget v4, v2, v0

    if-eqz v4, :cond_3

    .line 92
    aget v3, v2, v0

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_4
    aget v4, v2, v5

    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->traceLength()F

    move-result v1

    .line 98
    aget v4, v2, v6

    if-eqz v4, :cond_5

    .line 100
    const/high16 v4, 0x42960000    # 75.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_6

    .line 102
    aget v3, v2, v6

    .line 110
    :cond_5
    :goto_1
    const-string v4, "LetterGestureRecognition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gesture recognition result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v3

    .line 106
    :cond_6
    aget v3, v2, v5

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 972
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1388

    if-ge v0, v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aput v2, v1, v0

    .line 975
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aput v2, v1, v0

    .line 972
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->codeData:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 982
    :cond_1
    return-void
.end method

.method public sRecognition()I
    .locals 39

    .prologue
    .line 316
    const/16 v21, 0x0

    .line 317
    .local v21, "num":I
    const/16 v22, 0x0

    .line 318
    .local v22, "result":I
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v2, v0, [I

    .line 319
    .local v2, "I":[I
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v3, v0, [F

    .line 320
    .local v3, "Y":[F
    const/4 v14, 0x0

    .line 321
    .local v14, "k1":F
    const/4 v5, 0x0

    .line 322
    .local v5, "b1":F
    const/16 v30, 0x0

    .line 323
    .local v30, "y11":F
    const/16 v31, 0x0

    .line 324
    .local v31, "y12":F
    const/4 v15, 0x0

    .line 325
    .local v15, "k2":F
    const/4 v6, 0x0

    .line 326
    .local v6, "b2":F
    const/16 v32, 0x0

    .line 327
    .local v32, "y21":F
    const/16 v33, 0x0

    .line 328
    .local v33, "y22":F
    const/16 v17, 0x0

    .line 329
    .local v17, "maxX1":F
    const/16 v18, 0x0

    .line 330
    .local v18, "maxX2":F
    const/16 v19, 0x0

    .line 331
    .local v19, "minX1":F
    const/16 v20, 0x0

    .line 332
    .local v20, "minX2":F
    const/16 v16, 0x0

    .line 333
    .local v16, "length":F
    const/16 v27, 0x0

    .line 334
    .local v27, "subLength":F
    const/16 v28, 0x0

    .line 335
    .local v28, "subLength1":F
    const/16 v29, 0x0

    .line 336
    .local v29, "subLength2":F
    const/4 v11, 0x0

    .line 337
    .local v11, "distance":F
    const/4 v4, 0x0

    .line 338
    .local v4, "abstLength":F
    const/16 v23, 0x1

    .line 339
    .local v23, "state1":Z
    const/16 v24, 0x1

    .line 340
    .local v24, "state2":Z
    const/16 v25, 0x1

    .line 341
    .local v25, "state3":Z
    const/16 v26, 0x1

    .line 342
    .local v26, "state4":Z
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v21

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->traceLength()F

    move-result v16

    .line 344
    const/16 v34, 0xa

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    .line 346
    const/16 v34, 0x0

    .line 531
    :goto_0
    return v34

    .line 348
    :cond_0
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, -0x1

    aget v35, v35, v36

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v36, v0

    add-int/lit8 v37, v12, -0x1

    aget v36, v36, v37

    sub-float v35, v35, v36

    mul-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v36, v0

    add-int/lit8 v37, v12, -0x1

    aget v36, v36, v37

    sub-float v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v36, v0

    aget v36, v36, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v37, v0

    add-int/lit8 v38, v12, -0x1

    aget v37, v37, v38

    sub-float v36, v36, v37

    mul-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v28, v28, v34

    .line 351
    const/high16 v34, 0x41200000    # 10.0f

    div-float v34, v16, v34

    cmpg-float v34, v28, v34

    if-gez v34, :cond_3

    .line 353
    const/16 v29, 0x0

    .line 354
    add-int/lit8 v13, v21, -0x1

    .local v13, "j":I
    :goto_2
    if-lez v13, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v13, -0x1

    aget v35, v35, v36

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    aget v35, v35, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v36, v0

    add-int/lit8 v37, v13, -0x1

    aget v36, v36, v37

    sub-float v35, v35, v36

    mul-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v36, v0

    add-int/lit8 v37, v13, -0x1

    aget v36, v36, v37

    sub-float v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v36, v0

    aget v36, v36, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v37, v0

    add-int/lit8 v38, v13, -0x1

    aget v37, v37, v38

    sub-float v36, v36, v37

    mul-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v29, v29, v34

    .line 357
    const/high16 v34, 0x41200000    # 10.0f

    div-float v34, v16, v34

    cmpg-float v34, v29, v34

    if-gez v34, :cond_2

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    aget v35, v35, v13

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v36, v0

    aget v36, v36, v13

    sub-float v35, v35, v36

    mul-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v36, v0

    aget v36, v36, v13

    sub-float v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v36, v0

    aget v36, v36, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v37, v0

    aget v37, v37, v13

    sub-float v36, v36, v37

    mul-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v11, v0

    .line 360
    const/high16 v34, 0x41a00000    # 20.0f

    cmpg-float v34, v11, v34

    if-gez v34, :cond_1

    .line 362
    const-string v34, "LetterGestureRecognition"

    const-string v35, "sReturn: too close"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v34, v22

    .line 363
    goto/16 :goto_0

    .line 354
    :cond_1
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_2

    .line 348
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 378
    .end local v13    # "j":I
    :cond_3
    const/4 v12, 0x1

    :goto_3
    move/from16 v0, v21

    if-ge v12, v0, :cond_c

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, -0x1

    aget v35, v35, v36

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v36, v0

    add-int/lit8 v37, v12, -0x1

    aget v36, v36, v37

    sub-float v35, v35, v36

    mul-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v36, v0

    add-int/lit8 v37, v12, -0x1

    aget v36, v36, v37

    sub-float v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v36, v0

    aget v36, v36, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v37, v0

    add-int/lit8 v38, v12, -0x1

    aget v37, v37, v38

    sub-float v36, v36, v37

    mul-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v27, v27, v34

    .line 381
    const/16 v34, 0x0

    cmpl-float v34, v27, v34

    if-ltz v34, :cond_5

    const/high16 v34, 0x41000000    # 8.0f

    div-float v34, v16, v34

    cmpg-float v34, v27, v34

    if-gez v34, :cond_5

    .line 383
    if-eqz v23, :cond_4

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v12, -0x1

    aget v17, v34, v35

    .line 386
    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, -0x1

    aget v35, v35, v36

    aput v35, v3, v34

    .line 387
    const/16 v34, 0x0

    add-int/lit8 v35, v12, -0x1

    aput v35, v2, v34

    .line 388
    const/16 v23, 0x0

    .line 390
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    cmpl-float v34, v34, v17

    if-lez v34, :cond_5

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v17, v34, v12

    .line 393
    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    aput v35, v3, v34

    .line 394
    const/16 v34, 0x0

    aput v12, v2, v34

    .line 397
    :cond_5
    const/16 v34, 0x0

    cmpl-float v34, v27, v34

    if-lez v34, :cond_7

    const/high16 v34, 0x40a00000    # 5.0f

    div-float v34, v16, v34

    const/high16 v35, 0x40400000    # 3.0f

    mul-float v34, v34, v35

    cmpg-float v34, v27, v34

    if-gez v34, :cond_7

    .line 399
    if-eqz v24, :cond_6

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v12, -0x1

    aget v19, v34, v35

    .line 402
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, -0x1

    aget v35, v35, v36

    aput v35, v3, v34

    .line 403
    const/16 v34, 0x1

    add-int/lit8 v35, v12, -0x1

    aput v35, v2, v34

    .line 404
    const/16 v24, 0x0

    .line 406
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    cmpg-float v34, v34, v19

    if-gez v34, :cond_7

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v19, v34, v12

    .line 409
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    aput v35, v3, v34

    .line 410
    const/16 v34, 0x1

    aput v12, v2, v34

    .line 413
    :cond_7
    const/high16 v34, 0x40a00000    # 5.0f

    div-float v34, v16, v34

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v34, v34, v35

    cmpl-float v34, v27, v34

    if-lez v34, :cond_9

    cmpg-float v34, v27, v16

    if-gez v34, :cond_9

    .line 415
    if-eqz v25, :cond_8

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v12, -0x1

    aget v18, v34, v35

    .line 418
    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, -0x1

    aget v35, v35, v36

    aput v35, v3, v34

    .line 419
    const/16 v34, 0x2

    add-int/lit8 v35, v12, -0x1

    aput v35, v2, v34

    .line 420
    const/16 v25, 0x0

    .line 422
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    cmpl-float v34, v34, v18

    if-lez v34, :cond_9

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v18, v34, v12

    .line 425
    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    aput v35, v3, v34

    .line 426
    const/16 v34, 0x2

    aput v12, v2, v34

    .line 443
    :cond_9
    const/high16 v34, 0x41000000    # 8.0f

    div-float v34, v16, v34

    const/high16 v35, 0x40e00000    # 7.0f

    mul-float v34, v34, v35

    cmpl-float v34, v27, v34

    if-lez v34, :cond_b

    cmpg-float v34, v27, v16

    if-gtz v34, :cond_b

    .line 445
    if-eqz v26, :cond_a

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v12, -0x1

    aget v20, v34, v35

    .line 448
    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, -0x1

    aget v35, v35, v36

    aput v35, v3, v34

    .line 449
    const/16 v34, 0x3

    add-int/lit8 v35, v12, -0x1

    aput v35, v2, v34

    .line 450
    const/16 v26, 0x0

    .line 452
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    cmpg-float v34, v34, v20

    if-gez v34, :cond_b

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v20, v34, v12

    .line 455
    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v12

    aput v35, v3, v34

    .line 456
    const/16 v34, 0x3

    aput v12, v2, v34

    .line 378
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 460
    :cond_c
    const/16 v34, 0x2

    aget v34, v3, v34

    const/16 v35, 0x1

    aget v35, v3, v35

    sub-float v34, v34, v35

    sub-float v35, v18, v19

    div-float v14, v34, v35

    .line 461
    const/16 v34, 0x2

    aget v34, v3, v34

    mul-float v34, v34, v19

    const/16 v35, 0x1

    aget v35, v3, v35

    mul-float v35, v35, v18

    sub-float v34, v34, v35

    sub-float v35, v19, v18

    div-float v5, v34, v35

    .line 462
    mul-float v34, v14, v17

    add-float v30, v34, v5

    .line 463
    mul-float v34, v14, v20

    add-float v31, v34, v5

    .line 464
    const/16 v34, 0x3

    aget v34, v3, v34

    const/16 v35, 0x0

    aget v35, v3, v35

    sub-float v34, v34, v35

    sub-float v35, v20, v17

    div-float v15, v34, v35

    .line 465
    const/16 v34, 0x3

    aget v34, v3, v34

    mul-float v34, v34, v17

    const/16 v35, 0x0

    aget v35, v3, v35

    mul-float v35, v35, v20

    sub-float v34, v34, v35

    sub-float v35, v17, v20

    div-float v6, v34, v35

    .line 466
    mul-float v34, v15, v19

    add-float v32, v34, v6

    .line 467
    mul-float v34, v15, v18

    add-float v33, v34, v6

    .line 468
    const-string v35, "LetterGestureRecognition"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " sdelta20: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x3

    aget v34, v3, v34

    const/16 v37, 0x0

    aget v37, v3, v37

    sub-float v34, v34, v37

    const/high16 v37, 0x41480000    # 12.5f

    cmpl-float v34, v34, v37

    if-lez v34, :cond_e

    const/16 v34, 0x1

    :goto_4
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " y11: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x0

    aget v34, v3, v34

    cmpl-float v34, v30, v34

    if-lez v34, :cond_f

    const/16 v34, 0x1

    :goto_5
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " y12: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x3

    aget v34, v3, v34

    cmpg-float v34, v31, v34

    if-gez v34, :cond_10

    const/16 v34, 0x1

    :goto_6
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " y21: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x1

    aget v34, v3, v34

    cmpl-float v34, v32, v34

    if-lez v34, :cond_11

    const/16 v34, 0x1

    :goto_7
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " y22: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x2

    aget v34, v3, v34

    cmpg-float v34, v33, v34

    if-gez v34, :cond_12

    const/16 v34, 0x1

    :goto_8
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " I01: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x0

    aget v34, v2, v34

    const/16 v37, 0x1

    aget v37, v2, v37

    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    const/16 v34, 0x1

    :goto_9
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " I12: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x1

    aget v34, v2, v34

    const/16 v37, 0x2

    aget v37, v2, v37

    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_14

    const/16 v34, 0x1

    :goto_a
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " I23: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x2

    aget v34, v2, v34

    const/16 v37, 0x3

    aget v37, v2, v37

    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_15

    const/16 v34, 0x1

    :goto_b
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v34, "LetterGestureRecognition"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " sdelta20: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x3

    aget v36, v3, v36

    const/16 v37, 0x0

    aget v37, v3, v37

    sub-float v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I0: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x0

    aget v36, v2, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I1: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x1

    aget v36, v2, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I2: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x2

    aget v36, v2, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I3: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x3

    aget v36, v2, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v34, "LetterGestureRecognition"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " maxX1: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " maxX2: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " minX1: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " minX2: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " Y[0]: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x0

    aget v36, v3, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " Y[1]: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x1

    aget v36, v3, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " Y[2]: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x2

    aget v36, v3, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " Y[3]: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x3

    aget v36, v3, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v34, 0x3

    aget v34, v3, v34

    const/16 v35, 0x0

    aget v35, v3, v35

    sub-float v34, v34, v35

    const/high16 v35, 0x41200000    # 10.0f

    cmpl-float v34, v34, v35

    if-lez v34, :cond_16

    const/16 v34, 0x0

    aget v34, v2, v34

    const/16 v35, 0x1

    aget v35, v2, v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_16

    const/16 v34, 0x1

    aget v34, v2, v34

    const/16 v35, 0x2

    aget v35, v2, v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_16

    const/16 v34, 0x2

    aget v34, v2, v34

    const/16 v35, 0x3

    aget v35, v2, v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_16

    .line 481
    const/16 v22, 0x2

    .line 488
    const/16 v34, 0x2

    move/from16 v0, v22

    move/from16 v1, v34

    if-ne v0, v1, :cond_21

    .line 490
    const/4 v7, 0x0

    .line 491
    .local v7, "count1":I
    const/4 v8, 0x0

    .line 492
    .local v8, "count21":I
    const/4 v9, 0x0

    .line 493
    .local v9, "count22":I
    const/4 v10, 0x0

    .line 494
    .local v10, "count3":I
    const/16 v34, 0x0

    aget v12, v2, v34

    :goto_c
    const/16 v34, 0x1

    aget v34, v2, v34

    move/from16 v0, v34

    if-ge v12, v0, :cond_17

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, 0x1

    aget v35, v35, v36

    cmpl-float v34, v34, v35

    if-lez v34, :cond_d

    .line 498
    add-int/lit8 v7, v7, 0x1

    .line 494
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 468
    .end local v7    # "count1":I
    .end local v8    # "count21":I
    .end local v9    # "count22":I
    .end local v10    # "count3":I
    :cond_e
    const/16 v34, 0x0

    goto/16 :goto_4

    :cond_f
    const/16 v34, 0x0

    goto/16 :goto_5

    :cond_10
    const/16 v34, 0x0

    goto/16 :goto_6

    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_7

    :cond_12
    const/16 v34, 0x0

    goto/16 :goto_8

    :cond_13
    const/16 v34, 0x0

    goto/16 :goto_9

    :cond_14
    const/16 v34, 0x0

    goto/16 :goto_a

    :cond_15
    const/16 v34, 0x0

    goto/16 :goto_b

    .line 485
    :cond_16
    const-string v34, "LetterGestureRecognition"

    const-string v35, "sReturn: special point not right"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v34, v22

    .line 486
    goto/16 :goto_0

    .line 501
    .restart local v7    # "count1":I
    .restart local v8    # "count21":I
    .restart local v9    # "count22":I
    .restart local v10    # "count3":I
    :cond_17
    const/16 v34, 0x1

    aget v12, v2, v34

    :goto_d
    const/16 v34, 0x2

    aget v34, v2, v34

    move/from16 v0, v34

    if-ge v12, v0, :cond_1a

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, 0x1

    aget v35, v35, v36

    cmpg-float v34, v34, v35

    if-gez v34, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, 0x1

    aget v35, v35, v36

    cmpg-float v34, v34, v35

    if-gez v34, :cond_18

    .line 505
    add-int/lit8 v8, v8, 0x1

    .line 507
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, 0x1

    aget v35, v35, v36

    cmpg-float v34, v34, v35

    if-gez v34, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, 0x1

    aget v35, v35, v36

    cmpl-float v34, v34, v35

    if-lez v34, :cond_19

    .line 509
    add-int/lit8 v9, v9, 0x1

    .line 501
    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 512
    :cond_1a
    const/16 v34, 0x2

    aget v12, v2, v34

    :goto_e
    const/16 v34, 0x3

    aget v34, v2, v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    if-ge v12, v0, :cond_1c

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v12, 0x1

    aget v35, v35, v36

    cmpl-float v34, v34, v35

    if-lez v34, :cond_1b

    .line 516
    add-int/lit8 v10, v10, 0x1

    .line 512
    :cond_1b
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 519
    :cond_1c
    const-string v34, "LetterGestureRecognition"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " scount1: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " count21: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " count22: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " count3: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I0: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x0

    aget v36, v2, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I1: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x1

    aget v36, v2, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I2: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x2

    aget v36, v2, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I3: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x3

    aget v36, v2, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v34, "LetterGestureRecognition"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " I10: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x1

    aget v36, v2, v36

    const/16 v37, 0x0

    aget v37, v2, v37

    sub-int v36, v36, v37

    div-int/lit8 v36, v36, 0x4

    mul-int/lit8 v36, v36, 0x3

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I21: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x2

    aget v36, v2, v36

    const/16 v37, 0x1

    aget v37, v2, v37

    sub-int v36, v36, v37

    div-int/lit8 v36, v36, 0x4

    mul-int/lit8 v36, v36, 0x3

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " I32: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x3

    aget v36, v2, v36

    const/16 v37, 0x2

    aget v37, v2, v37

    sub-int v36, v36, v37

    div-int/lit8 v36, v36, 0x4

    mul-int/lit8 v36, v36, 0x3

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v35, "LetterGestureRecognition"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " I10: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    int-to-float v0, v7

    move/from16 v34, v0

    const/16 v37, 0x1

    aget v37, v2, v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    aget v38, v2, v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v37, v37, v38

    const/high16 v38, 0x40800000    # 4.0f

    div-float v37, v37, v38

    const/high16 v38, 0x40400000    # 3.0f

    mul-float v37, v37, v38

    cmpg-float v34, v34, v37

    if-gez v34, :cond_1e

    const/16 v34, 0x1

    :goto_f
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " I21: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    int-to-float v0, v8

    move/from16 v34, v0

    const/16 v37, 0x2

    aget v37, v2, v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x1

    aget v38, v2, v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v37, v37, v38

    const/high16 v38, 0x40800000    # 4.0f

    div-float v37, v37, v38

    const/high16 v38, 0x40400000    # 3.0f

    mul-float v37, v37, v38

    cmpg-float v34, v34, v37

    if-gez v34, :cond_1f

    int-to-float v0, v9

    move/from16 v34, v0

    const/16 v37, 0x2

    aget v37, v2, v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x1

    aget v38, v2, v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v37, v37, v38

    const/high16 v38, 0x40800000    # 4.0f

    div-float v37, v37, v38

    const/high16 v38, 0x40400000    # 3.0f

    mul-float v37, v37, v38

    cmpg-float v34, v34, v37

    if-gez v34, :cond_1f

    const/16 v34, 0x1

    :goto_10
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " I32: "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    int-to-float v0, v10

    move/from16 v34, v0

    const/16 v37, 0x3

    aget v37, v2, v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x2

    aget v38, v2, v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v37, v37, v38

    const/high16 v38, 0x40800000    # 4.0f

    div-float v37, v37, v38

    const/high16 v38, 0x40400000    # 3.0f

    mul-float v37, v37, v38

    cmpg-float v34, v34, v37

    if-gez v34, :cond_20

    const/16 v34, 0x1

    :goto_11
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    int-to-float v0, v7

    move/from16 v34, v0

    const/16 v35, 0x1

    aget v35, v2, v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    aget v36, v2, v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    const/high16 v36, 0x40800000    # 4.0f

    div-float v35, v35, v36

    const/high16 v36, 0x40400000    # 3.0f

    mul-float v35, v35, v36

    cmpg-float v34, v34, v35

    if-ltz v34, :cond_1d

    int-to-float v0, v10

    move/from16 v34, v0

    const/16 v35, 0x3

    aget v35, v2, v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x2

    aget v36, v2, v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    const/high16 v36, 0x40800000    # 4.0f

    div-float v35, v35, v36

    const/high16 v36, 0x40400000    # 3.0f

    mul-float v35, v35, v36

    cmpg-float v34, v34, v35

    if-ltz v34, :cond_1d

    int-to-float v0, v8

    move/from16 v34, v0

    const/16 v35, 0x2

    aget v35, v2, v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    aget v36, v2, v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    const/high16 v36, 0x40800000    # 4.0f

    div-float v35, v35, v36

    const/high16 v36, 0x40400000    # 3.0f

    mul-float v35, v35, v36

    cmpg-float v34, v34, v35

    if-gez v34, :cond_21

    int-to-float v0, v9

    move/from16 v34, v0

    const/16 v35, 0x2

    aget v35, v2, v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    aget v36, v2, v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    const/high16 v36, 0x40800000    # 4.0f

    div-float v35, v35, v36

    const/high16 v36, 0x40400000    # 3.0f

    mul-float v35, v35, v36

    cmpg-float v34, v34, v35

    if-gez v34, :cond_21

    .line 527
    :cond_1d
    const-string v34, "LetterGestureRecognition"

    const-string v35, "sReturn: gesture maybe others"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 522
    :cond_1e
    const/16 v34, 0x0

    goto/16 :goto_f

    :cond_1f
    const/16 v34, 0x0

    goto/16 :goto_10

    :cond_20
    const/16 v34, 0x0

    goto/16 :goto_11

    .end local v7    # "count1":I
    .end local v8    # "count21":I
    .end local v9    # "count22":I
    .end local v10    # "count3":I
    :cond_21
    move/from16 v34, v22

    .line 531
    goto/16 :goto_0
.end method

.method public traceLength()F
    .locals 8

    .prologue
    .line 818
    const/4 v2, 0x0

    .line 819
    .local v2, "num":I
    const/4 v1, 0x0

    .line 820
    .local v1, "length":F
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v2

    .line 821
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 823
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    aget v5, v5, v0

    iget-object v6, p0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    add-float/2addr v1, v3

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_0
    return v1
.end method

.method public vRecognition()I
    .locals 37

    .prologue
    .line 116
    const/16 v18, 0x0

    .line 117
    .local v18, "num":I
    const/16 v23, 0x0

    .line 118
    .local v23, "result":I
    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v2, v0, [I

    .line 119
    .local v2, "I":[I
    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v3, v0, [F

    .line 120
    .local v3, "X":[F
    const/4 v12, 0x0

    .line 121
    .local v12, "k1":F
    const/4 v5, 0x0

    .line 122
    .local v5, "b1":F
    const/16 v30, 0x0

    .line 123
    .local v30, "y1":F
    const/4 v13, 0x0

    .line 124
    .local v13, "k2":F
    const/4 v6, 0x0

    .line 125
    .local v6, "b2":F
    const/16 v31, 0x0

    .line 126
    .local v31, "y2":F
    const/16 v16, 0x0

    .line 127
    .local v16, "minY1":F
    const/16 v17, 0x0

    .line 128
    .local v17, "minY2":F
    const/4 v15, 0x0

    .line 129
    .local v15, "maxY1":F
    const/4 v14, 0x0

    .line 130
    .local v14, "length":F
    const/16 v27, 0x0

    .line 131
    .local v27, "subLength":F
    const/16 v28, 0x0

    .line 132
    .local v28, "subLength1":F
    const/16 v29, 0x0

    .line 133
    .local v29, "subLength2":F
    const/4 v9, 0x0

    .line 134
    .local v9, "distance":F
    const/4 v4, 0x0

    .line 135
    .local v4, "abstLength":F
    const/16 v24, 0x1

    .line 136
    .local v24, "state1":Z
    const/16 v25, 0x1

    .line 137
    .local v25, "state2":Z
    const/16 v26, 0x1

    .line 138
    .local v26, "state3":Z
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataSize()I

    move-result v18

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->traceLength()F

    move-result v14

    .line 140
    const/16 v32, 0xa

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 142
    const/16 v32, 0x0

    .line 311
    :goto_0
    return v32

    .line 144
    :cond_0
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, -0x1

    aget v33, v33, v34

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v10, -0x1

    aget v34, v34, v35

    sub-float v33, v33, v34

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v10, -0x1

    aget v34, v34, v35

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    aget v34, v34, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v10, -0x1

    aget v35, v35, v36

    sub-float v34, v34, v35

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v28, v28, v32

    .line 147
    const/high16 v32, 0x41200000    # 10.0f

    div-float v32, v14, v32

    cmpg-float v32, v28, v32

    if-gez v32, :cond_3

    .line 149
    const/16 v29, 0x0

    .line 150
    add-int/lit8 v11, v18, -0x1

    .local v11, "j":I
    :goto_2
    if-lez v11, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v32, v0

    aget v32, v32, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    add-int/lit8 v34, v11, -0x1

    aget v33, v33, v34

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    aget v33, v33, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v11, -0x1

    aget v34, v34, v35

    sub-float v33, v33, v34

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v33, v0

    aget v33, v33, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v11, -0x1

    aget v34, v34, v35

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    aget v34, v34, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v11, -0x1

    aget v35, v35, v36

    sub-float v34, v34, v35

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v29, v29, v32

    .line 153
    const/high16 v32, 0x41200000    # 10.0f

    div-float v32, v14, v32

    cmpg-float v32, v29, v32

    if-gez v32, :cond_2

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    aget v33, v33, v11

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    aget v34, v34, v11

    sub-float v33, v33, v34

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    aget v34, v34, v11

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    aget v34, v34, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    aget v35, v35, v11

    sub-float v34, v34, v35

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v9, v0

    .line 156
    const/high16 v32, 0x41700000    # 15.0f

    cmpg-float v32, v9, v32

    if-gez v32, :cond_1

    .line 158
    const-string v32, "LetterGestureRecognition"

    const-string v33, "vReturn: too close"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v23

    .line 159
    goto/16 :goto_0

    .line 150
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    .line 144
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 174
    .end local v11    # "j":I
    :cond_3
    const/4 v10, 0x1

    :goto_3
    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, -0x1

    aget v33, v33, v34

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v10, -0x1

    aget v34, v34, v35

    sub-float v33, v33, v34

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v10, -0x1

    aget v34, v34, v35

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v34, v0

    aget v34, v34, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v35, v0

    add-int/lit8 v36, v10, -0x1

    aget v35, v35, v36

    sub-float v34, v34, v35

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v27, v27, v32

    .line 177
    const/16 v32, 0x0

    cmpl-float v32, v27, v32

    if-ltz v32, :cond_5

    const/high16 v32, 0x41000000    # 8.0f

    div-float v32, v14, v32

    cmpg-float v32, v27, v32

    if-gtz v32, :cond_5

    .line 179
    if-eqz v24, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v10, -0x1

    aget v16, v32, v33

    .line 182
    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, -0x1

    aget v33, v33, v34

    aput v33, v3, v32

    .line 183
    const/16 v32, 0x0

    add-int/lit8 v33, v10, -0x1

    aput v33, v2, v32

    .line 184
    const/16 v24, 0x0

    .line 186
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    cmpg-float v32, v32, v16

    if-gez v32, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    aget v16, v32, v10

    .line 189
    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    aput v33, v3, v32

    .line 190
    const/16 v32, 0x0

    aput v10, v2, v32

    .line 193
    :cond_5
    const/high16 v32, 0x41000000    # 8.0f

    div-float v32, v14, v32

    cmpl-float v32, v27, v32

    if-lez v32, :cond_7

    const/high16 v32, 0x41000000    # 8.0f

    div-float v32, v14, v32

    const/high16 v33, 0x40e00000    # 7.0f

    mul-float v32, v32, v33

    cmpg-float v32, v27, v32

    if-gez v32, :cond_7

    .line 195
    if-eqz v25, :cond_6

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v10, -0x1

    aget v15, v32, v33

    .line 198
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, -0x1

    aget v33, v33, v34

    aput v33, v3, v32

    .line 199
    const/16 v32, 0x1

    add-int/lit8 v33, v10, -0x1

    aput v33, v2, v32

    .line 200
    const/16 v25, 0x0

    .line 202
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    cmpl-float v32, v32, v15

    if-lez v32, :cond_7

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    aget v15, v32, v10

    .line 205
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    aput v33, v3, v32

    .line 206
    const/16 v32, 0x1

    aput v10, v2, v32

    .line 217
    :cond_7
    const/high16 v32, 0x41000000    # 8.0f

    div-float v32, v14, v32

    const/high16 v33, 0x40e00000    # 7.0f

    mul-float v32, v32, v33

    cmpl-float v32, v27, v32

    if-ltz v32, :cond_9

    cmpg-float v32, v27, v14

    if-gtz v32, :cond_9

    .line 219
    if-eqz v26, :cond_8

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v10, -0x1

    aget v17, v32, v33

    .line 222
    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, -0x1

    aget v33, v33, v34

    aput v33, v3, v32

    .line 223
    const/16 v32, 0x2

    add-int/lit8 v33, v10, -0x1

    aput v33, v2, v32

    .line 224
    const/16 v26, 0x0

    .line 226
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    cmpg-float v32, v32, v17

    if-gez v32, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    aget v17, v32, v10

    .line 229
    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    aput v33, v3, v32

    .line 230
    const/16 v32, 0x2

    aput v10, v2, v32

    .line 174
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 234
    :cond_a
    sub-float v32, v15, v16

    const/16 v33, 0x1

    aget v33, v3, v33

    const/16 v34, 0x0

    aget v34, v3, v34

    sub-float v33, v33, v34

    div-float v12, v32, v33

    .line 235
    const/16 v32, 0x0

    aget v32, v3, v32

    mul-float v32, v32, v15

    const/16 v33, 0x1

    aget v33, v3, v33

    mul-float v33, v33, v16

    sub-float v32, v32, v33

    const/16 v33, 0x0

    aget v33, v3, v33

    const/16 v34, 0x1

    aget v34, v3, v34

    sub-float v33, v33, v34

    div-float v5, v32, v33

    .line 236
    sub-float v32, v17, v15

    const/16 v33, 0x2

    aget v33, v3, v33

    const/16 v34, 0x1

    aget v34, v3, v34

    sub-float v33, v33, v34

    div-float v13, v32, v33

    .line 237
    const/16 v32, 0x1

    aget v32, v3, v32

    mul-float v32, v32, v17

    const/16 v33, 0x2

    aget v33, v3, v33

    mul-float v33, v33, v15

    sub-float v32, v32, v33

    const/16 v33, 0x1

    aget v33, v3, v33

    const/16 v34, 0x2

    aget v34, v3, v34

    sub-float v33, v33, v34

    div-float v6, v32, v33

    .line 238
    const/16 v32, 0x2

    aget v32, v3, v32

    mul-float v32, v32, v12

    add-float v30, v32, v5

    .line 239
    const/16 v32, 0x0

    aget v32, v3, v32

    mul-float v32, v32, v13

    add-float v31, v32, v6

    .line 240
    const-string v33, "LetterGestureRecognition"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " vdelta11: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-float v32, v15, v16

    const v35, 0x41855555

    cmpl-float v32, v32, v35

    if-lez v32, :cond_c

    const/16 v32, 0x1

    :goto_4
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " vdelta12: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-float v32, v15, v17

    const v35, 0x41855555

    cmpl-float v32, v32, v35

    if-lez v32, :cond_d

    const/16 v32, 0x1

    :goto_5
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " vdelta21: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-float v32, v17, v16

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const v35, 0x42055555

    cmpg-float v32, v32, v35

    if-gez v32, :cond_e

    const/16 v32, 0x1

    :goto_6
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " y1: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    mul-float v32, v12, v30

    mul-float v35, v12, v17

    cmpl-float v32, v32, v35

    if-lez v32, :cond_f

    const/16 v32, 0x1

    :goto_7
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " y2: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    mul-float v32, v13, v31

    mul-float v35, v13, v16

    cmpg-float v32, v32, v35

    if-gez v32, :cond_10

    const/16 v32, 0x1

    :goto_8
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " I01: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v32, 0x0

    aget v32, v2, v32

    const/16 v35, 0x1

    aget v35, v2, v35

    move/from16 v0, v32

    move/from16 v1, v35

    if-ge v0, v1, :cond_11

    const/16 v32, 0x1

    :goto_9
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " I12: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v32, 0x1

    aget v32, v2, v32

    const/16 v35, 0x2

    aget v35, v2, v35

    move/from16 v0, v32

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    const/16 v32, 0x1

    :goto_a
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v32, "LetterGestureRecognition"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " vdelta11: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-float v34, v15, v16

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " vdelta12: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-float v34, v15, v17

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " vdelta21: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-float v34, v17, v16

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " I0: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget v34, v2, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " I1: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x1

    aget v34, v2, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " I2: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x2

    aget v34, v2, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v32, "LetterGestureRecognition"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " minY1: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " minY2: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " maxY1: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " X[0]: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget v34, v3, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " X[1]: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x1

    aget v34, v3, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " X[2]: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x2

    aget v34, v3, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sub-float v32, v15, v16

    const v33, 0x41855555

    cmpl-float v32, v32, v33

    if-lez v32, :cond_13

    sub-float v32, v15, v17

    const v33, 0x41855555

    cmpl-float v32, v32, v33

    if-lez v32, :cond_13

    sub-float v32, v17, v16

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const v33, 0x42055555

    cmpg-float v32, v32, v33

    if-gez v32, :cond_13

    mul-float v32, v12, v30

    mul-float v33, v12, v17

    cmpl-float v32, v32, v33

    if-lez v32, :cond_13

    mul-float v32, v13, v31

    mul-float v33, v13, v16

    cmpg-float v32, v32, v33

    if-gez v32, :cond_13

    const/16 v32, 0x0

    aget v32, v2, v32

    const/16 v33, 0x1

    aget v33, v2, v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_13

    const/16 v32, 0x1

    aget v32, v2, v32

    const/16 v33, 0x2

    aget v33, v2, v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_13

    .line 255
    const/16 v23, 0x1

    .line 262
    const/16 v32, 0x1

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 264
    const/4 v7, 0x0

    .line 265
    .local v7, "count1":I
    const/4 v8, 0x0

    .line 266
    .local v8, "count2":I
    const/16 v19, 0x0

    .line 267
    .local v19, "num11":I
    const/16 v20, 0x0

    .line 268
    .local v20, "num12":I
    const/16 v21, 0x0

    .line 269
    .local v21, "num21":I
    const/16 v22, 0x0

    .line 270
    .local v22, "num22":I
    const/16 v32, 0x0

    aget v10, v2, v32

    :goto_b
    const/16 v32, 0x1

    aget v32, v2, v32

    move/from16 v0, v32

    if-ge v10, v0, :cond_15

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, 0x1

    aget v33, v33, v34

    cmpg-float v32, v32, v33

    if-gez v32, :cond_b

    .line 274
    add-int/lit8 v7, v7, 0x1

    .line 276
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    mul-float v32, v32, v12

    add-float v32, v32, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    cmpl-float v32, v32, v33

    if-lez v32, :cond_14

    .line 278
    add-int/lit8 v19, v19, 0x1

    .line 270
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 240
    .end local v7    # "count1":I
    .end local v8    # "count2":I
    .end local v19    # "num11":I
    .end local v20    # "num12":I
    .end local v21    # "num21":I
    .end local v22    # "num22":I
    :cond_c
    const/16 v32, 0x0

    goto/16 :goto_4

    :cond_d
    const/16 v32, 0x0

    goto/16 :goto_5

    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_6

    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_7

    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_8

    :cond_11
    const/16 v32, 0x0

    goto/16 :goto_9

    :cond_12
    const/16 v32, 0x0

    goto/16 :goto_a

    .line 259
    :cond_13
    const-string v32, "LetterGestureRecognition"

    const-string v33, "vReturn: special point not right"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v23

    .line 260
    goto/16 :goto_0

    .line 282
    .restart local v7    # "count1":I
    .restart local v8    # "count2":I
    .restart local v19    # "num11":I
    .restart local v20    # "num12":I
    .restart local v21    # "num21":I
    .restart local v22    # "num22":I
    :cond_14
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 285
    :cond_15
    const/16 v32, 0x1

    aget v10, v2, v32

    :goto_d
    const/16 v32, 0x2

    aget v32, v2, v32

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v32

    if-ge v10, v0, :cond_18

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v33, v0

    add-int/lit8 v34, v10, 0x1

    aget v33, v33, v34

    cmpl-float v32, v32, v33

    if-lez v32, :cond_16

    .line 289
    add-int/lit8 v8, v8, 0x1

    .line 291
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataX:[F

    move-object/from16 v32, v0

    aget v32, v32, v10

    mul-float v32, v32, v13

    add-float v32, v32, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->dataY:[F

    move-object/from16 v33, v0

    aget v33, v33, v10

    cmpl-float v32, v32, v33

    if-lez v32, :cond_17

    .line 293
    add-int/lit8 v21, v21, 0x1

    .line 285
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 297
    :cond_17
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 300
    :cond_18
    const-string v32, "LetterGestureRecognition"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " vcount1: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " count2: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " I0: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget v34, v2, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " I1: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x1

    aget v34, v2, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " I2: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x2

    aget v34, v2, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v32, "LetterGestureRecognition"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " I10: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x1

    aget v34, v2, v34

    const/16 v35, 0x0

    aget v35, v2, v35

    sub-int v34, v34, v35

    div-int/lit8 v34, v34, 0x5

    mul-int/lit8 v34, v34, 0x4

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " I21: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x2

    aget v34, v2, v34

    const/16 v35, 0x1

    aget v35, v2, v35

    sub-int v34, v34, v35

    div-int/lit8 v34, v34, 0x5

    mul-int/lit8 v34, v34, 0x4

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v33, "LetterGestureRecognition"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " I10: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v32, 0x1

    aget v32, v2, v32

    const/16 v35, 0x0

    aget v35, v2, v35

    sub-int v32, v32, v35

    div-int/lit8 v32, v32, 0x4

    mul-int/lit8 v32, v32, 0x3

    move/from16 v0, v32

    if-ge v7, v0, :cond_1a

    const/16 v32, 0x1

    :goto_f
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " I21: "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v32, 0x2

    aget v32, v2, v32

    const/16 v35, 0x1

    aget v35, v2, v35

    sub-int v32, v32, v35

    div-int/lit8 v32, v32, 0x4

    mul-int/lit8 v32, v32, 0x3

    move/from16 v0, v32

    if-ge v8, v0, :cond_1b

    const/16 v32, 0x1

    :goto_10
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    int-to-float v0, v7

    move/from16 v32, v0

    const/16 v33, 0x1

    aget v33, v2, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v34, 0x0

    aget v34, v2, v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v33, v33, v34

    const/high16 v34, 0x40800000    # 4.0f

    div-float v33, v33, v34

    const/high16 v34, 0x40400000    # 3.0f

    mul-float v33, v33, v34

    cmpg-float v32, v32, v33

    if-ltz v32, :cond_19

    int-to-float v0, v8

    move/from16 v32, v0

    const/16 v33, 0x2

    aget v33, v2, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v34, 0x1

    aget v34, v2, v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v33, v33, v34

    const/high16 v34, 0x40800000    # 4.0f

    div-float v33, v33, v34

    const/high16 v34, 0x40400000    # 3.0f

    mul-float v33, v33, v34

    cmpg-float v32, v32, v33

    if-gez v32, :cond_1c

    .line 307
    :cond_19
    const-string v32, "LetterGestureRecognition"

    const-string v33, "vReturn: gesture maybe others"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 303
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_f

    :cond_1b
    const/16 v32, 0x0

    goto :goto_10

    .end local v7    # "count1":I
    .end local v8    # "count2":I
    .end local v19    # "num11":I
    .end local v20    # "num12":I
    .end local v21    # "num21":I
    .end local v22    # "num22":I
    :cond_1c
    move/from16 v32, v23

    .line 311
    goto/16 :goto_0
.end method
