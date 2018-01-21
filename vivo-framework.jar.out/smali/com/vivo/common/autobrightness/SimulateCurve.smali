.class public Lcom/vivo/common/autobrightness/SimulateCurve;
.super Ljava/lang/Object;
.source "SimulateCurve.java"


# static fields
.field private static final DEFAULT_END:I = 0xff

.field private static final DEFAULT_POWER:I = 0x28

.field private static final DEFAULT_START:I = 0x14

.field private static final LCM_GAMMA_2POINT2:I = 0x16

.field private static final LCM_GAMMA_4:I = 0x28

.field private static final TAG:Ljava/lang/String; = "SimulateCurve"


# instance fields
.field private final mActualCurve:[D

.field private final mEndX:I

.field private final mPower:D

.field private final mStartX:I

.field private final mYmax:D

.field private final mYmin:D


# direct methods
.method public constructor <init>([DDD)V
    .locals 10
    .param p1, "actual"    # [D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 53
    const/16 v2, 0x14

    const/16 v3, 0xff

    const/16 v8, 0x28

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/vivo/common/autobrightness/SimulateCurve;-><init>([DIIDDI)V

    .line 54
    return-void
.end method

.method public constructor <init>([DIIDDI)V
    .locals 2
    .param p1, "actual"    # [D
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "min"    # D
    .param p6, "max"    # D
    .param p8, "power"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mActualCurve:[D

    .line 29
    iput p2, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    .line 30
    iput p3, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mEndX:I

    .line 31
    iput-wide p4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmin:D

    .line 32
    iput-wide p6, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmax:D

    .line 33
    const-string v0, "persist.simcurve.power"

    invoke-static {v0, p8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p8

    .line 34
    int-to-float v0, p8

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mPower:D

    .line 35
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/SimulateCurve;->dump()V

    .line 36
    return-void
.end method

.method private dump()V
    .locals 8

    .prologue
    .line 43
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "SimulateCurve"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStartX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEndX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mEndX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mYmin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmin:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mYmax="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmax:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPower="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mPower:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mActualCurve:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    const-string v1, "SimulateCurve"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump X="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tactY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mActualCurve:[D

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tsimX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tsimY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    add-int/2addr v3, v0

    int-to-double v4, v3

    const-wide/16 v6, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/vivo/common/autobrightness/SimulateCurve;->getSimYBySimX(DD)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getActualYByActualX(I)D
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/SimulateCurve;->isXValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mActualCurve:[D

    iget v1, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    sub-int v1, p1, v1

    aget-wide v0, v0, v1

    .line 59
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method private getSimXByActualY(D)I
    .locals 9
    .param p1, "y"    # D

    .prologue
    .line 62
    iget-wide v2, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmin:D

    sub-double v2, p1, v2

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmax:D

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmin:D

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mPower:D

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mEndX:I

    iget v5, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    int-to-double v4, v4

    add-double v0, v2, v4

    .line 63
    .local v0, "x":D
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method private getSimYBySimX(DD)D
    .locals 9
    .param p1, "x"    # D
    .param p3, "step"    # D

    .prologue
    .line 68
    add-double v2, p1, p3

    iget v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mEndX:I

    iget v5, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mPower:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmax:D

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmin:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mYmin:D

    add-double v0, v2, v4

    .line 69
    .local v0, "y":D
    return-wide v0
.end method

.method private isXValid(I)Z
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 85
    iget v0, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mStartX:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/vivo/common/autobrightness/SimulateCurve;->mEndX:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "SimulateCurve"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public getNextX(IIII)I
    .locals 16
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "current"    # I
    .param p4, "step"    # I

    .prologue
    .line 88
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    const/4 v7, 0x1

    .line 89
    .local v7, "up":Z
    :goto_0
    if-eqz v7, :cond_3

    const/4 v4, 0x1

    .line 90
    .local v4, "flag":I
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getNextX from="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " current="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " step="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/vivo/common/autobrightness/SimulateCurve;->log(Ljava/lang/String;)V

    .line 92
    invoke-direct/range {p0 .. p1}, Lcom/vivo/common/autobrightness/SimulateCurve;->isXValid(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/SimulateCurve;->isXValid(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/SimulateCurve;->isXValid(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 93
    :cond_0
    const-string v11, "SimulateCurve"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid from="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " or to="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " or current="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, p2

    .line 134
    :cond_1
    :goto_2
    return v10

    .line 88
    .end local v4    # "flag":I
    .end local v7    # "up":Z
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 89
    .restart local v7    # "up":Z
    :cond_3
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 98
    .restart local v4    # "flag":I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/SimulateCurve;->getActualYByActualX(I)D

    move-result-wide v2

    .line 99
    .local v2, "actY":D
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "actY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/vivo/common/autobrightness/SimulateCurve;->log(Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/vivo/common/autobrightness/SimulateCurve;->getSimXByActualY(D)I

    move-result v6

    .line 103
    .local v6, "simX":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/vivo/common/autobrightness/SimulateCurve;->log(Ljava/lang/String;)V

    .line 106
    int-to-double v12, v6

    mul-int v11, p4, v4

    int-to-double v14, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/vivo/common/autobrightness/SimulateCurve;->getSimYBySimX(DD)D

    move-result-wide v8

    .line 109
    .local v8, "simY":D
    const/4 v10, -0x1

    .line 111
    .local v10, "x":I
    move/from16 v5, p1

    .local v5, "i":I
    :goto_3
    if-eqz v7, :cond_6

    move/from16 v0, p2

    if-ge v5, v0, :cond_5

    .line 112
    :goto_4
    if-eqz v7, :cond_7

    .line 113
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "for loop, up,i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/vivo/common/autobrightness/SimulateCurve;->log(Ljava/lang/String;)V

    .line 114
    add-int v11, v5, v4

    move/from16 v0, p2

    if-gt v11, v0, :cond_8

    .line 115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/common/autobrightness/SimulateCurve;->mActualCurve:[D

    add-int/lit8 v12, v5, -0x14

    aget-wide v12, v11, v12

    cmpl-double v11, v8, v12

    if-ltz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/common/autobrightness/SimulateCurve;->mActualCurve:[D

    add-int/lit8 v12, v5, -0x14

    add-int/2addr v12, v4

    aget-wide v12, v11, v12

    cmpg-double v11, v8, v12

    if-gez v11, :cond_8

    .line 116
    move v10, v5

    .line 131
    :cond_5
    :goto_5
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 132
    move/from16 v10, p2

    goto/16 :goto_2

    .line 111
    :cond_6
    move/from16 v0, p2

    if-le v5, v0, :cond_5

    goto :goto_4

    .line 121
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "for loop, down,i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/vivo/common/autobrightness/SimulateCurve;->log(Ljava/lang/String;)V

    .line 122
    add-int v11, v5, v4

    move/from16 v0, p2

    if-lt v11, v0, :cond_8

    .line 123
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/common/autobrightness/SimulateCurve;->mActualCurve:[D

    add-int/lit8 v12, v5, -0x14

    aget-wide v12, v11, v12

    cmpg-double v11, v8, v12

    if-gtz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/common/autobrightness/SimulateCurve;->mActualCurve:[D

    add-int/lit8 v12, v5, -0x14

    add-int/2addr v12, v4

    aget-wide v12, v11, v12

    cmpl-double v11, v8, v12

    if-lez v11, :cond_8

    .line 124
    move v10, v5

    .line 125
    goto :goto_5

    .line 111
    :cond_8
    add-int/2addr v5, v4

    goto/16 :goto_3
.end method
