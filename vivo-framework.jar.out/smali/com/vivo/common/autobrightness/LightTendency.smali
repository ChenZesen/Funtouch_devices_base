.class public Lcom/vivo/common/autobrightness/LightTendency;
.super Ljava/lang/Object;
.source "LightTendency.java"


# static fields
.field private static final DIFF_THRESHOLD:D = 1.0

.field private static final TAG:Ljava/lang/String; = "LightTendency"


# instance fields
.field private mCurrentLogSum:D

.field private mCurrentLogSumDiff:D

.field private mDiffThreshold:D

.field private mLogBuffer:[D

.field private mLogBufferCount:I

.field private mLogBufferLen:I

.field private mLogCursor:I

.field private mPrevLogSum:D

.field private mPrevLogSumDiff:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    .line 30
    iput v1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    .line 31
    iput v1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    .line 32
    iget v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBuffer:[D

    .line 33
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    .line 34
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    .line 35
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSumDiff:D

    .line 36
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    .line 37
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mDiffThreshold:D

    .line 38
    return-void
.end method

.method public constructor <init>(D)V
    .locals 5
    .param p1, "threshold"    # D

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    .line 41
    iput v1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    .line 42
    iput v1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    .line 43
    iget v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBuffer:[D

    .line 44
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    .line 45
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    .line 46
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSumDiff:D

    .line 47
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    .line 48
    iput-wide p1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mDiffThreshold:D

    .line 49
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 4
    .param p1, "len"    # I
    .param p2, "threshold"    # D

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    .line 52
    iput v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    .line 53
    iput v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    .line 54
    iget v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBuffer:[D

    .line 55
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    .line 56
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    .line 57
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSumDiff:D

    .line 58
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    .line 59
    iput-wide p2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mDiffThreshold:D

    .line 60
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 8

    .prologue
    .line 70
    const-string v2, "{"

    .line 71
    .local v2, "temp":Ljava/lang/String;
    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    iget v4, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    if-ge v3, v4, :cond_0

    iget v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    .line 72
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBuffer:[D

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    const-string v3, ","

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    goto :goto_0

    .line 73
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    const-string v3, ""

    goto :goto_2

    .line 75
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "LightTendency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cursor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prevSum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currSum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prevDiff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSumDiff:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currDiff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " buffer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public dumpDiff()V
    .locals 4

    .prologue
    .line 82
    const-string v0, "LightTendency"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prevDiff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSumDiff:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currDiff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public isTendencyTriggered()Z
    .locals 4

    .prologue
    .line 129
    iget v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    iget v1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSumDiff:D

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mDiffThreshold:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mDiffThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putLog(D)V
    .locals 7
    .param p1, "log"    # D

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    .line 92
    .local v0, "popLog":D
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_1

    .line 93
    const-string v2, "LightTendency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalide log value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    add-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_2

    .line 98
    iget v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    .line 101
    :cond_2
    iget v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 102
    const/4 v2, 0x0

    iput v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    .line 105
    :cond_3
    iget v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    if-le v2, v3, :cond_4

    .line 106
    iget-object v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBuffer:[D

    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    aget-wide v0, v2, v3

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBuffer:[D

    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    aput-wide p1, v2, v3

    .line 109
    iget v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    .line 112
    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    .line 113
    iget v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    if-le v2, v3, :cond_5

    .line 114
    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    sub-double/2addr v2, v0

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    .line 122
    :goto_1
    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSumDiff:D

    .line 123
    iget v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    iget v3, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    if-le v2, v3, :cond_0

    .line 124
    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    goto :goto_0

    .line 117
    :cond_5
    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    goto :goto_1
.end method

.method public putLux(I)V
    .locals 2
    .param p1, "lux"    # I

    .prologue
    .line 85
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    int-to-double v0, p1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/autobrightness/LightTendency;->putLog(D)V

    .line 86
    return-void

    .line 85
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 62
    iput v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    .line 63
    iput v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogCursor:I

    .line 64
    iput-wide v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSum:D

    .line 65
    iput-wide v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSum:D

    .line 66
    iput-wide v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mPrevLogSumDiff:D

    .line 67
    iput-wide v0, p0, Lcom/vivo/common/autobrightness/LightTendency;->mCurrentLogSumDiff:D

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLogBufferLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mLogBufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LightTendency;->mLogBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mDiffThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/LightTendency;->mDiffThreshold:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
