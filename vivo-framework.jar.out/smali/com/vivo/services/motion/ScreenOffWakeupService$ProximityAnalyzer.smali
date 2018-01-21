.class Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;
.super Ljava/lang/Object;
.source "ScreenOffWakeupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ScreenOffWakeupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityAnalyzer"
.end annotation


# instance fields
.field private last_prox:I

.field private last_prox1:I

.field private last_prox2:I

.field private last_prox3:I

.field private last_prox4:I

.field private logic_value:I

.field private mDownTime:J

.field private mDownTime1:J

.field private mStartTime:J

.field private mUpTime:J

.field private mUpTime1:J

.field private proximityStep:I

.field final synthetic this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ScreenOffWakeupService;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    .line 499
    iput-object p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    .line 486
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox1:I

    .line 487
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox2:I

    .line 488
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox3:I

    .line 489
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox4:I

    .line 490
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    .line 491
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    .line 492
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime:J

    .line 493
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime1:J

    .line 494
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime:J

    .line 495
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime1:J

    .line 496
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mStartTime:J

    .line 500
    return-void
.end method

.method static synthetic access$700(Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->judge(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private judge(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 527
    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_0

    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_7

    .line 529
    :cond_0
    const/4 v5, 0x0

    .line 530
    .local v5, "mProximityThreshold":F
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1700(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 532
    iget-object v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1700(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/content/Context;

    move-result-object v7

    const-string v9, "sensor"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v8, v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1002(Lcom/vivo/services/motion/ScreenOffWakeupService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 534
    :cond_1
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 536
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    iget-object v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v8}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v7, v8}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1802(Lcom/vivo/services/motion/ScreenOffWakeupService;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 538
    :cond_2
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1800(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/Sensor;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 540
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1800(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/Sensor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 543
    :cond_3
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_8

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    cmpg-float v7, v7, v5

    if-gez v7, :cond_8

    const/4 v7, 0x0

    :goto_0
    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    .line 547
    const/16 v7, 0x400

    :try_start_0
    new-array v0, v7, [C

    .line 548
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v7, "/sys/class/switch/hall/state"

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    .local v2, "file":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 552
    .local v4, "len":I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->newState:I
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1902(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 568
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v4    # "len":I
    :goto_1
    const-string v7, "ScreenOffWakeupService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->newState:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1900()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->newState:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1900()I

    move-result v7

    if-nez v7, :cond_4

    .line 571
    const/4 v7, 0x0

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    .line 572
    const/4 v7, 0x1

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->newState:I
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1902(I)I

    .line 575
    :cond_4
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    iget v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    if-eq v7, v8, :cond_5

    .line 576
    const-string v7, "screenoff"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logic_value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "last_prox:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "last_prox1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_5
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    packed-switch v7, :pswitch_data_0

    .line 672
    :cond_6
    :goto_2
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox3:I

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox4:I

    .line 673
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox2:I

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox3:I

    .line 674
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox1:I

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox2:I

    .line 675
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox1:I

    .line 676
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    .line 677
    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mStartTime:J

    .line 679
    .end local v5    # "mProximityThreshold":F
    :cond_7
    :goto_3
    return-void

    .line 543
    .restart local v5    # "mProximityThreshold":F
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 556
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v7
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 559
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "ScreenOffWakeupService"

    const-string v8, "This kernel does not have hall support"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 563
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ScreenOffWakeupService"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 581
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    if-nez v7, :cond_6

    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 587
    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime:J

    .line 588
    const/4 v7, 0x2

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    goto :goto_2

    .line 593
    :pswitch_1
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 595
    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime:J

    .line 596
    const-string v7, "ScreenOffWakeupService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUpTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mUpTime-mDownTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime:J

    iget-wide v12, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime:J

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "proximityStep:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-wide v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime:J

    iget-wide v10, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-gez v7, :cond_b

    .line 599
    const/4 v7, 0x3

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    .line 622
    :cond_9
    :goto_4
    :pswitch_2
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isAuthWorking:Z
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1300(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 624
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$2000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$2000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_a

    .line 626
    const-string v7, "ScreenOffWakeupService"

    const-string v8, "mAWakeLock acquire"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$2000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 630
    :cond_a
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    const/4 v8, 0x1

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isAuthWorking:Z
    invoke-static {v7, v8}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1302(Lcom/vivo/services/motion/ScreenOffWakeupService;Z)Z

    .line 632
    const-string v7, "ScreenOffWakeupService"

    const-string v8, "registerListener mAcceleromererListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    sget-boolean v7, Lcom/vivo/services/motion/AllConfig;->mScreenOffWakeupDeviceNode:Z

    if-eqz v7, :cond_10

    .line 635
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 636
    .local v6, "msg":Landroid/os/Message;
    const/4 v7, 0x5

    iput v7, v6, Landroid/os/Message;->what:I

    .line 637
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$400()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 638
    :try_start_4
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->getAccDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$2100(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 640
    const-string v7, "ScreenOffWakeupService"

    const-string v9, "MSG_SCREEN_OFF_WAKEUP_Get_AccData,3"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    const/4 v7, 0x4

    if-ge v3, v7, :cond_d

    .line 643
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->getAccDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$2100(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x5

    add-int/lit8 v10, v3, 0x1

    mul-int/lit8 v10, v10, 0x64

    int-to-long v10, v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 641
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 603
    .end local v3    # "i":I
    .end local v6    # "msg":Landroid/os/Message;
    :cond_b
    const/4 v7, 0x1

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    .line 604
    const-string v7, "ScreenOffWakeupService"

    const-string v8, "down time too long, return."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox1:I

    .line 606
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    .line 607
    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mStartTime:J

    goto/16 :goto_3

    .line 611
    :cond_c
    iget v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    if-nez v7, :cond_9

    .line 613
    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime1:J

    .line 614
    iget-wide v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime1:J

    iget-wide v10, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-lez v7, :cond_9

    .line 616
    const/4 v7, 0x1

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    .line 617
    const-string v7, "ScreenOffWakeupService"

    const-string v8, "down time too long, return."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 646
    .restart local v6    # "msg":Landroid/os/Message;
    :cond_d
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 647
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$400()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 648
    :try_start_6
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 650
    const-string v7, "ScreenOffWakeupService"

    const-string v9, "MSG_SCREEN_OFF_WAKEUP_STOP_ACC_DET,500"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x4

    const-wide/16 v10, 0x1c2

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 653
    :cond_e
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 665
    .end local v6    # "msg":Landroid/os/Message;
    :cond_f
    :goto_6
    const/4 v7, 0x4

    iput v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    goto/16 :goto_2

    .line 646
    .restart local v6    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7

    .line 653
    :catchall_2
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v7

    .line 657
    .end local v6    # "msg":Landroid/os/Message;
    :cond_10
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v7

    if-eqz v7, :cond_f

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$000()I

    move-result v7

    if-nez v7, :cond_f

    .line 659
    iget-object v7, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mAcceleromererListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;
    invoke-static {v8}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1100(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v9}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    const/16 v10, 0x61a8

    iget-object v11, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 661
    const/4 v7, 0x0

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->datacount:I
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$102(I)I

    .line 662
    const/4 v7, 0x1

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static {v7}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$002(I)I

    goto :goto_6

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    .line 503
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    .line 504
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox1:I

    .line 505
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox2:I

    .line 506
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox3:I

    .line 507
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox4:I

    .line 508
    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->logic_value:I

    .line 509
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    .line 510
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime:J

    .line 511
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime1:J

    .line 512
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime:J

    .line 513
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime1:J

    .line 514
    iput-wide v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mStartTime:J

    .line 515
    return-void
.end method

.method public temreset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 518
    iput v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->last_prox:I

    .line 519
    iput v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->proximityStep:I

    .line 520
    iput-wide v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime:J

    .line 521
    iput-wide v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mUpTime1:J

    .line 522
    iput-wide v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime:J

    .line 523
    iput-wide v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->mDownTime1:J

    .line 524
    return-void
.end method
