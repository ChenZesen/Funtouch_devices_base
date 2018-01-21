.class public Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;
.super Ljava/lang/Object;
.source "AutobrightInfoStatistics.java"


# static fields
.field private static final DEFAULT_INFO_BUFFER_LEN:I

.field private static final TAG:Ljava/lang/String; = "AutobrightInfoStatistics"


# instance fields
.field mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/common/autobrightness/RoundQueue",
            "<",
            "Lcom/vivo/common/autobrightness/AutobrightInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraLevelAverage:D

.field public mCameraLevelMax:I

.field public mCameraLevelMedian:I

.field public mCameraLevelMin:I

.field public mCameraLevelStdDev:D

.field mCameraLevels:[I

.field private mInfoCount:I

.field public mLightLevelAverage:D

.field public mLightLevelMax:I

.field public mLightLevelMedian:I

.field public mLightLevelMin:I

.field public mLightLevelStdDev:D

.field mLightLevls:[I

.field public mLightLuxAverage:D

.field public mLightLuxMax:I

.field public mLightLuxMedian:I

.field public mLightLuxMin:I

.field public mLightLuxOverAverageCount:I

.field public mLightLuxStdDev:D

.field mLightLuxs:[I

.field private mLock:Ljava/lang/Object;

.field public mScreenLevelAverage:D

.field public mScreenLevelMax:I

.field public mScreenLevelMedian:I

.field public mScreenLevelMin:I

.field public mScreenLevelStdDev:D

.field mScreenLevels:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "persist.dbg.info_buffer_len"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->DEFAULT_INFO_BUFFER_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLock:Ljava/lang/Object;

    .line 17
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    .line 19
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLevelMin:I

    .line 20
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLevelMax:I

    .line 21
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLevelMedian:I

    .line 22
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLevelAverage:D

    .line 23
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLevelStdDev:D

    .line 25
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMin:I

    .line 26
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMax:I

    .line 27
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMedian:I

    .line 28
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    .line 29
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    .line 30
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxOverAverageCount:I

    .line 33
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mCameraLevelMin:I

    .line 34
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mCameraLevelMax:I

    .line 35
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mCameraLevelMedian:I

    .line 36
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mCameraLevelAverage:D

    .line 37
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mCameraLevelStdDev:D

    .line 39
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mScreenLevelMin:I

    .line 40
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mScreenLevelMax:I

    .line 41
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mScreenLevelMedian:I

    .line 42
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mScreenLevelAverage:D

    .line 43
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mScreenLevelStdDev:D

    .line 46
    sget v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->DEFAULT_INFO_BUFFER_LEN:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLevls:[I

    .line 47
    sget v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->DEFAULT_INFO_BUFFER_LEN:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mScreenLevels:[I

    .line 48
    sget v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->DEFAULT_INFO_BUFFER_LEN:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    .line 49
    sget v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->DEFAULT_INFO_BUFFER_LEN:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mCameraLevels:[I

    .line 55
    new-instance v0, Lcom/vivo/common/autobrightness/RoundQueue;

    const-string v1, "AutobrightInfoStatistics"

    sget v2, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->DEFAULT_INFO_BUFFER_LEN:I

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/autobrightness/RoundQueue;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    .line 56
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "AutobrightInfoStatistics"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method private updateAddedInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v0, "add a null info."

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->log(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updated info: mLightLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLightLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mScreenLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCameraLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRemovedInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string v0, "removed a null info."

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->log(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed info: mLightLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLightLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mScreenLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCameraLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addInfoToQueue(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/RoundQueue;->addToQueue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/autobrightness/AutobrightInfo;

    .line 67
    .local v0, "popInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->updateRemovedInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->updateAddedInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 69
    monitor-exit v2

    .line 70
    return-void

    .line 69
    .end local v0    # "popInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump()V
    .locals 4

    .prologue
    .line 172
    const-string v0, ""

    .line 173
    .local v0, "all":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLightLuxMin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightLuxMax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightLuxMedian="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMedian:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightLuxAverage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightLuxStdDev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v1, "AutobrightInfoStatistics"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->DEFAULT_INFO_BUFFER_LEN:I

    return v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/RoundQueue;->isFull()Z

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/RoundQueue;->length()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public lightLuxArrayToString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 204
    const-string v3, "{"

    .line 205
    .local v3, "str":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 206
    .local v4, "x":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v4    # "x":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    return-object v3
.end method

.method public luxInfoToString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";median="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMedian:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.2f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";stdDev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.2f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/RoundQueue;->reset()V

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/RoundQueue;->size()I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public statisticsInfo()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 117
    :try_start_0
    const-string v5, "statisticsInfo start."

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->log(Ljava/lang/String;)V

    .line 118
    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    invoke-virtual {v5}, Lcom/vivo/common/autobrightness/RoundQueue;->isFull()Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    const-string v5, "AutobrightInfoStatistics"

    const-string v6, "info is not full,has no enough info for statistics."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v5, "statisticsInfo return."

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->log(Ljava/lang/String;)V

    .line 121
    monitor-exit v4

    .line 167
    :goto_0
    return v3

    .line 123
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    .line 124
    const-string v0, ""

    .line 125
    .local v0, "allInfo":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    invoke-virtual {v3}, Lcom/vivo/common/autobrightness/RoundQueue;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mAutoBrightInfoQueue:Lcom/vivo/common/autobrightness/RoundQueue;

    invoke-virtual {v3, v1}, Lcom/vivo/common/autobrightness/RoundQueue;->indexOf(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/common/autobrightness/AutobrightInfo;

    .line 127
    .local v2, "temp":Lcom/vivo/common/autobrightness/AutobrightInfo;
    if-nez v2, :cond_1

    .line 128
    const-string v3, "AutobrightInfoStatistics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "indexof("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "i="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\tlLv="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\tlux="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\tsLv="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\tcLv="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLevls:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    iget v6, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    aput v6, v3, v5

    .line 134
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mScreenLevels:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    iget v6, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    aput v6, v3, v5

    .line 135
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    iget v6, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    aput v6, v3, v5

    .line 136
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mCameraLevels:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    iget v6, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    aput v6, v3, v5

    .line 137
    iget v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    goto :goto_2

    .line 168
    .end local v0    # "allInfo":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "temp":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 140
    .restart local v0    # "allInfo":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->log(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    invoke-static {v3, v5}, Lcom/vivo/common/autobrightness/StatisticsUtil;->min([II)I

    move-result v3

    iput v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMin:I

    .line 149
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    invoke-static {v3, v5}, Lcom/vivo/common/autobrightness/StatisticsUtil;->max([II)I

    move-result v3

    iput v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMax:I

    .line 150
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    invoke-static {v3, v5}, Lcom/vivo/common/autobrightness/StatisticsUtil;->median([II)I

    move-result v3

    iput v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMedian:I

    .line 151
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    invoke-static {v3, v5}, Lcom/vivo/common/autobrightness/StatisticsUtil;->average([II)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    .line 152
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    iget v5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mInfoCount:I

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    invoke-static {v3, v5, v6, v7}, Lcom/vivo/common/autobrightness/StatisticsUtil;->standardDeviation([IID)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    .line 153
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxs:[I

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    invoke-static {v3, v6, v7}, Lcom/vivo/common/autobrightness/StatisticsUtil;->countBiggerEqualThen([ID)I

    move-result v3

    iput v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxOverAverageCount:I

    .line 166
    const-string v3, "statisticsInfo end."

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->log(Ljava/lang/String;)V

    .line 167
    const/4 v3, 0x1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
