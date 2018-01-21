.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;
.super Landroid/content/BroadcastReceiver;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setupVivoReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2601
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2602
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupVivoReceiver action:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2603
    :cond_0
    const-string v9, "android.net.wifi.WIFI_CHECK_INTERNET"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2604
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v8, "Inet check network is not ok, triger active check cmd sended."

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2606
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->checkInternet()V
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 2686
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2607
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v9, "vivo_smart_wifi_all_wifi_is_unavailable"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2608
    const-string v9, "no_internet_access"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2609
    .local v3, "noInternetAccess":Z
    const-string v9, "vivo_poor_rssi_state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2610
    .local v4, "val":I
    if-eqz v4, :cond_3

    move v6, v7

    .line 2612
    .local v6, "vivoPoorRssiState":Z
    :goto_1
    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v11, 0x21032

    if-eqz v3, :cond_4

    move v9, v7

    :goto_2
    if-eqz v6, :cond_5

    :goto_3
    invoke-virtual {v10, v11, v9, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2683
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "noInternetAccess":Z
    .end local v4    # "val":I
    .end local v6    # "vivoPoorRssiState":Z
    :catch_0
    move-exception v1

    .line 2684
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "noInternetAccess":Z
    .restart local v4    # "val":I
    :cond_3
    move v6, v8

    .line 2610
    goto :goto_1

    .restart local v6    # "vivoPoorRssiState":Z
    :cond_4
    move v9, v8

    .line 2612
    goto :goto_2

    :cond_5
    move v7, v8

    goto :goto_3

    .line 2613
    .end local v3    # "noInternetAccess":Z
    .end local v4    # "val":I
    .end local v6    # "vivoPoorRssiState":Z
    :cond_6
    :try_start_1
    const-string v9, "vivo_smart_wifi_poor_network_profile_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2615
    const-string v7, "vivo_smart_wifi_poor_network_profile_enabled"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2616
    .local v2, "enabled":Z
    if-eqz v2, :cond_7

    .line 2617
    const-string v7, "persist.sys.vivopoorlinkProfile"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {v7, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setPoorLinkProfilingOn(Z)V

    goto :goto_0

    .line 2619
    :cond_7
    const-string v7, "persist.sys.vivopoorlinkProfile"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2622
    .end local v2    # "enabled":Z
    :cond_8
    const-string v9, "vivo_smart_wifi_watchdog_settings_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2623
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v8, 0x21006

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2624
    :cond_9
    const-string v9, "android.net.wifi.RssiPacketCountInfo"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2625
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v8, 0x25015

    const-string v9, "RssiPacketCountInfo"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2626
    :cond_a
    const-string v9, "vivo_smart_wifi_poor_network_txretry_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2627
    const-string v7, "vivo_smart_wifi_poor_network_txretry_enabled"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2628
    .restart local v2    # "enabled":Z
    if-eqz v2, :cond_b

    .line 2629
    const-string v7, "persist.sys.vivopoorlinktxretry"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    :goto_5
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iput-boolean v2, v7, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWeightAlgo:Z

    .line 2634
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "VivoWifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set mWeightAlgo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-boolean v9, v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWeightAlgo:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2631
    :cond_b
    const-string v7, "persist.sys.vivopoorlinktxretry"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2635
    .end local v2    # "enabled":Z
    :cond_c
    const-string v9, "android.net.conn.VIVO_SMART_WIFI_VALID"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2636
    const-string v7, "vivo_smart_wifi_valid"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2637
    .local v5, "valid":Z
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v8, 0x21034

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    .line 2650
    if-eqz v5, :cond_1

    sget-boolean v7, Lcom/android/server/wifi/VivoSmartWifiConstants;->dnsOptimize:Z

    if-eqz v7, :cond_1

    .line 2651
    new-instance v7, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$HostRefreshThread;

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$HostRefreshThread;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    invoke-virtual {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$HostRefreshThread;->start()V

    goto/16 :goto_0

    .line 2653
    .end local v5    # "valid":Z
    :cond_d
    const-string v9, "vivo_smart_wifi_switch_to_4g_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2654
    const-string v7, "vivo_smart_wifi_switch_to_4g_enabled"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2655
    .restart local v2    # "enabled":Z
    if-eqz v2, :cond_f

    .line 2657
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isVivoSmartWiFiEnabled()Z
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2658
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->moblieNetworkIsGood()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2659
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8$1;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8$1;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;)V

    const-wide/16 v10, 0x2710

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2669
    :cond_e
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "Smart Wifi is Disabled!!"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 2670
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2674
    :cond_f
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    const/16 v8, -0x7f

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7802(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;I)I

    .line 2675
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    goto/16 :goto_0

    .line 2677
    .end local v2    # "enabled":Z
    :cond_10
    const-string v9, "vivo_smart_wifi_wifi_is_available"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2678
    const-string v9, "no_internet_access"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2681
    .restart local v3    # "noInternetAccess":Z
    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v10, 0x21036

    if-eqz v3, :cond_11

    :goto_6
    const/4 v8, 0x0

    invoke-virtual {v9, v10, v7, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_11
    move v7, v8

    goto :goto_6
.end method
