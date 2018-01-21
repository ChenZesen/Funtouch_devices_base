.class Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
.super Ljava/lang/Object;
.source "NitzTimeUpdatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NitzTimeInfo"
.end annotation


# instance fields
.field public mIsCdma:Z

.field public mSavedAtTime:J

.field public mSavedTime:J

.field public mSavedTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTimeZone:Ljava/lang/String;

    .line 380
    iput-wide v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTime:J

    .line 381
    iput-wide v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedAtTime:J

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mIsCdma:Z

    .line 383
    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 386
    iget-wide v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedAtTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 387
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 389
    :cond_0
    return-wide v0
.end method

.method public getPriority()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 393
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedAtTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 394
    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    .line 396
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mIsCdma:Z

    if-eqz v0, :cond_2

    .line 397
    const/4 v0, 0x2

    goto :goto_0

    .line 399
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedTimeZone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsCdma:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mIsCdma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
