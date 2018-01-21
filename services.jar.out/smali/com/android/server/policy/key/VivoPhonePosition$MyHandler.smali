.class Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;
.super Landroid/os/Handler;
.source "VivoPhonePosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoPhonePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoPhonePosition;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/key/VivoPhonePosition;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    # getter for: Lcom/android/server/policy/key/VivoPhonePosition;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/key/VivoPhonePosition;->access$000(Lcom/android/server/policy/key/VivoPhonePosition;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    # invokes: Lcom/android/server/policy/key/VivoPhonePosition;->acquireWakeLock()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoPhonePosition;->access$100(Lcom/android/server/policy/key/VivoPhonePosition;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    # invokes: Lcom/android/server/policy/key/VivoPhonePosition;->getPhonePositionInner()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoPhonePosition;->access$200(Lcom/android/server/policy/key/VivoPhonePosition;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    # getter for: Lcom/android/server/policy/key/VivoPhonePosition;->mHandler:Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;
    invoke-static {v0}, Lcom/android/server/policy/key/VivoPhonePosition;->access$300(Lcom/android/server/policy/key/VivoPhonePosition;)Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    # invokes: Lcom/android/server/policy/key/VivoPhonePosition;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoPhonePosition;->access$400(Lcom/android/server/policy/key/VivoPhonePosition;)V

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const-string v0, "VivoPhonePosition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_GET_PHONE_POSITION finished, position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    # getter for: Lcom/android/server/policy/key/VivoPhonePosition;->mPosition:I
    invoke-static {v2}, Lcom/android/server/policy/key/VivoPhonePosition;->access$500(Lcom/android/server/policy/key/VivoPhonePosition;)I

    move-result v2

    # invokes: Lcom/android/server/policy/key/VivoPhonePosition;->positionToString(I)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoPhonePosition;->access$600(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/key/VivoPhonePosition;->isGettingPosition:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/key/VivoPhonePosition;->access$702(Lcom/android/server/policy/key/VivoPhonePosition;Z)Z

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->this$0:Lcom/android/server/policy/key/VivoPhonePosition;

    # invokes: Lcom/android/server/policy/key/VivoPhonePosition;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoPhonePosition;->access$400(Lcom/android/server/policy/key/VivoPhonePosition;)V

    .line 87
    const-string v0, "VivoPhonePosition"

    const-string v1, "MSG_GET_POSITION_TIMEOUT, releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
