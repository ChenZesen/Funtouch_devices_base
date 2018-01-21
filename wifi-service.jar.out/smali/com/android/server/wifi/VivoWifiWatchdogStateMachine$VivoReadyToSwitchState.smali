.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoReadyToSwitchState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2291
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 2293
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 2294
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6404(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2297
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2298
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "ready to switch"

    iput-object v1, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 2300
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2386
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->hideLatencyPanel()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2387
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "N/A"

    iput-object v1, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 2388
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2304
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v7, p1, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 2305
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 2379
    :goto_0
    return v3

    .line 2307
    :sswitch_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 2308
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    const v8, 0x25014

    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2309
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v9, 0x2100b

    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6404(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v10

    invoke-virtual {v8, v9, v10, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v3, v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_0
    :goto_1
    :sswitch_1
    move v3, v6

    .line 2379
    goto :goto_0

    .line 2315
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 2318
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 2319
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v2, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 2320
    .local v2, "rssi":I
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 2321
    .local v1, "linkspeed":I
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget v8, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6602(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 2322
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatestRssi:I
    invoke-static {v7, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 2324
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch RSSI succeed, rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2326
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 2327
    .local v4, "time":J
    cmp-long v7, v4, v12

    if-gtz v7, :cond_3

    .line 2329
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v7, "Max avoid time elapsed"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2331
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dismissSwitchMobileNetworkDialog()V
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2332
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2334
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_5

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_5

    .line 2335
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v8, "Roaming case with privious connected- always send true at first"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2337
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dismissSwitchMobileNetworkDialog()V
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2338
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 2339
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 2340
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v7, "isRoaming = false"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2342
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_8

    .line 2343
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 2344
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Roaming case with privious disconnected- should check isRoaming= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentDetailState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2351
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    if-lt v2, v7, :cond_9

    .line 2352
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6104(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v3

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 2354
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Good link detected, rssi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2355
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v3, v12, v13}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J

    .line 2357
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dismissSwitchMobileNetworkDialog()V
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2358
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2347
    :cond_8
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privious disconnected- should check isRoaming= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentDetailState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2361
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v7, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 2362
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link is still poor, time left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2368
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v1    # "linkspeed":I
    .end local v2    # "rssi":I
    .end local v4    # "time":J
    :sswitch_3
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v7, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2305
    :sswitch_data_0
    .sparse-switch
        0x2100b -> :sswitch_0
        0x21032 -> :sswitch_1
        0x25015 -> :sswitch_2
        0x25016 -> :sswitch_3
    .end sparse-switch
.end method
