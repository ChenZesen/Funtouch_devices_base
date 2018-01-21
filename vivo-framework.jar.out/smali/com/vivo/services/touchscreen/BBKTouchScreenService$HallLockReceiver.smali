.class Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BBKTouchScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/touchscreen/BBKTouchScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HallLockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;


# direct methods
.method constructor <init>(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$000(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 224
    :try_start_0
    const-string v2, "com.android.service.hallobserver.lock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    const-string v2, "BBKTouchScreenService"

    const-string v4, "Hall lock recive"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    .line 230
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x1

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockEnabled:Z
    invoke-static {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$902(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z

    .line 232
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$600(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const/4 v2, 0x0

    # invokes: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenDclickEnable(I)I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$500(I)I

    .line 234
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x0

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z
    invoke-static {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$602(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z

    .line 250
    :cond_0
    :goto_0
    monitor-exit v3

    .line 251
    return-void

    .line 236
    :cond_1
    const-string v2, "com.android.service.hallobserver.unlock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    const-string v2, "BBKTouchScreenService"

    const-string v4, "Hall unlock recive"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x0

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockEnabled:Z
    invoke-static {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$902(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 239
    :cond_2
    :try_start_1
    const-string v2, "intent.action.super_power_save_send"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "exited"

    const-string v4, "sps_action"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const-string v2, "BBKTouchScreenService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exited: mIsScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z
    invoke-static {v5}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$700(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHasGesturesEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z
    invoke-static {v5}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$600(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$1000(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 242
    .local v1, "pm":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$700(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 244
    const-string v2, "BBKTouchScreenService"

    const-string v4, "exited: isScreen off"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->TouchscreenLcdBacklightStateSet(Z)V

    goto/16 :goto_0

    .line 247
    :cond_3
    const-string v2, "BBKTouchScreenService"

    const-string v4, "exited: isScreen on"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
