.class public Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;
.super Ljava/lang/Object;
.source "MotionAnalysisTraceData.java"


# instance fields
.field public curAcc:[F

.field public curAccTimeStamp:J

.field public curSpeed:[F

.field public lasAcc:[F

.field public lasAccTimeStamp:J

.field public lasSpeed:[F

.field public final mBufferCount:I

.field public mRotationMatrix:[F

.field public mTraceCount:I

.field public mTraceX:[F

.field public mTraceY:[F

.field public mTraceZ:[F

.field public yTraceX:[F

.field public yTraceY:[F

.field public zTraceX:[F

.field public zTraceY:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/16 v1, 0x258

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->curSpeed:[F

    .line 24
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->lasSpeed:[F

    .line 26
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->curAcc:[F

    .line 27
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->lasAcc:[F

    .line 32
    iput v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mBufferCount:I

    .line 34
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceX:[F

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceY:[F

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceZ:[F

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mRotationMatrix:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->yTraceX:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->yTraceY:[F

    .line 43
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->zTraceX:[F

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->zTraceY:[F

    .line 47
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->clearTrace()V

    .line 48
    return-void
.end method


# virtual methods
.method public clearTrace()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->curSpeed:[F

    aput v2, v1, v0

    .line 54
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->lasSpeed:[F

    aput v2, v1, v0

    .line 56
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->curAcc:[F

    aput v2, v1, v0

    .line 57
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->lasAcc:[F

    aput v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceX:[F

    aput v2, v1, v0

    .line 62
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceY:[F

    aput v2, v1, v0

    .line 64
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->yTraceX:[F

    aput v2, v1, v0

    .line 65
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->yTraceY:[F

    aput v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    iput-wide v4, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->curAccTimeStamp:J

    .line 70
    iput-wide v4, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->lasAccTimeStamp:J

    .line 72
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceX:[F

    aput v2, v1, v3

    .line 73
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceY:[F

    aput v2, v1, v3

    .line 74
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceZ:[F

    aput v2, v1, v3

    .line 75
    const/4 v1, 0x1

    iput v1, p0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;->mTraceCount:I

    .line 77
    return-void
.end method
