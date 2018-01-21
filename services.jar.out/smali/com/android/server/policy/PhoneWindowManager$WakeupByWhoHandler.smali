.class Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeupByWhoHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 822
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 823
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 827
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 871
    :goto_0
    return-void

    .line 829
    :pswitch_0
    const-string v0, "WindowManager"

    const-string v1, "handleMessage MSG_WAKEUP_BY_WHO_INIT Init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v1, "Init"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUpByWho(JLjava/lang/String;)V

    goto :goto_0

    .line 834
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoPowerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$000(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 835
    :try_start_0
    const-string v0, "WindowManager"

    const-string v2, "handleMessage MSG_WAKEUP_BY_WHO_POWERKEY start"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "WakeKey"

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUpByWho(JLjava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoPowerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$000(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 838
    const-string v0, "WindowManager"

    const-string v2, "handleMessage MSG_WAKEUP_BY_WHO_POWERKEY finished"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 844
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoPower2Lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$100(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 845
    :try_start_1
    const-string v0, "WindowManager"

    const-string v2, "handleMessage MSG_WAKEUP_BY_WHO_POWERKEY2ND start"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "WakeKey"

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUpByWho(JLjava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoPower2Lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$100(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 848
    const-string v0, "WindowManager"

    const-string v2, "handleMessage MSG_WAKEUP_BY_WHO_POWERKEY2ND finished"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 854
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoFingerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$200(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 855
    :try_start_2
    const-string v0, "WindowManager"

    const-string v2, "handleMessage MSG_WAKEUP_BY_WHO_FINGERPRINT start"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "FingerPrint"

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUpByWho(JLjava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoFingerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$200(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 858
    const-string v0, "WindowManager"

    const-string v2, "handleMessage MSG_WAKEUP_BY_WHO_FINGERPRINT finished"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 863
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoHomeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$300(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 864
    :try_start_3
    const-string v0, "WindowManager"

    const-string v2, "handleMessage MSG_WAKEUP_BY_WHO_HOMEKEY start"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "HomeKey"

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUpByWho(JLjava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoHomeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$300(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 867
    const-string v0, "WindowManager"

    const-string v2, "handleMessage MSG_WAKEUP_BY_WHO_HOMEKEY finished"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
