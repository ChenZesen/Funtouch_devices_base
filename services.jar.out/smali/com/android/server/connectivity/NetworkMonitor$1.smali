.class Lcom/android/server/connectivity/NetworkMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
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
    .line 325
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 328
    const-string v2, "android.intent.extra.PROXY_INFO"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyInfo;

    .line 329
    .local v0, "info":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "mhost":Ljava/lang/String;
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLOBAL_HTTP_PROXY_HOST = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz v1, :cond_1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->hasProxy:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 338
    .end local v1    # "mhost":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v1    # "mhost":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->hasProxy:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_0
.end method
