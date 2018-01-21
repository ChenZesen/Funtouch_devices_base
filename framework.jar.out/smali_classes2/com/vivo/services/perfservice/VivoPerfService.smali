.class public Lcom/vivo/services/perfservice/VivoPerfService;
.super Lcom/vivo/services/perfservice/IVivoPerfService$Stub;
.source "VivoPerfService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "vivo.bigdata.action.COLLECT"

.field private static final DBG:Z = true

.field private static final EVENT_ID:Ljava/lang/String; = "1030"

.field private static final MC_ACTION:Ljava/lang/String; = "com.vivo.perfdiagnosis.MSG_CENTER"

.field private static final MC_MSG_ANR:I = 0xc8

.field private static final MC_MSG_CRASH:I = 0x12c

.field private static final MC_TYPE_ANR:I = 0x2

.field private static final MC_TYPE_CRASH:I = 0x3

.field private static final MC_TYPE_DEXCRASH:I = 0x4

.field private static final MSG_PAUSE:I = 0x1

.field private static final MSG_SYSTEM_BOOT:I = 0x2

.field private static final SUB_TYPE_ANR:Ljava/lang/String; = "anr"

.field private static final SUB_TYPE_BOOT:Ljava/lang/String; = "boot"

.field private static final SUB_TYPE_DATABASE_OPERATION:Ljava/lang/String; = "database-op"

.field private static final SUB_TYPE_FRAME:Ljava/lang/String; = "frame"

.field private static final SUB_TYPE_LOW_MEM:Ljava/lang/String; = "low-mem"

.field private static final SUB_TYPE_ORDERED_BROADCAST:Ljava/lang/String; = "ordered-broadcast"

.field private static final SUB_TYPE_PAUSE:Ljava/lang/String; = "pause"

.field private static final SUB_TYPE_SLOW:Ljava/lang/String; = "slow"

.field private static final SUB_TYPE_SYSTEM_BOOT:Ljava/lang/String; = "sys-boot"

.field private static final TAG:Ljava/lang/String; = "VivoPerfService"

.field private static final TYPE_ANR:Ljava/lang/String; = "1030_5"

.field private static final TYPE_BOOT:Ljava/lang/String; = "1030_2"

.field private static final TYPE_DATABASE_OPERATION:Ljava/lang/String; = "1030_12"

.field private static final TYPE_FRAME:Ljava/lang/String; = "1030_3"

.field private static final TYPE_LOW_MEM:Ljava/lang/String; = "1030_4"

.field private static final TYPE_ORDERED_BROADCAST:Ljava/lang/String; = "1030_11"

.field private static final TYPE_PAUSE:Ljava/lang/String; = "1030_6"

.field private static final TYPE_SLOW:Ljava/lang/String; = "1030_7"

.field private static final TYPE_SYSTEM_BOOT:Ljava/lang/String; = "1030_1"

.field private static mService:Lcom/vivo/services/perfservice/IVivoPerfService;


# instance fields
.field private final DETEC_INTERVAL_TIME:J

.field private final FIRST_START_TIME:J

.field private final INTERVAL_TIME:J

.field private final TIME_ANR_FRAME_INTERVAL:J

.field private final TIME_LOST_FRAME_INTERVAL:J

.field private final TIME_LOW_MEM_INTERVAL:J

.field private final TIME_SYSTEM_APP_BOOT:J

.field private final TIME_THIRD_APP_BOOT:J

.field private final TIME_TO_DELAY:J

.field private mContext:Landroid/content/Context;

.field private mCurProcessName:Ljava/lang/String;

.field private mGetMCSwitch:Ljava/util/TimerTask;

.field private mHandler:Landroid/os/Handler;

.field private mLastANRProc:Ljava/lang/String;

.field private mLastANRTime:J

.field private mLastLostFrameTime:J

.field private mLastLowMemTime:J

.field private mLastMCAnrTime:J

.field private mLastMCCrashTime:J

.field private mLastPid:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mMCOn:Z

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x1d4c0

    const-wide/16 v6, 0x1388

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;-><init>()V

    .line 70
    iput-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastLowMemTime:J

    .line 71
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_LOW_MEM_INTERVAL:J

    .line 72
    iput-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastLostFrameTime:J

    .line 73
    iput-wide v6, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_LOST_FRAME_INTERVAL:J

    .line 75
    iput-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRTime:J

    .line 76
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_ANR_FRAME_INTERVAL:J

    .line 78
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_SYSTEM_APP_BOOT:J

    .line 79
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_THIRD_APP_BOOT:J

    .line 81
    iput-wide v8, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_TO_DELAY:J

    .line 83
    iput v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastPid:I

    .line 85
    iput-object v5, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLaunchedFromPackage:Ljava/lang/String;

    .line 86
    iput-object v5, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mCurProcessName:Ljava/lang/String;

    .line 96
    iput-wide v8, p0, Lcom/vivo/services/perfservice/VivoPerfService;->FIRST_START_TIME:J

    .line 97
    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->DETEC_INTERVAL_TIME:J

    .line 98
    iput-wide v6, p0, Lcom/vivo/services/perfservice/VivoPerfService;->INTERVAL_TIME:J

    .line 100
    iput-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastMCAnrTime:J

    .line 101
    iput-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastMCCrashTime:J

    .line 102
    iput-boolean v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mMCOn:Z

    .line 103
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mTimer:Ljava/util/Timer;

    .line 104
    new-instance v0, Lcom/vivo/services/perfservice/VivoPerfService$1;

    invoke-direct {v0, p0}, Lcom/vivo/services/perfservice/VivoPerfService$1;-><init>(Lcom/vivo/services/perfservice/VivoPerfService;)V

    iput-object v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mGetMCSwitch:Ljava/util/TimerTask;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x1388

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-wide/32 v2, 0x1d4c0

    const-wide/16 v4, 0x0

    .line 117
    invoke-direct {p0}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;-><init>()V

    .line 70
    iput-wide v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastLowMemTime:J

    .line 71
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_LOW_MEM_INTERVAL:J

    .line 72
    iput-wide v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastLostFrameTime:J

    .line 73
    iput-wide v10, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_LOST_FRAME_INTERVAL:J

    .line 75
    iput-wide v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRTime:J

    .line 76
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_ANR_FRAME_INTERVAL:J

    .line 78
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_SYSTEM_APP_BOOT:J

    .line 79
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_THIRD_APP_BOOT:J

    .line 81
    iput-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->TIME_TO_DELAY:J

    .line 83
    iput v7, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastPid:I

    .line 85
    iput-object v8, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLaunchedFromPackage:Ljava/lang/String;

    .line 86
    iput-object v8, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mCurProcessName:Ljava/lang/String;

    .line 96
    iput-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->FIRST_START_TIME:J

    .line 97
    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->DETEC_INTERVAL_TIME:J

    .line 98
    iput-wide v10, p0, Lcom/vivo/services/perfservice/VivoPerfService;->INTERVAL_TIME:J

    .line 100
    iput-wide v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastMCAnrTime:J

    .line 101
    iput-wide v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastMCCrashTime:J

    .line 102
    iput-boolean v7, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mMCOn:Z

    .line 103
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mTimer:Ljava/util/Timer;

    .line 104
    new-instance v0, Lcom/vivo/services/perfservice/VivoPerfService$1;

    invoke-direct {v0, p0}, Lcom/vivo/services/perfservice/VivoPerfService$1;-><init>(Lcom/vivo/services/perfservice/VivoPerfService;)V

    iput-object v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mGetMCSwitch:Ljava/util/TimerTask;

    .line 118
    const-string v0, "VivoPerfService"

    const-string v1, "Vivo Perf Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-object p1, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mContext:Landroid/content/Context;

    .line 121
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "VivoPerfService"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 122
    .local v6, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;-><init>(Lcom/vivo/services/perfservice/VivoPerfService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mHandler:Landroid/os/Handler;

    .line 125
    iget-object v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mGetMCSwitch:Ljava/util/TimerTask;

    const-wide/32 v4, 0x2932e00

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/perfservice/VivoPerfService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/perfservice/VivoPerfService;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mMCOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/services/perfservice/VivoPerfService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/perfservice/VivoPerfService;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mMCOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/services/perfservice/VivoPerfService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/perfservice/VivoPerfService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/services/perfservice/VivoPerfService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/perfservice/VivoPerfService;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vivo/services/perfservice/VivoPerfService;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/services/perfservice/VivoPerfService;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/perfservice/VivoPerfService;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/vivo/services/perfservice/VivoPerfService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/perfservice/VivoPerfService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRProc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vivo/services/perfservice/VivoPerfService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/perfservice/VivoPerfService;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastLostFrameTime:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/vivo/services/perfservice/VivoPerfService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/perfservice/VivoPerfService;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastPid:I

    return p1
.end method

.method private getOomAdj(I)Ljava/lang/String;
    .locals 7
    .param p1, "pid"    # I

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "adj":Ljava/lang/String;
    const/4 v2, 0x0

    .line 490
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/oom_adj"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 496
    if-eqz v3, :cond_2

    .line 498
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 505
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v0

    .line 499
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 502
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 493
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 496
    :goto_1
    if-eqz v2, :cond_0

    .line 498
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 499
    :catch_2
    move-exception v1

    .line 501
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 496
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 498
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 502
    :cond_1
    :goto_3
    throw v4

    .line 499
    :catch_3
    move-exception v1

    .line 501
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 496
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 493
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .locals 13
    .param p1, "pid"    # I

    .prologue
    const/4 v12, 0x0

    .line 449
    const-string v4, ""

    .line 450
    .local v4, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 452
    .local v6, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 453
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v9, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 457
    .local v3, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 458
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    move-object v7, v8

    .line 466
    .end local v3    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v7, :cond_0

    .line 468
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_2
    move-object v5, v4

    .line 483
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/Object;
    :goto_3
    return-object v5

    .line 466
    .end local v5    # "name":Ljava/lang/Object;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v8, :cond_2

    .line 468
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 474
    :cond_2
    :goto_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 477
    .local v0, "ch":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v10, v0

    if-ge v2, v10, :cond_4

    .line 478
    aget-char v10, v0, v2

    const/16 v11, 0x7f

    if-gt v10, v11, :cond_3

    aget-char v10, v0, v2

    if-nez v10, :cond_7

    .line 479
    :cond_3
    aput-char v12, v0, v2

    .line 482
    :cond_4
    new-instance v4, Ljava/lang/String;

    .end local v4    # "name":Ljava/lang/String;
    invoke-direct {v4, v0, v12, v2}, Ljava/lang/String;-><init>([CII)V

    .restart local v4    # "name":Ljava/lang/String;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    move-object v5, v4

    .line 483
    .restart local v5    # "name":Ljava/lang/Object;
    goto :goto_3

    .line 462
    .end local v0    # "ch":[C
    .end local v2    # "i":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 466
    .local v1, "e":Ljava/io/IOException;
    :goto_6
    if-eqz v7, :cond_5

    .line 468
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_7
    move-object v5, v4

    .line 472
    .restart local v5    # "name":Ljava/lang/Object;
    goto :goto_3

    .line 466
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "name":Ljava/lang/Object;
    :catchall_0
    move-exception v10

    :goto_8
    if-eqz v7, :cond_6

    .line 468
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 472
    :cond_6
    :goto_9
    throw v10

    .line 477
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "ch":[C
    .restart local v2    # "i":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 469
    .end local v0    # "ch":[C
    .end local v2    # "i":I
    :catch_2
    move-exception v10

    goto :goto_4

    .end local v3    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v10

    goto :goto_2

    .local v1, "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_7

    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v11

    goto :goto_9

    .line 466
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .line 462
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 460
    .end local v3    # "line":Ljava/lang/String;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public static getService()Lcom/vivo/services/perfservice/IVivoPerfService;
    .locals 2

    .prologue
    .line 129
    sget-object v1, Lcom/vivo/services/perfservice/VivoPerfService;->mService:Lcom/vivo/services/perfservice/IVivoPerfService;

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/vivo/services/perfservice/VivoPerfService;->mService:Lcom/vivo/services/perfservice/IVivoPerfService;

    .line 137
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 132
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "vivo_perf_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .restart local v0    # "b":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 134
    const/4 v1, 0x0

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {v0}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/perfservice/IVivoPerfService;

    move-result-object v1

    sput-object v1, Lcom/vivo/services/perfservice/VivoPerfService;->mService:Lcom/vivo/services/perfservice/IVivoPerfService;

    .line 137
    sget-object v1, Lcom/vivo/services/perfservice/VivoPerfService;->mService:Lcom/vivo/services/perfservice/IVivoPerfService;

    goto :goto_0
.end method

.method private sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vivo.bigdata.action.COLLECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "eventId"

    const-string v2, "1030"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "eventType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "subtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 445
    const-string v1, "VivoPerfService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method


# virtual methods
.method public checkTime(JLjava/lang/String;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "where"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/vivo/services/perfservice/VivoPerfService;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v0, "1030_7"

    const-string v1, "slow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMCOn()Z
    .locals 2

    .prologue
    .line 582
    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    const-string v1, "persist.sys.perf.mescenter"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/vivo/services/perfservice/VivoPerfService;->isSysBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1030"

    invoke-static {v0}, Lcom/vivo/common/VivoCollectFile;->needCollection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSysBootCompleted()Z
    .locals 2

    .prologue
    .line 434
    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ping(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "VivoPerfService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ping msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public sendMCIntent(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "excepType"    # I
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "background"    # Z

    .prologue
    .line 570
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.perfdiagnosis.MSG_CENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.vivo.abe"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v1, "excepType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    const-string v1, "procName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v1, "background"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    iget-object v1, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 577
    const-string v1, "VivoPerfService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excepType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " procName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " background:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setANR(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 10
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "frontANR"    # Z
    .param p3, "traceFile"    # Ljava/lang/String;
    .param p4, "pid"    # I

    .prologue
    const/16 v7, 0xa

    .line 241
    invoke-virtual {p0}, Lcom/vivo/services/perfservice/VivoPerfService;->isSysBootCompleted()Z

    move-result v8

    if-nez v8, :cond_0

    .line 273
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRTime:J

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    const-string v8, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 248
    const-string v8, "\n"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v4, v5

    .line 250
    .local v4, "size":I
    if-le v4, v7, :cond_1

    move v4, v7

    :cond_1
    move v1, v0

    .line 251
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 252
    if-nez v1, :cond_2

    .line 253
    aget-object v7, v5, v1

    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRProc:Ljava/lang/String;

    .line 255
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v7, v5, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 259
    .end local v1    # "i":I
    .end local v4    # "size":I
    .end local v5    # "tmp":[Ljava/lang/String;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v7, "vivo.bigdata.action.COLLECT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "eventId"

    const-string v8, "1030"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v7, "eventType"

    const-string v8, "1030_5"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v7, "subtype"

    const-string v8, "anr"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v7, "data"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    if-nez p2, :cond_4

    .line 265
    const-string v7, "data2"

    const-string v8, "bg anr"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :cond_4
    if-nez p3, :cond_5

    const-string v6, ""

    .line 268
    .local v6, "tmpPath":Ljava/lang/String;
    :goto_2
    const-string v7, "traceFile"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v7, "pid"

    invoke-virtual {v2, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    iget-object v7, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    const-string v7, "VivoPerfService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1030_5: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    .end local v6    # "tmpPath":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method public setBootTime(Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/String;
    .param p3, "isSystemApp"    # Z
    .param p4, "thisTime"    # J
    .param p6, "totalTime"    # J
    .param p8, "lastPkg"    # Ljava/lang/String;
    .param p9, "component"    # Ljava/lang/String;
    .param p10, "pid"    # I

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/vivo/services/perfservice/VivoPerfService;->isOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const-wide/16 v4, 0x5dc

    cmp-long v4, p4, v4

    if-lez v4, :cond_0

    .line 218
    if-nez p3, :cond_2

    const-wide/16 v4, 0xbb8

    cmp-long v4, p4, v4

    if-lez v4, :cond_0

    .line 221
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v3, "str":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "shortComponentName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    cmp-long v4, p4, p6

    if-eqz v4, :cond_3

    .line 233
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v3, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    const-string v4, "1030_2"

    const-string v5, "boot"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentProcessInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "launchedFromPackage"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mCurProcessName:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLaunchedFromPackage:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setDatabaseOperation(ILjava/lang/String;J)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "executeTime"    # J

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/vivo/services/perfservice/VivoPerfService;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 402
    :cond_0
    new-instance v1, Lcom/vivo/services/perfservice/VivoPerfService$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/vivo/services/perfservice/VivoPerfService$3;-><init>(Lcom/vivo/services/perfservice/VivoPerfService;IJLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/vivo/services/perfservice/VivoPerfService$3;->start()V

    goto :goto_0
.end method

.method public setLostFrame(IJ)V
    .locals 10
    .param p1, "pid"    # I
    .param p2, "frames"    # J

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/vivo/services/perfservice/VivoPerfService;->isSysBootCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v6, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mCurProcessName:Ljava/lang/String;

    .line 298
    .local v6, "processName":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLaunchedFromPackage:Ljava/lang/String;

    .line 300
    .local v7, "launchedFromPackage":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastLostFrameTime:J

    sub-long v8, v0, v2

    .line 301
    .local v8, "time":J
    const-wide/16 v0, 0x1388

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastPid:I

    if-eq p1, v0, :cond_0

    .line 304
    :cond_2
    new-instance v1, Lcom/vivo/services/perfservice/VivoPerfService$2;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/vivo/services/perfservice/VivoPerfService$2;-><init>(Lcom/vivo/services/perfservice/VivoPerfService;IJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vivo/services/perfservice/VivoPerfService$2;->start()V

    goto :goto_0
.end method

.method public setLowMemory(Ljava/lang/String;III)V
    .locals 8
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "procAdj"    # I
    .param p3, "adj"    # I
    .param p4, "pid"    # I

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/vivo/services/perfservice/VivoPerfService;->isOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastLowMemTime:J

    sub-long v2, v4, v6

    .line 279
    .local v2, "time":J
    if-gt p2, p3, :cond_0

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastLowMemTime:J

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "1030_4"

    const-string v4, "low-mem"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMCAnr(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 8
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "background"    # Z
    .param p3, "pid"    # I
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 535
    .local v0, "curTime":J
    iget-wide v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastMCAnrTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 536
    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastMCAnrTime:J

    .line 537
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 538
    .local v2, "data":Landroid/os/Bundle;
    const-string v4, "procName"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v4, "background"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 540
    const-string v4, "pid"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    const-string v4, "info"

    invoke-virtual {v2, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 543
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0xc8

    iput v4, v3, Landroid/os/Message;->what:I

    .line 544
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 545
    iget-object v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setMCCrash(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "needClear"    # Z

    .prologue
    const/4 v8, 0x1

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 552
    .local v0, "curTime":J
    iget-wide v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastMCCrashTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 553
    iput-wide v0, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mLastMCCrashTime:J

    .line 554
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v2, "data":Landroid/os/Bundle;
    const-string v4, "procName"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v4, "background"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 557
    if-eqz p2, :cond_1

    .line 558
    const-string v4, "dex"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 562
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 563
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x12c

    iput v4, v3, Landroid/os/Message;->what:I

    .line 564
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 565
    iget-object v4, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 560
    .restart local v2    # "data":Landroid/os/Bundle;
    :cond_1
    const-string v4, "dex"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setOrderedBroadcast(Ljava/lang/String;Ljava/lang/String;JZZZI)V
    .locals 5
    .param p1, "broadcastName"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "holdTime"    # J
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "foreground"    # Z
    .param p8, "pid"    # I

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/vivo/services/perfservice/VivoPerfService;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    :goto_0
    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 390
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 392
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, "1030_11"

    const-string v2, "ordered-broadcast"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPauseTime(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "pid"    # I

    .prologue
    .line 510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "pkg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v2, "activity"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v2, "pauseTime"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 514
    const-string v2, "pid"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 516
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 517
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 518
    iget-object v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    return-void
.end method

.method public setSystemBootTime(J)V
    .locals 7
    .param p1, "upBootTime"    # J

    .prologue
    .line 523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 524
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "systemBootTime"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v2, "systemBootTime"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 526
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 527
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 528
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 529
    iget-object v2, p0, Lcom/vivo/services/perfservice/VivoPerfService;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 530
    return-void
.end method
