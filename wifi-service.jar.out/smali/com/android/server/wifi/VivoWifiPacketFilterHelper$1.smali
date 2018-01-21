.class Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoWifiPacketFilterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiPacketFilterHelper;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiPacketFilterHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiPacketFilterHelper;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;->this$0:Lcom/android/server/wifi/VivoWifiPacketFilterHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 76
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_6

    .line 77
    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "VivoWifiPacketFilterHelper"

    const-string v6, "wifi is connected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$100()Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 80
    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$100()Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 82
    :cond_1
    if-nez v1, :cond_3

    .line 83
    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "VivoWifiPacketFilterHelper"

    const-string v6, "config is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 86
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "ssid":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$000()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "VivoWifiPacketFilterHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ssid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mLastSSid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mLastSSid:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4
    if-eqz v4, :cond_5

    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mLastSSid:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$200()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mLastSSid:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 91
    :cond_5
    # setter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mLastSSid:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;->this$0:Lcom/android/server/wifi/VivoWifiPacketFilterHelper;

    # invokes: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isTimeMatch()Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$300(Lcom/android/server/wifi/VivoWifiPacketFilterHelper;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1$1;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1$1;-><init>(Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "ssid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_2

    .line 112
    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->mLastSSid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$202(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
