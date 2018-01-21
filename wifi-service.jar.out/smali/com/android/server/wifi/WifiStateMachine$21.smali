.class Lcom/android/server/wifi/WifiStateMachine$21;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->setupVivoAutoJoinReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 12933
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 12937
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 12938
    .local v0, "action":Ljava/lang/String;
    const-string v9, "vivo_smart_wifi_auto_join_profile_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 12939
    const-string v7, "vivo_smart_wifi_auto_join_profile_enabled"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 12940
    .local v1, "enabled":Z
    if-eqz v1, :cond_1

    .line 12941
    const-string v7, "persist.sys.vivoautojoin"

    const-string v8, "true"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 12942
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v8, 0x200b0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 12981
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "enabled":Z
    :cond_0
    :goto_0
    return-void

    .line 12944
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "enabled":Z
    :cond_1
    const-string v7, "persist.sys.vivoautojoin"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 12945
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v8, 0x200b0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12978
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "enabled":Z
    :catch_0
    move-exception v2

    .line 12979
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12947
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 12948
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 12949
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 12950
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentDetailState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12951
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_3

    .line 12952
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->clearVivoValid()V

    .line 12953
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendWifiAvailableBroadcast(Z)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$28100(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 12954
    invoke-static {}, Lcom/android/server/wifi/VivoWifiRssiMap;->clear()V

    .line 12956
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->handleNetworkStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 12958
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    const-string v9, "android.net.wifi.WIFI_TO_WIFI"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 12959
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->clearVivoValid()V

    .line 12960
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendWifiAvailableBroadcast(Z)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$28100(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 12961
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->handleNetworkStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    .line 12962
    invoke-static {}, Lcom/android/server/wifi/VivoWifiRssiMap;->clear()V

    goto/16 :goto_0

    .line 12963
    :cond_5
    const-string v9, "android.net.conn.VIVO_SMART_WIFI_VALID"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 12964
    const-string v9, "vivo_smart_wifi_valid"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 12965
    .local v6, "valid":Z
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->setVivoValid(Z)V

    .line 12966
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->isVivoSmartWiFiEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    sget-boolean v9, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$35500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 12969
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    if-nez v6, :cond_6

    :goto_1
    invoke-virtual {v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->setInternetAccessState(Z)V

    goto/16 :goto_0

    :cond_6
    move v7, v8

    goto :goto_1

    .line 12971
    .end local v6    # "valid":Z
    :cond_7
    const-string v7, "android.net.wifi.arp.NETWORK_CONNECTION_INFO"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 12972
    const-string v7, "successornot"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 12973
    .local v5, "successornot":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.net.wifi.arp.NETWORK_CONNECTION_INFO    successornot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12974
    const-string v7, "ipCongfig"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/StaticIpConfiguration;

    .line 12975
    .local v3, "ipConfig":Landroid/net/StaticIpConfiguration;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.net.wifi.arp.=NETWORK_CONNECTION_INFO     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12976
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$21;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setvivodhcpFromVivoArp(Landroid/net/StaticIpConfiguration;)V
    invoke-static {v7, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$35600(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/StaticIpConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
