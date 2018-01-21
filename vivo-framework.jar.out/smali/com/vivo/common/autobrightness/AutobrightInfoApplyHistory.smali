.class public Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;
.super Ljava/lang/Object;
.source "AutobrightInfoApplyHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;
    }
.end annotation


# static fields
.field private static final MAX_INFO_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "AutobrightInfoApplyHistory"


# instance fields
.field private mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

.field private mHandler:Landroid/os/Handler;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mLock:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    .line 60
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;-><init>(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mHandler:Landroid/os/Handler;

    .line 57
    invoke-static {p1, p2}, Lcom/vivo/common/autobrightness/CollectUseData;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/vivo/common/autobrightness/CollectUseData;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->infoListToJsonLocked()V

    return-void
.end method

.method private infoListToJsonLocked()V
    .locals 20

    .prologue
    .line 77
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v15, "jArr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;

    .line 79
    .local v14, "info":Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;
    invoke-virtual {v14}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v16

    .line 80
    .local v16, "obj":Lorg/json/JSONObject;
    if-eqz v16, :cond_0

    .line 81
    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 84
    .end local v14    # "info":Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;
    .end local v16    # "obj":Lorg/json/JSONObject;
    :cond_1
    new-instance v13, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "list"

    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 87
    .local v8, "now":J
    new-instance v3, Lcom/vivo/common/autobrightness/DataParameter;

    const-string v4, "1005"

    const-string v5, "10057"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->timeStamp:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;

    iget-wide v10, v10, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->timeStamp:J

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    sub-long v10, v8, v10

    const/4 v12, 0x1

    invoke-direct/range {v3 .. v13}, Lcom/vivo/common/autobrightness/DataParameter;-><init>(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 89
    .local v3, "data":Lcom/vivo/common/autobrightness/DataParameter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    invoke-virtual {v4, v3}, Lcom/vivo/common/autobrightness/CollectUseData;->sendDataParameter(Lcom/vivo/common/autobrightness/DataParameter;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onNewInfoApplied(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 6
    .param p1, "abInfo"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 93
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget v4, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget v5, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;-><init>(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;JII)V

    .line 94
    .local v0, "info":Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "AutobrightInfoApplyHistory"

    const-string v3, "onNewInfoApplied got new info."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x14

    if-lt v1, v3, :cond_1

    .line 100
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_1
    monitor-exit v2

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
