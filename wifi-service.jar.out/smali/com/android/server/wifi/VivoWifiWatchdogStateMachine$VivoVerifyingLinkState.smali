.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoVerifyingLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 857
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 862
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearSpeedRecord()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 866
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 867
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "poor link"

    iput-object v1, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 869
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 970
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->hideLatencyPanel()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 971
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "N/A"

    iput-object v1, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 972
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 873
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v7, p1, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 874
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 963
    :goto_0
    return v3

    .line 876
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 877
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 878
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    :cond_0
    :goto_1
    :sswitch_1
    move v3, v6

    .line 963
    goto :goto_0

    .line 883
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 887
    :sswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 888
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    const v8, 0x25014

    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 889
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v9, 0x2100b

    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6404(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v10

    invoke-virtual {v8, v9, v10, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v3, v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 895
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 898
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 899
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v2, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 900
    .local v2, "rssi":I
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 901
    .local v1, "linkspeed":I
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget v8, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6602(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 902
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatestRssi:I
    invoke-static {v7, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 904
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

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
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 907
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateRssi(I)V
    invoke-static {v7, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 910
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 911
    .local v4, "time":J
    cmp-long v7, v4, v12

    if-gtz v7, :cond_3

    .line 913
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v7, "Max avoid time elapsed"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 914
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 916
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_5

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_5

    .line 917
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v8, "Roaming case with privious connected- always send true at first"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 918
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v7, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    .line 919
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 920
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v7, "isRoaming = false"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 922
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v7

    if-ne v7, v6, :cond_8

    .line 923
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v7, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 924
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Roaming case with privious disconnected- should check isRoaming= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentDetailState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 931
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7600()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getMedianRssi([Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)I

    move-result v8

    if-lt v7, v8, :cond_9

    .line 932
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6104(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v3

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 934
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Good link detected, rssi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7600()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getMedianRssi([Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I
    invoke-static {v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 935
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v3, v12, v13}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J

    .line 936
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 927
    :cond_8
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privious disconnected- should check isRoaming= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentDetailState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$7500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 939
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v7, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 940
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

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
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 946
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v1    # "linkspeed":I
    .end local v2    # "rssi":I
    .end local v4    # "time":J
    :sswitch_5
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v7, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 950
    :sswitch_6
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    goto/16 :goto_1

    .line 874
    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_0
        0x21007 -> :sswitch_2
        0x2100b -> :sswitch_3
        0x2102c -> :sswitch_6
        0x21032 -> :sswitch_1
        0x25015 -> :sswitch_4
        0x25016 -> :sswitch_5
    .end sparse-switch
.end method
