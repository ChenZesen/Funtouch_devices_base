.class Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
.super Ljava/lang/Object;
.source "ProximityAcrossService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ProximityAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcrossAnalyzer"
.end annotation


# static fields
.field private static final TRIGGER_COUNT:I = 0xa


# instance fields
.field private mAcrossState:I

.field private mCount:I

.field private mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

.field private mDownThreshold:F

.field private mDownTime:J

.field private mNum:I

.field private mSteady:I

.field private mUpTime:J

.field final synthetic this$0:Lcom/vivo/services/motion/ProximityAcrossService;

.field private zCount:I


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ProximityAcrossService;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 315
    iput-object p1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/high16 v1, 0x43660000    # 230.0f

    iput v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownThreshold:F

    .line 304
    iput v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mNum:I

    .line 305
    iput v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    .line 306
    iput v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mSteady:I

    .line 307
    iput v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->zCount:I

    .line 308
    iput v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mCount:I

    .line 309
    iput-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mUpTime:J

    .line 310
    iput-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    .line 316
    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mNum:I

    .line 317
    new-array v1, v3, [Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    iput-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mNum:I

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    new-instance v2, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;-><init>(Lcom/vivo/services/motion/ProximityAcrossService;I)V

    aput-object v2, v1, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->judge(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private judge()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x19

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 558
    iget v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    packed-switch v3, :pswitch_data_0

    .line 642
    invoke-virtual {p0}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 561
    :pswitch_0
    const/4 v2, 0x0

    .line 563
    .local v2, "up":Z
    const-string v3, "ProximityAcrossService"

    const-string v4, "judge state 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mNum:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, -0x1

    if-le v0, v3, :cond_2

    .line 566
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    aget v3, v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 567
    const/4 v2, 0x1

    .line 564
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 569
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 572
    :cond_2
    if-ne v2, v8, :cond_0

    .line 574
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    .line 575
    iput v8, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    .line 576
    const-string v3, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAcrossState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    .end local v0    # "i":I
    .end local v2    # "up":Z
    :pswitch_1
    const-string v3, "ProximityAcrossService"

    const-string v4, "judge state 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    aget v3, v3, v10

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 585
    const/4 v3, 0x2

    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    .line 587
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v10

    iget-wide v4, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v8

    iget-wide v6, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 588
    iget-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v10

    iget-wide v6, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v8

    iget-wide v8, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    goto/16 :goto_0

    .line 590
    :cond_3
    iget-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    add-long/2addr v4, v12

    iput-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    goto/16 :goto_0

    .line 596
    :pswitch_2
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    aget v3, v3, v10

    cmpl-float v3, v3, v5

    if-nez v3, :cond_5

    .line 598
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v10

    iget-wide v4, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v8

    iget-wide v6, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 599
    iget-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v10

    iget-wide v6, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v3, v3, v8

    iget-wide v8, v3, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    .line 602
    :goto_3
    iput v10, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mCount:I

    .line 604
    const-string v3, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "judge state 2: time-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    const-wide/16 v6, 0x190

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 608
    const-string v3, "ProximityAcrossService"

    const-string v4, "judge state 2: down time too long"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    goto/16 :goto_0

    .line 601
    :cond_4
    iget-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    add-long/2addr v4, v12

    iput-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    goto :goto_3

    .line 614
    :cond_5
    iget v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mCount:I

    .line 617
    iget v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mCount:I

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 619
    iput v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    .line 620
    const-string v3, "ProximityAcrossService"

    const-string v4, "judge state 3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # invokes: Lcom/vivo/services/motion/ProximityAcrossService;->callNotice()Z
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$300(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$400(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 624
    :cond_6
    const-string v3, "ProximityAcrossService"

    const-string v4, "judge send triger message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 626
    .local v1, "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 627
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$500()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 628
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 630
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 632
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8
    iput v10, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mCount:I

    .line 636
    invoke-virtual {p0}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    goto/16 :goto_0

    .line 632
    .restart local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 558
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private judge(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/32 v12, 0xf4240

    const/4 v10, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 485
    const/4 v0, -0x1

    .line 486
    .local v0, "logic_value":I
    const/4 v1, 0x0

    .line 487
    .local v1, "mProximityThreshold":F
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 488
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/hardware/SensorManager;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 490
    iget-object v7, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;

    move-result-object v3

    const-string v8, "sensor"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7, v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1602(Lcom/vivo/services/motion/ProximityAcrossService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 492
    :cond_0
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/hardware/SensorManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    iget-object v7, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/hardware/SensorManager;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v3, v7}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1702(Lcom/vivo/services/motion/ProximityAcrossService;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 496
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1700(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 499
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1700(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 501
    :cond_2
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    cmpg-float v3, v3, v1

    if-gez v3, :cond_4

    move v0, v4

    .line 502
    :goto_0
    iget v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    packed-switch v3, :pswitch_data_0

    .line 551
    invoke-virtual {p0}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    .line 554
    :cond_3
    :goto_1
    return-void

    .line 496
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    move v0, v5

    .line 501
    goto :goto_0

    .line 505
    :pswitch_0
    if-ne v0, v5, :cond_3

    .line 507
    iput v5, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    .line 509
    const-string v3, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAcrossState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 514
    :pswitch_1
    if-nez v0, :cond_3

    .line 516
    const/4 v3, 0x2

    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    .line 517
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v4, v12

    iput-wide v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    .line 518
    const-string v3, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAcrossState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 523
    :pswitch_2
    if-ne v0, v5, :cond_3

    .line 525
    iput v10, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    .line 526
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v6, v12

    iput-wide v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mUpTime:J

    .line 527
    const-string v3, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAcrossState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "mUpTime - mDownTime:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mUpTime:J

    iget-wide v8, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-wide v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mUpTime:J

    iget-wide v8, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1f4

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # invokes: Lcom/vivo/services/motion/ProximityAcrossService;->callNotice()Z
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$300(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$400(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 531
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 532
    .local v2, "msg":Landroid/os/Message;
    iput v10, v2, Landroid/os/Message;->what:I

    .line 533
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$500()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 534
    :try_start_2
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 536
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 538
    :cond_6
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 539
    invoke-virtual {p0}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    .line 540
    iput v5, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    goto/16 :goto_1

    .line 538
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 544
    .end local v2    # "msg":Landroid/os/Message;
    :cond_7
    const-string v3, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "judge state 2: down time too long or isACC_z:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z
    invoke-static {v6}, Lcom/vivo/services/motion/ProximityAcrossService;->access$400(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iput v5, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    goto/16 :goto_1

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 341
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 344
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    :goto_0
    if-eqz v4, :cond_2

    .line 356
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 363
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v5

    .line 348
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reader.readLine():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 352
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 354
    if-eqz v3, :cond_0

    .line 356
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 357
    :catch_2
    move-exception v1

    .line 358
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 357
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 358
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 359
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 354
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 356
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 359
    :cond_1
    :goto_4
    throw v6

    .line 357
    :catch_4
    move-exception v1

    .line 358
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the readFile is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 354
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 351
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method


# virtual methods
.method public IsProxAcrossInFlatState_isSteady(FFF)Z
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 430
    const/4 v8, 0x0

    .line 433
    .local v8, "result":Z
    const-wide/16 v0, 0x0

    .line 434
    .local v0, "acc_x":J
    const-wide/16 v2, 0x0

    .line 435
    .local v2, "acc_y":J
    const-wide/16 v4, 0x0

    .line 437
    .local v4, "acc_z":J
    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v9, p1

    float-to-long v0, v9

    .line 438
    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float v9, v9, p2

    float-to-long v2, v9

    .line 439
    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float v9, v9, p3

    float-to-long v4, v9

    .line 441
    mul-long v10, v0, v0

    mul-long v12, v2, v2

    add-long/2addr v10, v12

    mul-long v12, v4, v4

    add-long v6, v10, v12

    .line 442
    .local v6, "comp_sum":J
    const-wide/32 v10, 0xe4e1c00

    cmp-long v9, v6, v10

    if-gez v9, :cond_3

    const-wide/32 v10, 0x1c9c380

    cmp-long v9, v6, v10

    if-lez v9, :cond_3

    .line 444
    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1302(J)J

    .line 445
    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J
    invoke-static {v2, v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1402(J)J

    .line 446
    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J
    invoke-static {v4, v5}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1502(J)J

    .line 447
    const/4 v8, 0x1

    .line 456
    :goto_0
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 458
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1300()J

    move-result-wide v10

    const-wide/32 v12, 0xffff

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1400()J

    move-result-wide v10

    const-wide/32 v12, 0xffff

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1500()J

    move-result-wide v10

    const-wide/32 v12, 0xffff

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 460
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1300()J

    move-result-wide v10

    sub-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1400()J

    move-result-wide v10

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1500()J

    move-result-wide v10

    sub-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    .line 464
    :cond_0
    const/4 v8, 0x0

    .line 472
    :cond_1
    :goto_1
    if-nez v8, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0xbb8

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0xbb8

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    const-wide/16 v10, -0xbb8

    cmp-long v9, v4, v10

    if-lez v9, :cond_2

    .line 474
    const-wide/32 v10, 0xffff

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J
    invoke-static {v10, v11}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1302(J)J

    .line 475
    const-wide/32 v10, 0xffff

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J
    invoke-static {v10, v11}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1402(J)J

    .line 476
    const-wide/32 v10, 0xffff

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J
    invoke-static {v10, v11}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1502(J)J

    .line 477
    const/4 v8, 0x1

    .line 479
    :cond_2
    const-string v9, "ProximityAcrossService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IsDevInFlatState--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1300()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1400()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1500()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v8

    .line 451
    :cond_3
    const-wide/32 v10, 0xffff

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J
    invoke-static {v10, v11}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1302(J)J

    .line 452
    const-wide/32 v10, 0xffff

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J
    invoke-static {v10, v11}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1402(J)J

    .line 453
    const-wide/32 v10, 0xffff

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J
    invoke-static {v10, v11}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1502(J)J

    .line 454
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 466
    :cond_4
    const-wide/16 v10, -0x1f40

    cmp-long v9, v2, v10

    if-gez v9, :cond_1

    .line 468
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public getThreshold()V
    .locals 4

    .prologue
    .line 328
    new-instance v0, Lcom/vivo/services/motion/ProximityThresholdCal;

    invoke-direct {v0}, Lcom/vivo/services/motion/ProximityThresholdCal;-><init>()V

    .line 329
    .local v0, "mProximityThresholdCal":Lcom/vivo/services/motion/ProximityThresholdCal;
    invoke-virtual {v0}, Lcom/vivo/services/motion/ProximityThresholdCal;->GetProximityCloseThreshold()I

    move-result v1

    if-ltz v1, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/vivo/services/motion/ProximityThresholdCal;->GetProximityCloseThreshold()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownThreshold:F

    .line 333
    :cond_0
    const-string v1, "ProximityAcrossService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThreshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownThreshold:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public isSteady(FFF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 406
    mul-float v1, p1, p1

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    mul-float v2, p3, p3

    add-float v0, v1, v2

    .line 409
    .local v0, "comp_sum":F
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    .line 410
    iget v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->zCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->zCount:I

    .line 414
    :goto_0
    iget v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->zCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 416
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z
    invoke-static {v1, v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$402(Lcom/vivo/services/motion/ProximityAcrossService;Z)Z

    .line 417
    iget v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->zCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->zCount:I

    .line 422
    :goto_1
    const/high16 v1, 0x42dc0000    # 110.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x428c0000    # 70.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 424
    iput v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mSteady:I

    .line 426
    :cond_0
    return-void

    .line 412
    :cond_1
    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->zCount:I

    goto :goto_0

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z
    invoke-static {v1, v4}, Lcom/vivo/services/motion/ProximityAcrossService;->access$402(Lcom/vivo/services/motion/ProximityAcrossService;Z)Z

    goto :goto_1
.end method

.method public pushData(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 387
    iget v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mNum:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 390
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 391
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 392
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-wide v2, v2, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    iput-wide v2, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    .line 387
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 396
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 397
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 398
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v4

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v2, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    .line 399
    const-string v1, "ProximityAcrossService"

    const-string v2, "pushData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const v4, 0x477fff00    # 65535.0f

    const/4 v3, 0x0

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mNum:I

    if-ge v0, v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    aput v4, v1, v3

    .line 371
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    aput v4, v1, v5

    .line 372
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    const/4 v2, 0x2

    aput v4, v1, v2

    .line 373
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

    aget-object v1, v1, v0

    iput-wide v6, v1, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->timestamp:J

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    iput-wide v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mUpTime:J

    .line 377
    iput-wide v6, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mDownTime:J

    .line 378
    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mAcrossState:I

    .line 379
    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->mSteady:I

    .line 380
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z
    invoke-static {v1, v5}, Lcom/vivo/services/motion/ProximityAcrossService;->access$402(Lcom/vivo/services/motion/ProximityAcrossService;Z)Z

    .line 381
    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->zCount:I

    .line 382
    const-string v1, "ProximityAcrossService"

    const-string v2, "reset "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method
