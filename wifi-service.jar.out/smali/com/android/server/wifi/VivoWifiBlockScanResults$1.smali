.class Lcom/android/server/wifi/VivoWifiBlockScanResults$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoWifiBlockScanResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiBlockScanResults;->setupVivoReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiBlockScanResults;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$1;->this$0:Lcom/android/server/wifi/VivoWifiBlockScanResults;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/VivoWifiBlockScanResults;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VivoWifiBlockScanResults"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupVivoReceiver action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    const-string v2, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_VivoWifiBlockScanResults"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$1;->this$0:Lcom/android/server/wifi/VivoWifiBlockScanResults;

    # invokes: Lcom/android/server/wifi/VivoWifiBlockScanResults;->readXml()V
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->access$100(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V

    .line 100
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 83
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v2, "android.net.wifi.vivowifiblockscanresults.debug.dump"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$1;->this$0:Lcom/android/server/wifi/VivoWifiBlockScanResults;

    # invokes: Lcom/android/server/wifi/VivoWifiBlockScanResults;->dumpState()V
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->access$200(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v2, "android.net.wifi.vivowifiblockscanresults.debug.update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiBlockScanResults$1;->this$0:Lcom/android/server/wifi/VivoWifiBlockScanResults;

    # invokes: Lcom/android/server/wifi/VivoWifiBlockScanResults;->readXml()V
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiBlockScanResults;->access$100(Lcom/android/server/wifi/VivoWifiBlockScanResults;)V

    goto :goto_0

    .line 87
    :cond_4
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/server/wifi/VivoWifiBlockScanResults$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/VivoWifiBlockScanResults$1$1;-><init>(Lcom/android/server/wifi/VivoWifiBlockScanResults$1;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
