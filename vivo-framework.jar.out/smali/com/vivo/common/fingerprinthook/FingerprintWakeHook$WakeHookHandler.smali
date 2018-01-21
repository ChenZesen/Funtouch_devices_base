.class Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;
.super Landroid/os/Handler;
.source "FingerprintWakeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeHookHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;


# direct methods
.method public constructor <init>(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .line 506
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 507
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 511
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 513
    :pswitch_0
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 515
    :try_start_0
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage MSG_WAKE_HOOK_HAPPENED"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x1

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setHasFingerprintWake(Z)V
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$400(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)V

    .line 517
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, -0x1

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setFpAuthStatus(I)V
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$500(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;I)V

    .line 518
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 522
    :pswitch_1
    const-string v1, "FingerprintWakeHook"

    const-string v2, "handleMessage MSG_WAKE_HOOK_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 524
    :try_start_1
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 525
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isUseWindowHideFunction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->showKeyguard()V
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$700(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V

    .line 528
    :cond_1
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage goToSleep"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->goToSleep()V

    .line 530
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mTimeGoToSleep:J
    invoke-static {v1, v4, v5}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$802(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;J)J

    .line 533
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 534
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$900(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-ne v1, v6, :cond_0

    .line 535
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$902(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    goto :goto_0

    .line 533
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 540
    :pswitch_2
    const-string v1, "FingerprintWakeHook"

    const-string v2, "handleMessage MSG_WAKE_HOOK_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 542
    :try_start_3
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x1

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1002(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 543
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x1

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUpByFinger:Z
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1102(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 544
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-virtual {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->logoutWakeHookLocked()V

    .line 545
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 546
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->hideKeyguard()V
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1200(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V

    .line 547
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage wakeUp"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->wakeUp()V

    .line 550
    :cond_3
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1300()Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->removeMessages(I)V

    .line 551
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 552
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$900(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-ne v1, v6, :cond_0

    .line 553
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$902(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 554
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->end:J
    invoke-static {v1, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1402(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;J)J

    .line 555
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setCollectData()V
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1500(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V

    goto/16 :goto_0

    .line 551
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 560
    :pswitch_3
    const-string v1, "FingerprintWakeHook"

    const-string v2, "handleMessage MSG_WAKE_HOOK_SUCCESS_NO_WAKE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 562
    :try_start_5
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-virtual {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->logoutWakeHookLocked()V

    .line 563
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1300()Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->removeMessages(I)V

    .line 564
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isPolicyOff()Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isLcmOff()Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1700(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 565
    :cond_4
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage wakeUp"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->hideKeyguard()V
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1200(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V

    .line 567
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x1

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1002(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 568
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x1

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUpByFinger:Z
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1102(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 569
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->wakeUp()V

    .line 574
    :goto_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 575
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$900(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-ne v1, v6, :cond_0

    .line 576
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$902(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    goto/16 :goto_0

    .line 571
    :cond_5
    :try_start_6
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage MSG_WAKE_HOOK_SUCCESS_NO_WAKE wakeUp"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->wakeUp()V

    goto :goto_1

    .line 574
    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 581
    :pswitch_4
    const-string v1, "FingerprintWakeHook"

    const-string v2, "handleMessage MSG_WAKE_HOOK_FAILED_AND_LIGHT_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 583
    :try_start_7
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-virtual {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->logoutWakeHookLocked()V

    .line 584
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1300()Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->removeMessages(I)V

    .line 585
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isPolicyOff()Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isLcmOff()Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1700(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 586
    :cond_6
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage wakeUp"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x1

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1002(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 589
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->wakeUp()V

    .line 594
    :goto_2
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 595
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$900(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-ne v1, v6, :cond_0

    .line 596
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$902(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    goto/16 :goto_0

    .line 591
    :cond_7
    :try_start_8
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage MSG_WAKE_HOOK_FAILED_AND_LIGHT_ON userActivity"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->userActivity()V

    goto :goto_2

    .line 594
    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    .line 601
    :pswitch_5
    const-string v1, "FingerprintWakeHook"

    const-string v2, "handleMessage MSG_WAKE_HOOK_ING_WITH_PHYSICAL_WAKE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 603
    :try_start_9
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-virtual {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->logoutWakeHookLocked()V

    .line 604
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1300()Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->removeMessages(I)V

    .line 605
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isPolicyOff()Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isLcmOff()Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1700(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 606
    :cond_8
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage wakeUp"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x1

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1002(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 609
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->wakeUp()V

    .line 614
    :goto_3
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 615
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$900(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z

    move-result v1

    if-ne v1, v6, :cond_0

    .line 616
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z
    invoke-static {v1, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$902(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    goto/16 :goto_0

    .line 611
    :cond_9
    :try_start_a
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage MSG_WAKE_HOOK_FAILED_AND_LIGHT_ON userActivity"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->userActivity()V

    goto :goto_3

    .line 614
    :catchall_5
    move-exception v1

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    .line 621
    :pswitch_6
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 622
    :try_start_b
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x0

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1002(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 623
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    const/4 v3, 0x0

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUpByFinger:Z
    invoke-static {v1, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1102(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z

    .line 624
    const-string v1, "FingerprintWakeHook"

    const-string v3, "handleMessage MSG_WAKE_HOOK_WAKEUP_FINISHED"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    monitor-exit v2

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v1

    .line 629
    :pswitch_7
    const-string v1, "FingerprintWakeHook"

    const-string v2, "handleMessage MSG_REGISTER_OBSERVER"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 631
    :try_start_c
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->handleSettingsChangedLocked()V
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$100(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V

    .line 632
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->registerOberserver()V
    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1800(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V

    .line 633
    monitor-exit v2

    goto/16 :goto_0

    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v1

    .line 637
    :pswitch_8
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 638
    :try_start_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 639
    .local v0, "result":I
    const-string v1, "FingerprintWakeHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage MSG_WAKE_HOOK_AUTH_RESULT("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->handleFingerPrintResult(I)V
    invoke-static {v1, v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$1900(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;I)V

    .line 641
    monitor-exit v2

    goto/16 :goto_0

    .end local v0    # "result":I
    :catchall_8
    move-exception v1

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v1

    .line 511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
