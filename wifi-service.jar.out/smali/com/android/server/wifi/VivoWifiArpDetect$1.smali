.class Lcom/android/server/wifi/VivoWifiArpDetect$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoWifiArpDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiArpDetect;->setupVivoReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiArpDetect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiArpDetect;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiArpDetect$1;->this$0:Lcom/android/server/wifi/VivoWifiArpDetect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v4, "VivoWifiArpDetect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupVivoReceiver action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v4, "android.net.wifi.WIFI_ARP_DETECT_START"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const-string v4, "networkId"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 103
    .local v2, "netID":I
    const-string v4, "token"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 104
    .local v3, "token":I
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiArpDetect$1;->this$0:Lcom/android/server/wifi/VivoWifiArpDetect;

    # invokes: Lcom/android/server/wifi/VivoWifiArpDetect;->startCheckArp(II)V
    invoke-static {v4, v2, v3}, Lcom/android/server/wifi/VivoWifiArpDetect;->access$000(Lcom/android/server/wifi/VivoWifiArpDetect;II)V

    .line 111
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "netID":I
    .end local v3    # "token":I
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v4, "android.net.wifi.WIFI_ARP_DETECT_STOP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiArpDetect$1;->this$0:Lcom/android/server/wifi/VivoWifiArpDetect;

    invoke-virtual {v4}, Lcom/android/server/wifi/VivoWifiArpDetect;->stopArp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
