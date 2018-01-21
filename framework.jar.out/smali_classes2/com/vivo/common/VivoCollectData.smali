.class public Lcom/vivo/common/VivoCollectData;
.super Ljava/lang/Object;
.source "VivoCollectData.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/VivoCollectData$1;,
        Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private cr:Landroid/content/ContentResolver;

.field private eIdUri:Landroid/net/Uri;

.field private mAnalysisdate:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDuration:Ljava/lang/String;

.field private mEndTime:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mEventStatus:Ljava/lang/String;

.field private mEventValue:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mLunchCount:Ljava/lang/String;

.field private mParamName:Ljava/lang/String;

.field private mParamValue:Ljava/lang/String;

.field private mStartTime:Ljava/lang/String;

.field private mVersion:I

.field private settingsUri:Landroid/net/Uri;

.field private url:Landroid/net/Uri;

.field private values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/vivo/common/VivoCollectData;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 55
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/vivo/common/VivoCollectData;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/vivo/common/VivoCollectData;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "VivoCollectData"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "content://com.bbk.iqoo.logsystemes/aaa"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->url:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.bbk.iqoo.logsystemes/sss"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->settingsUri:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.bbk.iqoo.logsystemes/eic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->eIdUri:Landroid/net/Uri;

    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;

    .line 33
    iput-object v1, p0, Lcom/vivo/common/VivoCollectData;->cr:Landroid/content/ContentResolver;

    .line 34
    const-string v0, "event_id"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mEventId:Ljava/lang/String;

    .line 35
    const-string v0, "event_status"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mEventStatus:Ljava/lang/String;

    .line 36
    const-string v0, "event_value"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mEventValue:Ljava/lang/String;

    .line 37
    const-string v0, "analysisdate"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mAnalysisdate:Ljava/lang/String;

    .line 38
    const-string v0, "lunchcount"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mLunchCount:Ljava/lang/String;

    .line 39
    const-string v0, "event_label"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mLabel:Ljava/lang/String;

    .line 40
    const-string v0, "start_time"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mStartTime:Ljava/lang/String;

    .line 41
    const-string v0, "end_time"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mEndTime:Ljava/lang/String;

    .line 42
    const-string v0, "duration"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mDuration:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/vivo/common/VivoCollectData;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, "param_name"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mParamName:Ljava/lang/String;

    .line 45
    const-string v0, "param_value"

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->mParamValue:Ljava/lang/String;

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/common/VivoCollectData;->mVersion:I

    .line 60
    iput-object p1, p0, Lcom/vivo/common/VivoCollectData;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/VivoCollectData;->cr:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mAnalysisdate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/common/VivoCollectData;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->url:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mParamName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mParamValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vivo/common/VivoCollectData;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->settingsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/VivoCollectData;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->values:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mEventValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mStartTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mEndTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mLunchCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/common/VivoCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/VivoCollectData;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->mLabel:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCollectDataVersion()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/vivo/common/VivoCollectData;->mVersion:I

    return v0
.end method

.method public getControlInfo(Ljava/lang/String;)Z
    .locals 10
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v6, 0x1

    .line 80
    .local v6, "control":Z
    const/4 v7, 0x0

    .line 82
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/vivo/common/VivoCollectData;->eIdUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vivo/common/VivoCollectData;->mEventStatus:Ljava/lang/String;

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/common/VivoCollectData;->mEventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 83
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "status":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v0, "0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v6, 0x0

    .line 96
    .end local v9    # "status":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    :goto_0
    return v6

    .line 90
    :catch_0
    move-exception v8

    .line 92
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    iget-object v0, p0, Lcom/vivo/common/VivoCollectData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 96
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V
    .locals 13
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "duration"    # J
    .param p9, "useNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p10, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/common/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;Lcom/vivo/common/VivoCollectData$1;)V

    .line 70
    .local v0, "task":Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;
    sget-object v2, Lcom/vivo/common/VivoCollectData;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 74
    new-instance v0, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/common/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/common/VivoCollectData$1;)V

    .line 75
    .local v0, "task":Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;
    sget-object v1, Lcom/vivo/common/VivoCollectData;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v5}, Lcom/vivo/common/VivoCollectData$InsertDataToSaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method
