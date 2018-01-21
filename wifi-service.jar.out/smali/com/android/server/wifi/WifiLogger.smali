.class Lcom/android/server/wifi/WifiLogger;
.super Lcom/android/server/wifi/DummyWifiLogger;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;,
        Lcom/android/server/wifi/WifiLogger$BugReport;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final MAX_ALERT_REPORTS:I = 0x1

.field public static final MAX_BUG_REPORTS:I = 0x4

.field public static final MAX_RING_BUFFERS:I = 0xa

.field private static final MinBufferSizes:[I

.field private static final MinWakeupIntervals:[I

.field public static final REPORT_REASON_ASSOC_FAILURE:I = 0x1

.field public static final REPORT_REASON_AUTH_FAILURE:I = 0x2

.field public static final REPORT_REASON_AUTOROAM_FAILURE:I = 0x3

.field public static final REPORT_REASON_DHCP_FAILURE:I = 0x4

.field public static final REPORT_REASON_NONE:I = 0x0

.field public static final REPORT_REASON_SCAN_FAILURE:I = 0x6

.field public static final REPORT_REASON_UNEXPECTED_DISCONNECT:I = 0x5

.field public static final REPORT_REASON_USER_ACTION:I = 0x7

.field public static final RING_BUFFER_FLAG_HAS_ASCII_ENTRIES:I = 0x2

.field public static final RING_BUFFER_FLAG_HAS_BINARY_ENTRIES:I = 0x1

.field public static final RING_BUFFER_FLAG_HAS_PER_PACKET_ENTRIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiLogger"

.field public static final VERBOSE_DETAILED_LOG_WITH_WAKEUP:I = 0x3

.field public static final VERBOSE_LOG_WITH_WAKEUP:I = 0x2

.field public static final VERBOSE_NORMAL_LOG:I = 0x1

.field public static final VERBOSE_NO_LOG:I


# instance fields
.field private mDriverVersion:Ljava/lang/String;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private final mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private mLogLevel:I

.field private mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mRingBufferData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private mSupportedFeatureSet:I

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    return-void

    .line 80
    :array_0
    .array-data 4
        0x0
        0xe10
        0x3c
        0xa
    .end array-data

    .line 82
    :array_1
    .array-data 4
        0x0
        0x4000
        0x4000
        0x10000
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 2
    .param p1, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/wifi/DummyWifiLogger;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    .line 276
    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .line 278
    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    .line 282
    new-instance v0, Lcom/android/server/wifi/WifiLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiLogger$1;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 93
    iput-object p1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 94
    return-void
.end method

.method static synthetic access$000([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/server/wifi/WifiLogger;->compressToBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "captureFWDump"    # Z

    .prologue
    .line 401
    new-instance v7, Lcom/android/server/wifi/WifiLogger$BugReport;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/wifi/WifiLogger$BugReport;-><init>(Lcom/android/server/wifi/WifiLogger$1;)V

    .line 402
    .local v7, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput p1, v7, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/wifi/WifiLogger$BugReport;->systemTimeMs:J

    .line 404
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelTimeNanos:J

    .line 406
    iget-object v8, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v8, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .local v0, "arr$":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 409
    .local v1, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v8, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    .line 410
    iget-object v8, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .line 411
    .local v3, "data":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v8

    new-array v2, v8, [[B

    .line 412
    .local v2, "buffers":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 413
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aput-object v8, v2, v4

    .line 412
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 415
    :cond_0
    iget-object v8, v7, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "arr$":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v2    # "buffers":[[B
    .end local v3    # "data":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    if-eqz p2, :cond_2

    .line 420
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDump()[B

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    .line 422
    :cond_2
    return-object v7
.end method

.method private static compressToBase64([B)Ljava/lang/String;
    .locals 12
    .param p0, "input"    # [B

    .prologue
    const/4 v11, 0x0

    .line 428
    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    .line 429
    .local v3, "compressor":Ljava/util/zip/Deflater;
    const/16 v8, 0x9

    invoke-virtual {v3, v8}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 430
    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 431
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 432
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v8, p0

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 433
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 435
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v8

    if-nez v8, :cond_0

    .line 436
    invoke-virtual {v3, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v4

    .line 437
    .local v4, "count":I
    invoke-virtual {v0, v1, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 441
    .end local v4    # "count":I
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    .line 442
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 451
    .local v2, "compressed":[B
    const-string v9, "WifiLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " length is:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v2, :cond_1

    const-string v8, "0"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    array-length v8, v2

    array-length v9, p0

    if-ge v8, v9, :cond_2

    .end local v2    # "compressed":[B
    :goto_2
    invoke-static {v2, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "result":Ljava/lang/String;
    const-string v8, "WifiLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FwMemoryDump length is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 462
    .end local v6    # "result":Ljava/lang/String;
    .local v7, "result":Ljava/lang/String;
    :goto_3
    return-object v7

    .line 443
    .end local v7    # "result":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 444
    .local v5, "e":Ljava/io/IOException;
    const-string v8, "WifiLogger"

    const-string v9, "ByteArrayOutputStream close error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {p0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    move-object v7, v6

    .line 446
    .end local v6    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    goto :goto_3

    .line 451
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "result":Ljava/lang/String;
    .restart local v2    # "compressed":[B
    :cond_1
    array-length v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v2, p0

    .line 455
    goto :goto_2
.end method

.method private fetchRingBuffers()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 310
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v5, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v4

    .line 312
    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 313
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v5, :cond_4

    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .local v0, "arr$":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 315
    .local v1, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    const-string v5, "WifiLogger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RingBufferStatus is: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 317
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    new-instance v7, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_2
    iget v5, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 321
    iput-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 314
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "arr$":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    const-string v5, "WifiLogger"

    const-string v6, "no ring buffers found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAllRingBufferData()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 383
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v6, :cond_0

    .line 384
    const-string v6, "WifiLogger"

    const-string v7, "Not ring buffers available to collect data!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return v5

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .local v0, "arr$":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 389
    .local v1, "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    move-result v4

    .line 390
    .local v4, "result":Z
    if-nez v4, :cond_1

    .line 391
    const-string v6, "WifiLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to get ring buffer data of: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    .end local v1    # "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v4    # "result":Z
    :cond_2
    const-string v5, "WifiLogger"

    const-string v6, "getAllRingBufferData Successfully!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private startLoggingAllExceptPerPacketBuffers()Z
    .locals 7

    .prologue
    .line 333
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v4, :cond_0

    .line 334
    const-string v4, "WifiLogger"

    const-string v5, "No ring buffers to log anything!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v4, 0x0

    .line 349
    :goto_0
    return v4

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .local v0, "arr$":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 340
    .local v1, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget v4, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 342
    const-string v4, "WifiLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipped per packet logging ring "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 346
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    goto :goto_2

    .line 349
    .end local v1    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .prologue
    const/4 v2, 0x0

    .line 354
    sget-object v3, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    iget v4, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    aget v1, v3, v4

    .line 355
    .local v1, "minInterval":I
    sget-object v3, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    iget v4, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    aget v0, v3, v4

    .line 357
    .local v0, "minDataSize":I
    iget v3, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    iget-object v4, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1, v0, v4}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    const-string v3, "WifiLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not start logging ring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private stopLoggingAllBuffers()Z
    .locals 5

    .prologue
    .line 374
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v4, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .local v0, "arr$":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 376
    .local v1, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "arr$":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method private stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 3
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-static {v1, v1, v1, v1, v0}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const-string v0, "WifiLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stop logging ring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    .prologue
    .line 165
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    move-result-object v0

    .line 166
    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput-object p2, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    .line 167
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 165
    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 159
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    move-result-object v0

    .line 160
    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 159
    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    const-string v1, "Chipset information :-----------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FW Version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Driver Version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mDriverVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Feature set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiLogger;->mSupportedFeatureSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 181
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 185
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bug dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 188
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_1
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 172
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 3
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .line 297
    .local v0, "ring":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_0
    monitor-exit p0

    return-void

    .line 296
    .end local v0    # "ring":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onWifiAlert(I[B)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "buffer"    # [B

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_0
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 3
    .param p1, "verboseEnabled"    # Z

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mFirmwareVersion:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mDriverVersion:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiLogger;->mSupportedFeatureSet:I

    .line 102
    const-string v1, "wifi.vivodbg.driver"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "vivoWifiDebugDriver":Ljava/lang/String;
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "WifiLogger"

    const-string v2, "vivosay: we not need do anyting from prop [wifi.vivodbg.driver]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    .line 111
    :cond_2
    if-eqz p1, :cond_3

    .line 112
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchRingBuffers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->startLoggingAllExceptPerPacketBuffers()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "vivoWifiDebugDriver":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 114
    .restart local v0    # "vivoWifiDebugDriver":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    iput v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized startPacketLog()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_1
    const-string v0, "WifiLogger"

    const-string v1, "There is no per packet ring buffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopLogging()V
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->resetLogHandler()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, "WifiLogger"

    const-string v1, "Fail to reset log handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingAllBuffers()Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :cond_1
    :try_start_1
    const-string v0, "WifiLogger"

    const-string v1, "Reset log handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    const-string v0, "WifiLogger"

    const-string v1, "There is no per packet ring buffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
