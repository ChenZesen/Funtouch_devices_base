.class Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConsumeReceiver"
.end annotation


# instance fields
.field private flag:I

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 1

    .prologue
    .line 2029
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2030
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->flag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 2029
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v8, 0x3020377

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 2034
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action received :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2037
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2064
    :cond_0
    :goto_0
    return-void

    .line 2038
    :cond_1
    const-string v2, "com.android.vivo.net.wifi.dataConsumption"

    if-ne v0, v2, :cond_2

    .line 2040
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v3, "hotspot.data.consumption"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/connectivity/Tethering;->mDataUsage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering;->access$6302(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;

    .line 2042
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[tethering ]the data usage double is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDataUsageLong:J
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const-string v2, "hotspot.data.consumption.long"

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDataUsageLong:J
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2046
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v2, v8}, Lcom/android/server/connectivity/Tethering;->access$6500(Lcom/android/server/connectivity/Tethering;I)V

    .line 2047
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v3, "hotspot.data.consumption.long"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    # setter for: Lcom/android/server/connectivity/Tethering;->mDataUsageLong:J
    invoke-static {v2, v4, v5}, Lcom/android/server/connectivity/Tethering;->access$6402(Lcom/android/server/connectivity/Tethering;J)J

    goto :goto_0

    .line 2050
    :cond_2
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    if-ne v0, v2, :cond_4

    .line 2052
    const-string v2, "wifi_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2053
    .local v1, "wifiApStat":I
    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 2054
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mWifiTetherOn:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering;->access$6602(Lcom/android/server/connectivity/Tethering;Z)Z

    goto :goto_0

    .line 2056
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v3, "0.0"

    # setter for: Lcom/android/server/connectivity/Tethering;->mDataUsage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering;->access$6302(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;

    .line 2057
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->mDataUsageLong:J
    invoke-static {v2, v6, v7}, Lcom/android/server/connectivity/Tethering;->access$6402(Lcom/android/server/connectivity/Tethering;J)J

    .line 2058
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->mWifiTetherOn:Z
    invoke-static {v2, v5}, Lcom/android/server/connectivity/Tethering;->access$6602(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2059
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->mWifiNotifyShowed:Z
    invoke-static {v2, v5}, Lcom/android/server/connectivity/Tethering;->access$6702(Lcom/android/server/connectivity/Tethering;Z)Z

    goto :goto_0

    .line 2061
    .end local v1    # "wifiApStat":I
    :cond_4
    const-string v2, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2062
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$DataConsumeReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v2, v8}, Lcom/android/server/connectivity/Tethering;->access$6500(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0
.end method
