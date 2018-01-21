.class Lcom/android/server/BatteryService$Led$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$Led;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$Led;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 959
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    const-string v2, "ACTION_SCREEN_ON"

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel3(Ljava/lang/String;)V

    .line 962
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/BatteryService$Led;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$1102(Lcom/android/server/BatteryService$Led;Z)Z

    .line 967
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 968
    return-void

    .line 963
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel3(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/BatteryService$Led;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$1102(Lcom/android/server/BatteryService$Led;Z)Z

    goto :goto_0
.end method
