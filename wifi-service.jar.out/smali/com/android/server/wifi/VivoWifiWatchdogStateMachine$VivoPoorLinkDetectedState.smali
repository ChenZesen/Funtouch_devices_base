.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoPoorLinkDetectedState"
.end annotation


# instance fields
.field private mMonitorRssiToken:I

.field private mRssiCount:I

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2216
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 2217
    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mMonitorRssiToken:I

    .line 2218
    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mRssiCount:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2222
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2223
    :cond_0
    iput v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mMonitorRssiToken:I

    .line 2224
    iput v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mRssiCount:I

    .line 2225
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v2, 0x2100b

    iget v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mMonitorRssiToken:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mMonitorRssiToken:I

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2228
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2229
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "poor link detected"

    iput-object v1, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 2231
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 2281
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2282
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2235
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v5, p1, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 2236
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 2276
    :goto_0
    return v3

    .line 2238
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2239
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v3, v4

    .line 2276
    goto :goto_0

    .line 2240
    :cond_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mMonitorRssiToken:I

    if-ne v5, v6, :cond_0

    .line 2241
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x25014

    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2242
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v7, 0x2100b

    iget v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mMonitorRssiToken:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mMonitorRssiToken:I

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 2248
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 2252
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 2253
    .local v1, "rssi":I
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rssi :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRssiCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mRssiCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2254
    :cond_2
    iget v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mRssiCount:I

    if-gt v5, v4, :cond_3

    .line 2255
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setCurrentRssi(I)V
    invoke-static {v5, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 2256
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-static {}, Lcom/android/server/wifi/VivoWifiStep;->getStepCount()F

    move-result v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setCurrentStep(F)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;F)V

    .line 2257
    iget v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mRssiCount:I

    if-ne v5, v4, :cond_3

    .line 2258
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->notShowDialog()Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->notShowDialogStep()Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2259
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 2260
    const-string v2, "MOVING, do not switch!!"

    .line 2261
    .local v2, "ss":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 2262
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2271
    .end local v2    # "ss":Ljava/lang/String;
    :cond_3
    :goto_2
    iget v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mRssiCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->mRssiCount:I

    goto/16 :goto_1

    .line 2264
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v5, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    .line 2265
    const-string v2, "NOT MOVING, switch!!"

    .line 2266
    .restart local v2    # "ss":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 2267
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 2236
    :sswitch_data_0
    .sparse-switch
        0x2100b -> :sswitch_0
        0x25015 -> :sswitch_1
    .end sparse-switch
.end method
