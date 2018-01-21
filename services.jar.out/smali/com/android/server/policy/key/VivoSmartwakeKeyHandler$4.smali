.class Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 1123
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    .line 1126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    const-string v2, "smartwake screen off..."

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHasReportedSmartwakeKey:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1602(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Z)Z

    .line 1131
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1302(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1132
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mUserPresentRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1700(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1151
    :goto_0
    return-void

    .line 1134
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1136
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1139
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwake prepare removed... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I
    invoke-static {v3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$200(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 1140
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwake screen on... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I
    invoke-static {v3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$200(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwake wrong action !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    goto :goto_0
.end method
