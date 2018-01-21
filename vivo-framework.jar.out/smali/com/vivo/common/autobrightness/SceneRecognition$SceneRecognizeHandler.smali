.class final Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
.super Landroid/os/Handler;
.source "SceneRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/SceneRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SceneRecognizeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/SceneRecognition;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/SceneRecognition;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 81
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$000(Lcom/vivo/common/autobrightness/SceneRecognition;Ljava/lang/String;)V

    .line 82
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$100(Lcom/vivo/common/autobrightness/SceneRecognition;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    const-string v5, "handleMessage mIsSceneRecognizing, return."

    # invokes: Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$000(Lcom/vivo/common/autobrightness/SceneRecognition;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$200(Lcom/vivo/common/autobrightness/SceneRecognition;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 89
    :try_start_0
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    const/4 v6, 0x1

    # setter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v4, v6}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$102(Lcom/vivo/common/autobrightness/SceneRecognition;Z)Z

    .line 90
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # invokes: Lcom/vivo/common/autobrightness/SceneRecognition;->recognizeSceneUnlocked()I
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$300(Lcom/vivo/common/autobrightness/SceneRecognition;)I

    move-result v3

    .line 91
    .local v3, "scene":I
    if-eqz v3, :cond_2

    .line 92
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSceneRecognizeRunnable get new mSceneState=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$000(Lcom/vivo/common/autobrightness/SceneRecognition;Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;->onUpdateSceneState(I)I

    .line 105
    :goto_1
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    const/4 v6, 0x0

    # setter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v4, v6}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$102(Lcom/vivo/common/autobrightness/SceneRecognition;Z)Z

    .line 106
    monitor-exit v5

    goto :goto_0

    .end local v3    # "scene":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 97
    .restart local v3    # "scene":I
    :cond_1
    :try_start_1
    const-string v4, "SceneRecognition"

    const-string v6, "mSceneRecognizeRunnable mStatisticsCallback is null."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    :cond_2
    const-string v4, "SceneRecognition"

    const-string v6, "mAbInfoStatistics.statisticsInfo failed to recognizeScene "

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$500(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v8, 0x203a

    invoke-virtual {v4, v6, v8, v9}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 110
    .end local v3    # "scene":I
    :pswitch_1
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$100(Lcom/vivo/common/autobrightness/SceneRecognition;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 111
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$200(Lcom/vivo/common/autobrightness/SceneRecognition;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "ret":Z
    :try_start_2
    new-instance v1, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    .line 114
    .local v1, "info":Lcom/vivo/common/autobrightness/AutobrightInfo;
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;->onGetAutobrightInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)Z

    move-result v2

    .line 115
    if-nez v2, :cond_4

    .line 116
    const-string v4, "SceneRecognition"

    const-string v5, "mStatisticsCallback.onGetAutobrightInfo(info)---data is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$500(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$600(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->isFull()Z

    move-result v4

    if-eqz v4, :cond_3

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I
    invoke-static {}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$700()I

    move-result v4

    int-to-long v4, v4

    :goto_2
    invoke-virtual {v7, v8, v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    monitor-exit v6

    goto/16 :goto_0

    .line 122
    .end local v1    # "info":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 117
    .restart local v1    # "info":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :cond_3
    :try_start_3
    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME_QUICK:I
    invoke-static {}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$800()I

    move-result v4

    int-to-long v4, v4

    goto :goto_2

    .line 121
    :cond_4
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$600(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->addInfoToQueue(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 122
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    .end local v1    # "info":Lcom/vivo/common/autobrightness/AutobrightInfo;
    .end local v2    # "ret":Z
    :goto_3
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$500(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    move-result-object v6

    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$600(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->isFull()Z

    move-result v4

    if-eqz v4, :cond_6

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I
    invoke-static {}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$700()I

    move-result v4

    int-to-long v4, v4

    :goto_4
    invoke-virtual {v6, v7, v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 124
    :cond_5
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SceneRecognizeHandler MSG_GET_AUTOBRIGHTINFO: mStatisticsCallback is null. or mIsSceneRecognizing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v6}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$100(Lcom/vivo/common/autobrightness/SceneRecognition;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$000(Lcom/vivo/common/autobrightness/SceneRecognition;Ljava/lang/String;)V

    goto :goto_3

    .line 126
    :cond_6
    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME_QUICK:I
    invoke-static {}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$800()I

    move-result v4

    int-to-long v4, v4

    goto :goto_4

    .line 130
    :pswitch_2
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$100(Lcom/vivo/common/autobrightness/SceneRecognition;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 131
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$200(Lcom/vivo/common/autobrightness/SceneRecognition;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 132
    :try_start_4
    new-instance v1, Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/LumaInfo;-><init>()V

    .line 133
    .local v1, "info":Lcom/vivo/common/autobrightness/LumaInfo;
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;->onGetLumaInfo(Lcom/vivo/common/autobrightness/LumaInfo;)V

    .line 135
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$500(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    move-result-object v4

    const/4 v6, 0x2

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I
    invoke-static {}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$700()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v4, v6, v8, v9}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    monitor-exit v5

    goto/16 :goto_0

    .end local v1    # "info":Lcom/vivo/common/autobrightness/LumaInfo;
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 138
    :cond_7
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$500(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    move-result-object v4

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I
    invoke-static {}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$700()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v8, v6, v7}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SceneRecognizeHandler MSG_GET_LUMAINFO: mStatisticsCallback is null. or mIsSceneRecognizing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v6}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$100(Lcom/vivo/common/autobrightness/SceneRecognition;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$000(Lcom/vivo/common/autobrightness/SceneRecognition;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :pswitch_3
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$100(Lcom/vivo/common/autobrightness/SceneRecognition;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 145
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$200(Lcom/vivo/common/autobrightness/SceneRecognition;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 146
    :try_start_5
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;->onGetLightDegree()I

    move-result v0

    .line 147
    .local v0, "degree":I
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SceneRecognizeHandler MSG_GET_LIGHT_DEGREE: degree="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$000(Lcom/vivo/common/autobrightness/SceneRecognition;Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$500(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    move-result-object v4

    const/4 v6, 0x3

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I
    invoke-static {}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$700()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v4, v6, v8, v9}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "degree":I
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4

    .line 151
    :cond_8
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$500(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    move-result-object v4

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I
    invoke-static {}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$700()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v9, v6, v7}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    iget-object v4, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SceneRecognizeHandler MSG_GET_LUMAINFO: mStatisticsCallback is null. or mIsSceneRecognizing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->this$0:Lcom/vivo/common/autobrightness/SceneRecognition;

    # getter for: Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z
    invoke-static {v6}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$100(Lcom/vivo/common/autobrightness/SceneRecognition;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition;->access$000(Lcom/vivo/common/autobrightness/SceneRecognition;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
