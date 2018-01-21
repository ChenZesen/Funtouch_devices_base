.class Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1$1;
.super Ljava/lang/Object;
.source "VivoWifiPacketFilterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1$1;->this$1:Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VivoWifiPacketFilterHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread is running. isUsing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$400()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$402(Z)Z

    .line 103
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 104
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1$1;->this$1:Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;

    iget-object v1, v1, Lcom/android/server/wifi/VivoWifiPacketFilterHelper$1;->this$0:Lcom/android/server/wifi/VivoWifiPacketFilterHelper;

    # getter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DOWNLOAD_URL:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$500()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->DownloadFile(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$600(Lcom/android/server/wifi/VivoWifiPacketFilterHelper;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->isUsing:Z
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->access$402(Z)Z

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ie":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
