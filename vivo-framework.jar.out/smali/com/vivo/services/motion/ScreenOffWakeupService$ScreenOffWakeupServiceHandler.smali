.class Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;
.super Landroid/os/Handler;
.source "ScreenOffWakeupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ScreenOffWakeupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffWakeupServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ScreenOffWakeupService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    .line 190
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 197
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 200
    :pswitch_0
    const-string v2, "ScreenOffWakeupService"

    const-string v3, "MSG_SCREEN_OFF_WAKEUP_DET_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :pswitch_1
    const-string v2, "ScreenOffWakeupService"

    const-string v3, "MSG_SCREEN_OFF_WAKEUP_DET_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 210
    .local v1, "smsg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 211
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 212
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$800(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$800(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    :cond_0
    const-string v2, "ScreenOffWakeupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenOffWakeupWorking=====2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$900(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$400()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$900(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 221
    const-string v2, "ScreenOffWakeupService"

    const-string v4, "MSG_SCREEN_OFF_WAKEUP_DET_TRIGER"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    const-string v2, "ScreenOffWakeupService"

    const-string v3, "MSG_SCREEN_OFF_WAKEUP_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 233
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v1    # "smsg":Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v2

    if-eqz v2, :cond_2

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$000()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 235
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mAcceleromererListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;
    invoke-static {v3}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1100(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 236
    const/4 v2, 0x0

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$002(I)I

    .line 238
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mScreenOffWakeupAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$200(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->reset()V

    .line 239
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->reset()V

    .line 240
    const-string v2, "ScreenOffWakeupService"

    const-string v3, "MSG_SCREEN_OFF_WAKEUP_STOP_ACC_DET"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 244
    :pswitch_4
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->temreset()V

    goto/16 :goto_0

    .line 248
    :pswitch_5
    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mScreenOffWakeupAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$200(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

    move-result-object v2

    # invokes: Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->judge()V
    invoke-static {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->access$1200(Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;)V

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
