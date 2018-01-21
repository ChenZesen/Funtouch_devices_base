.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoOnlineWatchState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleRssiChange()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1027
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1008
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->handleRssiChange()V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 1032
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1043
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return v0

    .line 1034
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    move-result v1

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1202(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 1035
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->handleRssiChange()V

    .line 1045
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1039
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;->handleRssiChange()V

    goto :goto_1

    .line 1032
    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21034 -> :sswitch_1
    .end sparse-switch
.end method
