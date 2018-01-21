.class Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;
.super Landroid/os/Handler;
.source "VivoIqooSecureConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/firewall/VivoIqooSecureConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .line 138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 143
    iget-object v4, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 144
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    monitor-exit v5

    .line 167
    return-void

    .line 146
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_1

    .line 147
    .local v0, "fromSetEnableFunction":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mVivoCacheFileRW:Lcom/android/server/am/firewall/VivoCacheFileMgr;
    invoke-static {v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1200(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Lcom/android/server/am/firewall/VivoCacheFileMgr;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mFileName:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1100(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/firewall/VivoCacheFileMgr;->readConfigXmlFile(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result v1

    .line 149
    .local v1, "result":Z
    if-nez v0, :cond_0

    .line 150
    iget-object v4, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mEnable:Z
    invoke-static {v4, v1}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1302(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z

    goto :goto_0

    .line 166
    .end local v0    # "fromSetEnableFunction":Z
    .end local v1    # "result":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 154
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mVivoCacheFileRW:Lcom/android/server/am/firewall/VivoCacheFileMgr;
    invoke-static {v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1200(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Lcom/android/server/am/firewall/VivoCacheFileMgr;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mFileName:Ljava/io/File;
    invoke-static {v7}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1100(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mEnable:Z
    invoke-static {v8}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1300(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Z

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/firewall/VivoCacheFileMgr;->writeConfigXmlFile(Ljava/util/HashMap;Ljava/io/File;Z)V

    goto :goto_0

    .line 157
    :pswitch_2
    const-wide v2, 0x7fffffffffffffffL

    .line 158
    .local v2, "id":J
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 159
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # invokes: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->updateCacheList(J)V
    invoke-static {v4, v2, v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$1400(Lcom/android/server/am/firewall/VivoIqooSecureConnector;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
