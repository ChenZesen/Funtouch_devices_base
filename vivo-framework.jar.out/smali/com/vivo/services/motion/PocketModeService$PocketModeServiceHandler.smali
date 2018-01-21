.class Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;
.super Landroid/os/Handler;
.source "PocketModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PocketModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketModeServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PocketModeService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PocketModeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    .line 298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x6

    .line 305
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 395
    :goto_0
    :pswitch_0
    return-void

    .line 308
    :pswitch_1
    const-string v5, "PocketModeService"

    const-string v6, "MSG_POCKET_MODE_DET_START"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :pswitch_2
    const-string v5, "PocketModeService"

    const-string v6, "MSG_POCKET_MODE_DET_STOP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :pswitch_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 320
    .local v4, "smsg":Landroid/os/Message;
    const/16 v5, 0x10

    iput v5, v4, Landroid/os/Message;->what:I

    .line 321
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 322
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    # getter for: Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->access$800()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 324
    :try_start_0
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1200(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 326
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1200(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    :cond_0
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 330
    const-string v5, "PocketModeService"

    const-string v7, "MSG_POCKET_STOP_ACC_DET"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    const-string v5, "PocketModeService"

    const-string v6, "MSG_POCKET_MODE_DET_TRIGER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 344
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v4    # "smsg":Landroid/os/Message;
    :pswitch_4
    const-string v5, "ro.product.model.bbk"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "prop1":Ljava/lang/String;
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 347
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAcceleromererListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;
    invoke-static {v6}, Lcom/vivo/services/motion/PocketModeService;->access$1100(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 349
    :cond_2
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$000(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->reset()V

    .line 350
    const-string v5, "PocketModeService"

    const-string v6, "MSG_POCKET_STOP_ACC_DET"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 357
    .end local v2    # "prop1":Ljava/lang/String;
    :pswitch_5
    const-string v5, "ro.product.model.bbk"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "proj":Ljava/lang/String;
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # invokes: Lcom/vivo/services/motion/PocketModeService;->getDataFromI2c()Z
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1300(Lcom/vivo/services/motion/PocketModeService;)Z

    move-result v3

    .line 360
    .local v3, "result":Z
    if-nez v3, :cond_3

    .line 362
    const-string v5, "PocketModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get data error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    :cond_3
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # operator++ for: Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1408(Lcom/vivo/services/motion/PocketModeService;)I

    .line 366
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$000(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->data_x:F
    invoke-static {v6}, Lcom/vivo/services/motion/PocketModeService;->access$1500(Lcom/vivo/services/motion/PocketModeService;)F

    move-result v6

    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->data_y:F
    invoke-static {v7}, Lcom/vivo/services/motion/PocketModeService;->access$1600(Lcom/vivo/services/motion/PocketModeService;)F

    move-result v7

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->data_z:F
    invoke-static {v8}, Lcom/vivo/services/motion/PocketModeService;->access$1700(Lcom/vivo/services/motion/PocketModeService;)F

    move-result v8

    # invokes: Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judge_one(FFF)V
    invoke-static {v5, v6, v7, v8}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->access$1800(Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;FFF)V

    .line 368
    const-string v5, "PocketModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getdataCnt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I
    invoke-static {v7}, Lcom/vivo/services/motion/PocketModeService;->access$1400(Lcom/vivo/services/motion/PocketModeService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1400(Lcom/vivo/services/motion/PocketModeService;)I

    move-result v5

    iget-object v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->Totalcnt:I
    invoke-static {v6}, Lcom/vivo/services/motion/PocketModeService;->access$1900(Lcom/vivo/services/motion/PocketModeService;)I

    move-result v6

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1400(Lcom/vivo/services/motion/PocketModeService;)I

    move-result v5

    const/16 v6, 0x1f

    if-le v5, v6, :cond_5

    .line 371
    :cond_4
    const-string v5, "PocketModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fianl data get:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I
    invoke-static {v7}, Lcom/vivo/services/motion/PocketModeService;->access$1400(Lcom/vivo/services/motion/PocketModeService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # setter for: Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I
    invoke-static {v5, v9}, Lcom/vivo/services/motion/PocketModeService;->access$1402(Lcom/vivo/services/motion/PocketModeService;I)I

    .line 373
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # setter for: Lcom/vivo/services/motion/PocketModeService;->Totalcnt:I
    invoke-static {v5, v9}, Lcom/vivo/services/motion/PocketModeService;->access$1902(Lcom/vivo/services/motion/PocketModeService;I)I

    goto/16 :goto_0

    .line 376
    :cond_5
    # getter for: Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->access$800()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 378
    :try_start_2
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 380
    if-eqz v1, :cond_8

    const-string v5, "PD1227B"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "PD1227BT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "PD1227BW"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "PD1227T"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "TD1305"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "PD1401L"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "PD1401LG4"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 382
    :cond_6
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x6

    const-wide/16 v8, 0x19

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 389
    :cond_7
    :goto_1
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 386
    :cond_8
    :try_start_3
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x6

    const-wide/16 v8, 0x12

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
