.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoWatchdogEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 717
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 718
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 722
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v5, p1, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 724
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 834
    :goto_0
    return v7

    .line 726
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 727
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogDisabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v7, v6

    .line 834
    goto :goto_0

    .line 731
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "networkInfo"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 734
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network state change "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 736
    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v5, "wifiInfo"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2802(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 737
    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    :goto_2
    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v8, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 739
    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$11;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 795
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNotConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 737
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 741
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v5, "linkProperties"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v8, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 743
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 744
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    if-nez v5, :cond_5

    .line 745
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore, wifiinfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bssid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 746
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 749
    :cond_5
    const-string v5, "no_internet_access"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 750
    .local v2, "noInternetAccess":Z
    const-string v5, "vivo_poor_rssi_state"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 752
    .local v3, "poorLinkState":Z
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currenState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", noInternetAccess:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", poorLinkState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 753
    :cond_6
    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    move-result-object v7

    if-eq v5, v7, :cond_7

    .line 754
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 755
    :cond_7
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    move-result-object v7

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    move-result-object v7

    if-eq v5, v7, :cond_0

    .line 756
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 761
    .end local v2    # "noInternetAccess":Z
    .end local v3    # "poorLinkState":Z
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 765
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v5, "linkProperties"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 769
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    move-result-object v7

    if-ne v5, v7, :cond_9

    .line 770
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 774
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    move-result-object v7

    if-ne v5, v7, :cond_a

    .line 775
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 776
    const-wide/16 v8, 0xfa0

    sput-wide v8, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    .line 777
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v8, 0x21033

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v7

    sget-wide v8, Lcom/android/server/wifi/VivoSmartWifiConstants;->INTERNET_ACCESS_INTERVAL_MS:J

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 779
    :cond_a
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineWatchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 784
    :pswitch_2
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v7, "nothing."

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 789
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    move-result-object v7

    if-ne v5, v7, :cond_2

    .line 790
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v7, "stay here, don\'t transition to VivoNotConnectedState."

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 801
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 802
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "newState"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SupplicantState;

    .line 804
    .local v4, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v5, :cond_0

    .line 805
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2802(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 806
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 811
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "supplicantState":Landroid/net/wifi/SupplicantState;
    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_0

    .line 812
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNotConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 818
    :sswitch_4
    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_c

    move v5, v6

    :goto_3
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-ne v9, v6, :cond_b

    move v7, v6

    :cond_b
    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handleAllWifiIsUnavailable(ZZ)V
    invoke-static {v8, v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;ZZ)V

    goto/16 :goto_1

    :cond_c
    move v5, v7

    goto :goto_3

    .line 821
    :sswitch_5
    sget-boolean v5, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoSwitch4GEnabled:Z

    if-nez v5, :cond_0

    .line 822
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_0

    .line 823
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 724
    :sswitch_data_0
    .sparse-switch
        0x21001 -> :sswitch_0
        0x21002 -> :sswitch_1
        0x21004 -> :sswitch_2
        0x21005 -> :sswitch_3
        0x21032 -> :sswitch_4
        0x21036 -> :sswitch_5
    .end sparse-switch

    .line 739
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
