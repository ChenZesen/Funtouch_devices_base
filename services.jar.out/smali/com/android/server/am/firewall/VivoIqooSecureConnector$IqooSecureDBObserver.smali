.class Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;
.super Landroid/database/ContentObserver;
.source "VivoIqooSecureConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/firewall/VivoIqooSecureConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IqooSecureDBObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .line 173
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x3

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "id":Ljava/lang/Long;
    :try_start_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    if-nez v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1500(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    :cond_0
    sget-boolean v2, Lcom/android/server/am/firewall/VivoFirewall;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IqooSecureDBListener onChange uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1500(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 188
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1500(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    return-void

    .line 181
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
