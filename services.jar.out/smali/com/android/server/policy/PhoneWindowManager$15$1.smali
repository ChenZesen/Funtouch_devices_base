.class Lcom/android/server/policy/PhoneWindowManager$15$1;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$15;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$15;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$15;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 5749
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5752
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5753
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 5754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5755
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5756
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5758
    :cond_0
    monitor-exit v1

    .line 5759
    return-void

    .line 5758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method