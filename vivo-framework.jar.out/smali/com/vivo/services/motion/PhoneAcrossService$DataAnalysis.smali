.class Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
.super Ljava/lang/Object;
.source "PhoneAcrossService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataAnalysis"
.end annotation


# static fields
.field private static final GYRO_NUM1:I = 0xf

.field private static final GYRO_NUM2:I = 0x6

.field private static final LACC_MOVE_NUM:I = 0x5

.field private static final LACC_STATIC_NUM:I = 0x5

.field private static final MOTION_DET_GYRO_SAMPLE_TOTAL:I = 0x64

.field private static final MOTION_DET_LACC_SAMPLE_TOTAL:I = 0x64


# instance fields
.field private GYRO_THRESHOLD1:D

.field private GYRO_THRESHOLD2:D

.field private awayErrorNum1:I

.field private awayErrorNum2:I

.field private closeErrorNum1:I

.field private closeErrorNum2:I

.field public gyro_data_collect_buf:[[F

.field private gyroscopeAwayDataNum1:I

.field private gyroscopeAwayDataNum2:I

.field private gyroscopeAwayNumMax1:I

.field private gyroscopeAwayNumMax2:I

.field private gyroscopeCloseDataNum1:I

.field private gyroscopeCloseDataNum2:I

.field private gyroscopeCloseNumMax1:I

.field private gyroscopeCloseNumMax2:I

.field private gyroscopeFlag:Z

.field private gyroscopeState:I

.field private gyroscopeX:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

.field private gyroscopeY:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

.field private gyroscopeZ:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

.field public lacc_data_collect_buf:[F

.field private linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

.field private linearAccelerationState:I

.field msg:Landroid/os/Message;

.field final synthetic this$0:Lcom/vivo/services/motion/PhoneAcrossService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/PhoneAcrossService;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 270
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    .line 273
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    .line 283
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {v0, v1, v3}, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    .line 285
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {v0, v1, v3}, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeX:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    .line 286
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {v0, v1, v3}, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeY:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    .line 287
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {v0, v1, v3}, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeZ:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    .line 289
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    .line 290
    const/4 v0, 0x3

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    .line 292
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    .line 293
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    .line 295
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum1:I

    .line 296
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum1:I

    .line 297
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum1:I

    .line 298
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum1:I

    .line 300
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum2:I

    .line 301
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum2:I

    .line 302
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum2:I

    .line 303
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum2:I

    .line 305
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax1:I

    .line 306
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax1:I

    .line 307
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax2:I

    .line 308
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax2:I

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p2, "x1"    # Lcom/vivo/services/motion/PhoneAcrossService$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    .prologue
    .line 270
    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    .param p1, "x1"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    return p1
.end method


# virtual methods
.method public gyroscopeAnalysis(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 431
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v8

    .line 432
    .local v1, "x":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v9

    .line 433
    .local v2, "y":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v7

    .line 434
    .local v3, "z":F
    const-string v4, "PhoneAcrossService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " gyroscopeX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Z: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v0, 0x63

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 437
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    aget v5, v5, v8

    aput v5, v4, v8

    .line 438
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    aget v5, v5, v9

    aput v5, v4, v9

    .line 439
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    aget v5, v5, v7

    aput v5, v4, v7

    .line 435
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    aget-object v4, v4, v8

    aput v1, v4, v8

    .line 442
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    aget-object v4, v4, v8

    aput v2, v4, v9

    .line 443
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyro_data_collect_buf:[[F

    aget-object v4, v4, v8

    aput v3, v4, v7

    .line 445
    iget-boolean v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeFlag:Z

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeX:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v1, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 448
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeY:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v2, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 449
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeZ:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v3, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 451
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeX:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v1, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 452
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeY:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v2, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 453
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeZ:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v3, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 455
    iput-boolean v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeFlag:Z

    .line 458
    :cond_1
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeX:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_2

    .line 460
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeX:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v1, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 462
    :cond_2
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeY:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    .line 464
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeY:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v2, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 466
    :cond_3
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeZ:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_4

    .line 468
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeZ:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v3, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 470
    :cond_4
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeX:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    .line 472
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeX:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v1, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 474
    :cond_5
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeY:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_6

    .line 476
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeY:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v2, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 478
    :cond_6
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeZ:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_7

    .line 480
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeZ:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iput v3, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 484
    :cond_7
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    float-to-double v4, v3

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_9

    :cond_8
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_14

    float-to-double v4, v3

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_14

    .line 487
    :cond_9
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum1:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum1:I

    .line 488
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum1:I

    iget v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax1:I

    if-le v4, v5, :cond_a

    .line 490
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum1:I

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax1:I

    .line 505
    :cond_a
    :goto_1
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

    float-to-double v4, v3

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_c

    :cond_b
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_15

    float-to-double v4, v3

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD1:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_15

    .line 508
    :cond_c
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum1:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum1:I

    .line 509
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum1:I

    iget v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax1:I

    if-le v4, v5, :cond_d

    .line 511
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum1:I

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax1:I

    .line 526
    :cond_d
    :goto_2
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_e

    float-to-double v4, v3

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_f

    :cond_e
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_16

    float-to-double v4, v3

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_16

    .line 529
    :cond_f
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum2:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum2:I

    .line 530
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum2:I

    iget v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax2:I

    if-le v4, v5, :cond_10

    .line 532
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum2:I

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax2:I

    .line 547
    :cond_10
    :goto_3
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_11

    float-to-double v4, v3

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_12

    :cond_11
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_17

    float-to-double v4, v3

    iget-wide v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->GYRO_THRESHOLD2:D

    neg-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_17

    .line 550
    :cond_12
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum2:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum2:I

    .line 551
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum2:I

    iget v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax2:I

    if-le v4, v5, :cond_13

    .line 553
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum2:I

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax2:I

    .line 565
    :cond_13
    :goto_4
    const-string v4, "PhoneAcrossService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " gyroscopeCloseDataNum1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gyroscopeAwayDataNum1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gyroscopeCloseDataNum2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gyroscopeAwayDataNum2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void

    .line 495
    :cond_14
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum1:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum1:I

    .line 496
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum1:I

    if-le v4, v9, :cond_a

    .line 498
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum1:I

    .line 499
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum1:I

    goto/16 :goto_1

    .line 516
    :cond_15
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum1:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum1:I

    .line 517
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum1:I

    if-le v4, v9, :cond_d

    .line 519
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum1:I

    .line 520
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum1:I

    goto/16 :goto_2

    .line 537
    :cond_16
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum2:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum2:I

    .line 538
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum2:I

    if-le v4, v9, :cond_10

    .line 540
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum2:I

    .line 541
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum2:I

    goto/16 :goto_3

    .line 558
    :cond_17
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum2:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum2:I

    .line 559
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum2:I

    if-le v4, v9, :cond_13

    .line 561
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum2:I

    .line 562
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum2:I

    goto :goto_4
.end method

.method public gyroscopeJudge()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x6

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 573
    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax1:I

    if-lt v0, v5, :cond_2

    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax1:I

    iget v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax1:I

    if-le v0, v1, :cond_2

    .line 575
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    .line 582
    :cond_0
    :goto_0
    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax2:I

    if-lt v0, v4, :cond_3

    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax2:I

    iget v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax2:I

    if-le v0, v1, :cond_3

    .line 584
    iput v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    .line 590
    :cond_1
    :goto_1
    const-string v0, "PhoneAcrossService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " gyroscopeCloseNumMax1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gyroscopeAwayNumMax1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gyroscopeCloseNumMax2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gyroscopeAwayNumMax2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void

    .line 577
    :cond_2
    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax1:I

    if-lt v0, v5, :cond_0

    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax1:I

    iget v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax1:I

    if-le v0, v1, :cond_0

    .line 579
    iput v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    goto :goto_0

    .line 586
    :cond_3
    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax2:I

    if-lt v0, v4, :cond_1

    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax2:I

    iget v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax2:I

    if-le v0, v1, :cond_1

    .line 588
    iput v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    goto :goto_1
.end method

.method public linearAccelerationAnalysis(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 316
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v8

    .line 317
    .local v1, "x":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v9

    .line 318
    .local v2, "y":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v10

    .line 320
    .local v3, "z":F
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    packed-switch v4, :pswitch_data_0

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 323
    :pswitch_0
    const/16 v0, 0x63

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_1

    .line 325
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    aput v5, v4, v0

    .line 323
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 327
    :cond_1
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    aput v5, v4, v8

    .line 329
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v8

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 330
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v8

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 332
    const/4 v0, 0x1

    :goto_2
    if-ge v0, v11, :cond_4

    .line 334
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 336
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 339
    :cond_2
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 341
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 332
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 344
    :cond_4
    const-string v4, "PhoneAcrossService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxminVal1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v6, v6, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v7, v7, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v5, v5, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 348
    iput v9, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    .line 349
    const-string v4, "PhoneAcrossService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++++0+++++linearAccelerationState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 354
    .end local v0    # "i":I
    :pswitch_1
    const/16 v0, 0x63

    .restart local v0    # "i":I
    :goto_3
    if-lez v0, :cond_5

    .line 356
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    aput v5, v4, v0

    .line 354
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 358
    :cond_5
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    aput v5, v4, v8

    .line 360
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v8

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 361
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v8

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 363
    const/4 v0, 0x1

    :goto_4
    if-ge v0, v11, :cond_8

    .line 365
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 367
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 370
    :cond_6
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 372
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 363
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 375
    :cond_8
    const-string v4, "PhoneAcrossService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " linearAcceleration.maxVal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v6, v6, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " linearAcceleration.minVal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v6, v6, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    .line 380
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    .line 381
    const-string v4, "PhoneAcrossService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++++1+++++linearAccelerationState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_9
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    if-nez v4, :cond_0

    .line 386
    const/4 v0, 0x1

    :goto_5
    const/16 v4, 0x64

    if-ge v0, v4, :cond_c

    .line 388
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 390
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 393
    :cond_a
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 395
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->lacc_data_collect_buf:[F

    aget v5, v5, v0

    iput v5, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    .line 386
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 398
    :cond_c
    const-string v4, "PhoneAcrossService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxminVal2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v6, v6, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v7, v7, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v4, v4, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAcceleration:Lcom/vivo/services/motion/PhoneAcrossService$motionPara;

    iget v5, v5, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    .line 402
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeJudge()V

    .line 403
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    if-ne v4, v9, :cond_e

    .line 405
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    .line 406
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$300(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 408
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$300(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 420
    :cond_d
    :goto_6
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->reset()V

    goto/16 :goto_0

    .line 411
    :cond_e
    iget v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    if-ne v4, v10, :cond_d

    .line 413
    iput v8, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    .line 414
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$300(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 416
    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$300(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 598
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I

    .line 599
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeState:I

    .line 601
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum1:I

    .line 602
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum1:I

    .line 603
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum1:I

    .line 604
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum1:I

    .line 606
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseDataNum2:I

    .line 607
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->closeErrorNum2:I

    .line 608
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayDataNum2:I

    .line 609
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->awayErrorNum2:I

    .line 611
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax1:I

    .line 612
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax1:I

    .line 613
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeCloseNumMax2:I

    .line 614
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAwayNumMax2:I

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeFlag:Z

    .line 618
    const-string v0, "PhoneAcrossService"

    const-string v1, "++++++++++++++++++++++++++++reset+++++++++++++++++++++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method
