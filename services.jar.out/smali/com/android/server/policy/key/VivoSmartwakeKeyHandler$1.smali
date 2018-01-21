.class Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;
.super Landroid/os/Handler;
.source "VivoSmartwakeKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x4

    .line 421
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 499
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$000(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    .line 426
    .local v2, "isSecure":Z
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$000(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 427
    .local v1, "isLocked":Z
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smartwake enable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 428
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$202(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;I)I

    .line 429
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 430
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 432
    .local v3, "lightMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 434
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    const-string v5, "smartwake prepare remove. before enable."

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 438
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 440
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 441
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 442
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 443
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 445
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewEnable(IZZ)V
    invoke-static {v4, v5, v10, v10}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$500(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;IZZ)V

    .line 452
    .end local v3    # "lightMsg":Landroid/os/Message;
    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 449
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->launchApp(IZZ)V
    invoke-static {v4, v5, v2, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$600(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;IZZ)V

    .line 450
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # setter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I
    invoke-static {v4, v9}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$202(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;I)I

    goto :goto_1

    .line 457
    .end local v1    # "isLocked":Z
    .end local v2    # "isSecure":Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smartwake prepare "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 458
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->wakeupByPM()V
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$700(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V

    .line 459
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 464
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$000(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    .line 465
    .restart local v2    # "isSecure":Z
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$000(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 466
    .restart local v1    # "isLocked":Z
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smartwake start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, "disableMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 472
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget-object v5, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I
    invoke-static {v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$200(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)I

    move-result v5

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewUpdateDisappearTime(IZ)V
    invoke-static {v4, v5, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$800(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;IZ)V

    .line 474
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget-object v5, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I
    invoke-static {v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$200(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)I

    move-result v5

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->launchApp(IZZ)V
    invoke-static {v4, v5, v2, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$600(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;IZZ)V

    .line 475
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # setter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I
    invoke-static {v4, v9}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$202(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;I)I

    .line 477
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewStart(Z)V
    invoke-static {v4, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$900(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Z)V

    goto/16 :goto_0

    .line 481
    .end local v0    # "disableMsg":Landroid/os/Message;
    .end local v1    # "isLocked":Z
    .end local v2    # "isSecure":Z
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    const-string v5, "smartwake disable timeout."

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 482
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewDisable()V
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1000(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V

    goto/16 :goto_0

    .line 485
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 486
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smartwake media wakelock timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->collectSmartwake(I)V
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;I)V

    goto/16 :goto_0

    .line 493
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->collectDclick(I)V
    invoke-static {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1200(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;I)V

    goto/16 :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
