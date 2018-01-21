.class Lcom/android/server/connectivity/NetworkMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->registerVivoReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1539
    .local v8, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerVivoReceiver action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5200(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    .line 1540
    const-string v2, "android.net.vivo.wifi.captive_portal_logged_in"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1542
    const-string v2, "captive_portal_net_id"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1543
    .local v11, "netId":I
    const-string v2, "captive_portal_ssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1544
    .local v13, "ssid":Ljava/lang/String;
    const-string v2, "captive_portal_logged_state"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1545
    .local v12, "result":I
    const-string v2, "android.intent.extra.TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1547
    .local v10, "mWifiNetId":Ljava/lang/String;
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ssid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWifiNetId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/4 v9, 0x0

    .line 1549
    .local v9, "info":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-ne v11, v2, :cond_2

    .line 1550
    :cond_0
    const-string v2, "NetworkMonitor"

    const-string v3, "mWifiManager is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    .end local v9    # "info":Landroid/net/wifi/WifiInfo;
    .end local v10    # "mWifiNetId":Ljava/lang/String;
    .end local v11    # "netId":I
    .end local v12    # "result":I
    .end local v13    # "ssid":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1553
    .restart local v9    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v10    # "mWifiNetId":Ljava/lang/String;
    .restart local v11    # "netId":I
    .restart local v12    # "result":I
    .restart local v13    # "ssid":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 1554
    if-eqz v9, :cond_1

    .line 1555
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.NetworkId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v11, v2, :cond_1

    .line 1557
    const/4 v2, 0x1

    if-ne v12, v2, :cond_1

    .line 1558
    const-string v2, "NetworkMonitor"

    const-string v3, "send broadcast."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x82009

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    goto :goto_0

    .line 1563
    .end local v9    # "info":Landroid/net/wifi/WifiInfo;
    .end local v10    # "mWifiNetId":Ljava/lang/String;
    .end local v11    # "netId":I
    .end local v12    # "result":I
    .end local v13    # "ssid":Ljava/lang/String;
    :cond_3
    const-string v2, "vivo_smart_wifi_dhcp_successed"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1565
    const-string v2, "vivo_smart_wifi_dhcp_v4_or_v6"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1566
    .local v15, "v4orv6":I
    const-string v2, "vivo_smart_wifi_dhcp_status"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1567
    .local v14, "status":I
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDhcpCompleted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v4orv6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v15, v2, :cond_1

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$3102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x82006

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIIJ)V

    goto/16 :goto_0

    .line 1572
    .end local v14    # "status":I
    .end local v15    # "v4orv6":I
    :cond_4
    const-string v2, "vivo_smart_wifi_dhcp_failed"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1574
    const-string v2, "vivo_smart_wifi_dhcp_v4_or_v6"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1575
    .restart local v15    # "v4orv6":I
    const-string v2, "vivo_smart_wifi_dhcp_status"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1576
    .restart local v14    # "status":I
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDhcpCompleted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v4orv6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v15, v2, :cond_1

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$3102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x82006

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIIJ)V

    goto/16 :goto_0

    .line 1581
    .end local v14    # "status":I
    .end local v15    # "v4orv6":I
    :cond_5
    const-string v2, "android.net.wifi.WIFI_TO_WIFI"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$3102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 1583
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_TO_WIFI mDhcpCompleted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
