.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2057
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2058
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 2062
    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->access$000(I)Ljava/lang/Object;

    move-result-object v1

    .line 2063
    .local v1, "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2152
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2065
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 2066
    # getter for: Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x11001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2073
    :goto_1
    # getter for: Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 2068
    :cond_1
    const-string v3, "WifiManager"

    const-string v4, "Failed to set up channel connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    # setter for: Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Landroid/net/wifi/WifiManager;->access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 2079
    :sswitch_2
    const-string v3, "WifiManager"

    const-string v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    # setter for: Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Landroid/net/wifi/WifiManager;->access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 2083
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 2090
    :sswitch_3
    if-eqz v1, :cond_0

    .line 2091
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 2099
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_4
    if-eqz v1, :cond_0

    .line 2100
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 2104
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_5
    if-eqz v1, :cond_0

    .line 2105
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WpsResult;

    .local v2, "result":Landroid/net/wifi/WpsResult;
    move-object v3, v1

    .line 2106
    check-cast v3, Landroid/net/wifi/WifiManager$WpsCallback;

    iget-object v4, v2, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$WpsCallback;->onStarted(Ljava/lang/String;)V

    .line 2108
    # getter for: Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2109
    :try_start_0
    # getter for: Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$400()Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2110
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2114
    .end local v2    # "result":Landroid/net/wifi/WpsResult;
    :sswitch_6
    if-eqz v1, :cond_0

    .line 2115
    iget v3, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/net/wifi/WifiManager;->mWpsNetworkId:I
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->access$502(I)I

    .line 2116
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    goto :goto_0

    .line 2120
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_7
    if-eqz v1, :cond_0

    .line 2121
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    goto :goto_0

    .line 2125
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_8
    if-eqz v1, :cond_0

    .line 2126
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    goto/16 :goto_0

    .line 2130
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_9
    if-eqz v1, :cond_0

    .line 2131
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    goto/16 :goto_0

    .line 2135
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_a
    if-eqz v1, :cond_0

    .line 2136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 2137
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v0, :cond_2

    .line 2138
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget v4, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto/16 :goto_0

    .line 2140
    .restart local v1    # "listener":Ljava/lang/Object;
    :cond_2
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 2144
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_b
    if-eqz v1, :cond_0

    .line 2145
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 2063
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11002 -> :sswitch_0
        0x11004 -> :sswitch_2
        0x25002 -> :sswitch_3
        0x25003 -> :sswitch_4
        0x25005 -> :sswitch_3
        0x25006 -> :sswitch_4
        0x25008 -> :sswitch_3
        0x25009 -> :sswitch_4
        0x2500b -> :sswitch_5
        0x2500c -> :sswitch_7
        0x2500d -> :sswitch_6
        0x2500f -> :sswitch_9
        0x25010 -> :sswitch_8
        0x25012 -> :sswitch_3
        0x25013 -> :sswitch_4
        0x25015 -> :sswitch_a
        0x25016 -> :sswitch_b
    .end sparse-switch
.end method
