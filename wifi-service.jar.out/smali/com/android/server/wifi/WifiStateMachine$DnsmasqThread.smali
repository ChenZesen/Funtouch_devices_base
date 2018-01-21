.class Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;
.super Ljava/lang/Thread;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsmasqThread"
.end annotation


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mInterval:I

.field private mMaxTimes:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;II)V
    .locals 1
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "interval"    # I
    .param p4, "maxTimes"    # I

    .prologue
    .line 12559
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 12560
    const-string v0, "dnsmase"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 12561
    iput p3, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mInterval:I

    .line 12562
    iput p4, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mMaxTimes:I

    .line 12563
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mDeviceAddress:Ljava/lang/String;

    .line 12564
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 12567
    const/4 v4, 0x0

    .line 12569
    .local v4, "result":Z
    :goto_0
    :try_start_0
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mMaxTimes:I

    if-lez v5, :cond_0

    .line 12570
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mDeviceAddress:Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->readDeviceInfoFromDnsmasq(Ljava/lang/String;)Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$35700(Ljava/lang/String;)Z

    move-result v4

    .line 12571
    if-eqz v4, :cond_4

    .line 12572
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully poll device info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12583
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 12584
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pulling timeout, suppose STA uses static ip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12592
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$35400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 12593
    .local v1, "client":Landroid/net/wifi/HotspotClient;
    iget-object v5, v1, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 12594
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12595
    .local v0, "broadcast":Landroid/content/Intent;
    const/high16 v5, 0x24000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12597
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 12602
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :cond_3
    return-void

    .line 12575
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mMaxTimes:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mMaxTimes:I

    .line 12576
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mInterval:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 12578
    :catch_0
    move-exception v2

    .line 12579
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 12580
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pulling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 12600
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DnsmasqThread;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "already disconnected, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
