.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoNoInternetState"
.end annotation


# instance fields
.field CHECK_THRESHOLD:I

.field MONITOR_SPEED_PERIOND:I

.field mSpeedKB:J

.field mTotalte0:J

.field mTotalte1:J

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 2098
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 2099
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte0:J

    .line 2100
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte1:J

    .line 2101
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mSpeedKB:J

    .line 2102
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->MONITOR_SPEED_PERIOND:I

    .line 2103
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->CHECK_THRESHOLD:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const v6, 0x21037

    const v3, 0x21033

    const-wide/16 v4, 0x0

    .line 2107
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2108
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "no Internet"

    iput-object v1, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 2109
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2110
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2111
    const-wide/16 v0, 0xfa0

    sput-wide v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    .line 2112
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 2113
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2115
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2116
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte0:J

    .line 2117
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte1:J

    .line 2118
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mSpeedKB:J

    .line 2119
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte0:J

    .line 2120
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 2121
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->MONITOR_SPEED_PERIOND:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2123
    :cond_1
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 2208
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2209
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->hideLatencyPanel()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2210
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const v5, 0x21037

    const v8, 0x21033

    const/4 v1, 0x1

    .line 2127
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v3, p1, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 2128
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 2203
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 2131
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2132
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2133
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    goto :goto_0

    .line 2138
    :sswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 2139
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_INTERNET_ACCESS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> obsolete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 2145
    :cond_1
    sget-wide v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    .line 2146
    sget-wide v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 2147
    const-wide/16 v2, 0x7530

    sput-wide v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    .line 2149
    :cond_2
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start check baidu, next time is after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2151
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendInternetCheck()V
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2152
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v3

    sget-wide v4, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 2158
    :sswitch_3
    sget-boolean v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoSwitch4GEnabled:Z

    if-nez v2, :cond_0

    .line 2159
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v1, :cond_0

    .line 2160
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineWatchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 2165
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 2166
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 2167
    sget-boolean v2, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    if-eqz v2, :cond_0

    .line 2168
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2169
    iput-wide v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte0:J

    .line 2170
    iput-wide v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte1:J

    .line 2171
    iput-wide v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mSpeedKB:J

    .line 2172
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte0:J

    .line 2173
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 2174
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->MONITOR_SPEED_PERIOND:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 2178
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v3, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 2179
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 2180
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    goto/16 :goto_0

    .line 2185
    :sswitch_6
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte1:J

    .line 2186
    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte1:J

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte0:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->MONITOR_SPEED_PERIOND:I

    div-int/lit16 v4, v4, 0x3e8

    mul-int/lit16 v4, v4, 0x400

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mSpeedKB:J

    .line 2187
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTotalte0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte0:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTotalte1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte1:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSpeedKB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mSpeedKB:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2188
    :cond_4
    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mSpeedKB:J

    iget v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->CHECK_THRESHOLD:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 2189
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v3, "speed is over 10, start check internet."

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2190
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendInternetCheck()V
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2192
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2193
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v3, 0x21037

    iget v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->MONITOR_SPEED_PERIOND:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    .line 2195
    :cond_7
    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte1:J

    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;->mTotalte0:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2196
    :catch_0
    move-exception v0

    .line 2197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2128
    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_1
        0x21008 -> :sswitch_4
        0x21009 -> :sswitch_5
        0x21032 -> :sswitch_0
        0x21033 -> :sswitch_2
        0x21036 -> :sswitch_3
        0x21037 -> :sswitch_6
    .end sparse-switch
.end method
