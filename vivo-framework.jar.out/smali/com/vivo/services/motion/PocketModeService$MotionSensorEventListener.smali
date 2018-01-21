.class Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "PocketModeService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PocketModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PocketModeService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/PocketModeService;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/PocketModeService;Lcom/vivo/services/motion/PocketModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/PocketModeService;
    .param p2, "x1"    # Lcom/vivo/services/motion/PocketModeService$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PocketModeService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 290
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/16 v10, 0x7d0

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "pocketState":Ljava/lang/String;
    const-string v4, "ro.product.model.bbk"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "prop":Ljava/lang/String;
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 152
    :sswitch_0
    if-eqz v2, :cond_0

    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$000(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    move-result-object v3

    # invokes: Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgewithoutfifo(Landroid/hardware/SensorEvent;)V
    invoke-static {v3, p1}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->access$100(Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$000(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    move-result-object v3

    # invokes: Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judge(Landroid/hardware/SensorEvent;)V
    invoke-static {v3, p1}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->access$200(Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 169
    :sswitch_1
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v0

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v0, v3

    .line 172
    .local v0, "logic_value":I
    :cond_1
    iget-object v4, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    # setter for: Lcom/vivo/services/motion/PocketModeService;->logic_time:J
    invoke-static {v4, v6, v7}, Lcom/vivo/services/motion/PocketModeService;->access$302(Lcom/vivo/services/motion/PocketModeService;J)J

    .line 184
    iget-object v4, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->last_prox:I
    invoke-static {v4}, Lcom/vivo/services/motion/PocketModeService;->access$400(Lcom/vivo/services/motion/PocketModeService;)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 186
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # setter for: Lcom/vivo/services/motion/PocketModeService;->last_prox:I
    invoke-static {v3, v0}, Lcom/vivo/services/motion/PocketModeService;->access$402(Lcom/vivo/services/motion/PocketModeService;I)I

    goto :goto_0

    .line 205
    :cond_2
    if-ne v0, v3, :cond_c

    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->last_prox:I
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$400(Lcom/vivo/services/motion/PocketModeService;)I

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->logic_time:J
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$300(Lcom/vivo/services/motion/PocketModeService;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->last_time:J
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$500(Lcom/vivo/services/motion/PocketModeService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v3, v4, v6

    if-lez v3, :cond_c

    .line 207
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->isAuthWorking:Z
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$600(Lcom/vivo/services/motion/PocketModeService;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 209
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$700(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$700(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_3

    .line 211
    const-string v3, "PocketModeService"

    const-string v4, "mAWakeLock acquire"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$700(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 215
    :cond_3
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v3, :cond_8

    .line 217
    # getter for: Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->access$800()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 220
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_5
    :goto_1
    # getter for: Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->access$800()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 237
    :try_start_1
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 239
    const-string v3, "PocketModeService"

    const-string v5, "MSG_POCKET_STOP_ACC_DET,1000"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz v2, :cond_a

    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v3, :cond_a

    .line 242
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 248
    :goto_2
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    const/4 v5, 0x1

    # setter for: Lcom/vivo/services/motion/PocketModeService;->isAuthWorking:Z
    invoke-static {v3, v5}, Lcom/vivo/services/motion/PocketModeService;->access$602(Lcom/vivo/services/motion/PocketModeService;Z)Z

    .line 250
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 278
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # setter for: Lcom/vivo/services/motion/PocketModeService;->last_prox:I
    invoke-static {v3, v0}, Lcom/vivo/services/motion/PocketModeService;->access$402(Lcom/vivo/services/motion/PocketModeService;I)I

    .line 279
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    iget-object v4, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->logic_time:J
    invoke-static {v4}, Lcom/vivo/services/motion/PocketModeService;->access$300(Lcom/vivo/services/motion/PocketModeService;)J

    move-result-wide v4

    # setter for: Lcom/vivo/services/motion/PocketModeService;->last_time:J
    invoke-static {v3, v4, v5}, Lcom/vivo/services/motion/PocketModeService;->access$502(Lcom/vivo/services/motion/PocketModeService;J)J

    goto/16 :goto_0

    .line 222
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 226
    :cond_8
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 228
    const-string v3, "PocketModeService"

    const-string v4, "registerListener mAcceleromererListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    # getter for: Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->access$800()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 230
    :try_start_3
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 231
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAcceleromererListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1100(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v6}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    const/16 v7, 0x61a8

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 232
    :cond_9
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$000(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    move-result-object v3

    # invokes: Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judge(Landroid/hardware/SensorEvent;)V
    invoke-static {v3, p1}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->access$200(Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;Landroid/hardware/SensorEvent;)V

    goto/16 :goto_1

    .line 232
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 246
    :cond_a
    :try_start_5
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x4

    const-wide/16 v6, 0x4b0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 250
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 254
    :cond_b
    const-string v3, "PocketModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not clear fifo to isAuthWorking:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->isAuthWorking:Z
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$600(Lcom/vivo/services/motion/PocketModeService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 259
    :cond_c
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$700(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$700(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_d

    .line 261
    const-string v3, "PocketModeService"

    const-string v4, "mAWakeLock acquire"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$700(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 264
    :cond_d
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 266
    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->isAuthWorking:Z
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$600(Lcom/vivo/services/motion/PocketModeService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 274
    const-string v3, "PocketModeService"

    const-string v4, "no need to set fifomode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
