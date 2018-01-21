.class Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;
.super Landroid/os/Handler;
.source "VivoFingerStatusRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoFingerStatusRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/VivoFingerStatusRecorder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    .line 389
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 390
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 395
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 424
    :goto_0
    return-void

    .line 397
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 398
    .local v0, "tip":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    # getter for: Lcom/android/server/policy/VivoFingerStatusRecorder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$100(Lcom/android/server/policy/VivoFingerStatusRecorder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 402
    .end local v0    # "tip":Ljava/lang/String;
    :pswitch_1
    const-string v1, "handleMessage MSG_HIDE_KEYGUARD"

    # invokes: Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$200(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    # getter for: Lcom/android/server/policy/VivoFingerStatusRecorder;->mCallback:Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$300(Lcom/android/server/policy/VivoFingerStatusRecorder;)Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;->hideKeyguard()V

    goto :goto_0

    .line 407
    :pswitch_2
    const-string v1, "handleMessage MSG_KEYGUARD_DONE"

    # invokes: Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$200(Ljava/lang/String;)V

    .line 408
    const-string v1, "sys.fingerprint.keguard"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    # getter for: Lcom/android/server/policy/VivoFingerStatusRecorder;->mCallback:Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$300(Lcom/android/server/policy/VivoFingerStatusRecorder;)Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;->keyguardDone()V

    goto :goto_0

    .line 413
    :pswitch_3
    const-string v1, "handleMessage MSG_WAKE_UP"

    # invokes: Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$200(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    # getter for: Lcom/android/server/policy/VivoFingerStatusRecorder;->mCallback:Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$300(Lcom/android/server/policy/VivoFingerStatusRecorder;)Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;->wakeUp()V

    goto :goto_0

    .line 418
    :pswitch_4
    # getter for: Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 419
    :try_start_0
    const-string v1, "handleMessage MSG_AUTH_RESULT_EXPIRED"

    # invokes: Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$200(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    # getter for: Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$400(Lcom/android/server/policy/VivoFingerStatusRecorder;)Lcom/android/server/policy/VivoFingerStatus;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/policy/VivoFingerStatus;->updateAuthResult(Z)V

    .line 421
    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    # invokes: Lcom/android/server/policy/VivoFingerStatusRecorder;->releaseWakeLockLocked()V
    invoke-static {v1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$500(Lcom/android/server/policy/VivoFingerStatusRecorder;)V

    .line 422
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
