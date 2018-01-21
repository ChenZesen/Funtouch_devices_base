.class Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;
.super Landroid/os/Handler;
.source "MessageRemindService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MessageRemindService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageRemindServiceHandler"
.end annotation


# instance fields
.field pm:Landroid/os/PowerManager;

.field final synthetic this$0:Lcom/vivo/services/motion/MessageRemindService;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/MessageRemindService;Landroid/os/Looper;)V
    .locals 3
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    .line 358
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 354
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/services/motion/MessageRemindService;->access$1100(Lcom/vivo/services/motion/MessageRemindService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$1100(Lcom/vivo/services/motion/MessageRemindService;)Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->pm:Landroid/os/PowerManager;

    .line 355
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SmartRemind"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->wl:Landroid/os/PowerManager$WakeLock;

    .line 359
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0xc8

    const-wide/16 v10, 0x64

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 364
    const-string v4, "ro.product.model.bbk"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "prop":Ljava/lang/String;
    const-string v4, "MessageRemindService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 442
    :cond_0
    :goto_0
    const-string v4, "MessageRemindService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorTrigerObserver handleMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_1
    return-void

    .line 370
    :pswitch_0
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mFlatPositionInfo:Lcom/vivo/services/motion/FlatPositionInfo;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1200(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/FlatPositionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/services/motion/FlatPositionInfo;->IsDevInFlatState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 373
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 375
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mFlatPositionInfo:Lcom/vivo/services/motion/FlatPositionInfo;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1200(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/FlatPositionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/services/motion/FlatPositionInfo;->IsDevInFlatState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    # operator++ for: Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$1308()I

    .line 383
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$1300()I

    move-result v4

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->makeSureStaticCnt:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$1400()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 385
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorTrigerObserver:Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->StartSensorTrigerObserver()V

    .line 386
    # setter for: Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I
    invoke-static {v7}, Lcom/vivo/services/motion/MessageRemindService;->access$1302(I)I

    goto :goto_0

    .line 390
    :cond_1
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 391
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 393
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 399
    :cond_2
    # setter for: Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I
    invoke-static {v7}, Lcom/vivo/services/motion/MessageRemindService;->access$1302(I)I

    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceEintWorking:Z
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$400(Lcom/vivo/services/motion/MessageRemindService;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 405
    const-string v4, "MessageRemindService"

    const-string v5, "MessageRemindService Eint is not working,just return"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 408
    :cond_3
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorTrigerObserver:Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->StopSensorTrigerObserver()V

    goto/16 :goto_0

    .line 412
    :pswitch_3
    const-string v4, "MessageRemindService"

    const-string v5, "MSG_REMIND_ACTION_TRIGER+++"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 414
    .local v3, "smsg":Landroid/os/Message;
    const/16 v4, 0x10

    iput v4, v3, Landroid/os/Message;->what:I

    .line 415
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 416
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1500(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 419
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1500(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1100(Lcom/vivo/services/motion/MessageRemindService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 421
    .local v1, "mVibrator":Landroid/os/Vibrator;
    const/4 v4, 0x4

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 423
    .end local v1    # "mVibrator":Landroid/os/Vibrator;
    :cond_4
    const-string v4, "MessageRemindService"

    const-string v5, "MSG_REMIND_ACTION_TRIGER---"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 426
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v3    # "smsg":Landroid/os/Message;
    :pswitch_4
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1600(Lcom/vivo/services/motion/MessageRemindService;)Landroid/hardware/SensorManager;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->registerstate:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$1700()I

    move-result v4

    if-nez v4, :cond_0

    .line 428
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1600(Lcom/vivo/services/motion/MessageRemindService;)Landroid/hardware/SensorManager;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mAcceleromererListener:Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;
    invoke-static {v5}, Lcom/vivo/services/motion/MessageRemindService;->access$1800(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v6}, Lcom/vivo/services/motion/MessageRemindService;->access$1600(Lcom/vivo/services/motion/MessageRemindService;)Landroid/hardware/SensorManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    const/16 v7, 0x4e20

    iget-object v8, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 430
    # setter for: Lcom/vivo/services/motion/MessageRemindService;->registerstate:I
    invoke-static {v9}, Lcom/vivo/services/motion/MessageRemindService;->access$1702(I)I

    goto/16 :goto_0

    .line 434
    :pswitch_5
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1600(Lcom/vivo/services/motion/MessageRemindService;)Landroid/hardware/SensorManager;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->registerstate:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$1700()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 436
    iget-object v4, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$1600(Lcom/vivo/services/motion/MessageRemindService;)Landroid/hardware/SensorManager;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mAcceleromererListener:Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;
    invoke-static {v5}, Lcom/vivo/services/motion/MessageRemindService;->access$1800(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 437
    # setter for: Lcom/vivo/services/motion/MessageRemindService;->registerstate:I
    invoke-static {v7}, Lcom/vivo/services/motion/MessageRemindService;->access$1702(I)I

    goto/16 :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 421
    :array_0
    .array-data 8
        0x3e8
        0x96
        0x64
        0x96
    .end array-data
.end method
