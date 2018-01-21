.class Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;
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
    .line 1154
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 1157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1160
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smartwake user present "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mDismissKeyguard:Z
    invoke-static {v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1800(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 1161
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1163
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user_present_delay"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1164
    .local v1, "delay":I
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mUserPresentRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1700(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1165
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mUserPresentRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1700(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Ljava/lang/Runnable;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1167
    .end local v1    # "delay":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mDismissKeyguard:Z
    invoke-static {v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1800(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1169
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # setter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mDismissKeyguard:Z
    invoke-static {v2, v6}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1802(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Z)Z

    .line 1170
    const-string v2, "sys.smartwake.dismiss"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_1
    return-void
.end method
