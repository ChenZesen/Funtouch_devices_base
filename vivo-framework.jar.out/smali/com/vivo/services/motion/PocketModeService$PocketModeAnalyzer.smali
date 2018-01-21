.class Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
.super Ljava/lang/Object;
.source "PocketModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PocketModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketModeAnalyzer"
.end annotation


# static fields
.field private static final gsensorNum:I = 0x1e


# instance fields
.field private authCnt:I

.field public authStep:I

.field private countxyz:F

.field private data_debounce:I

.field private data_negative:I

.field private errNum:I

.field private gsensorData:[[F

.field private gsensorDataMax:[F

.field private gsensorDataMin:[F

.field private judgeflag:Z

.field private lastvalueZ:F

.field private lastxyz:F

.field private mFinalStateCnt:I

.field private maxX:F

.field private maxY:F

.field private maxZ:F

.field private mflag:Z

.field private minX:F

.field private minY:F

.field private minZ:F

.field private phone_negative:I

.field private phone_up_count:I

.field final synthetic this$0:Lcom/vivo/services/motion/PocketModeService;

.field private xMaxValue:F

.field private xMinValue:F

.field private yMaxValue:F

.field private yMinValue:F

.field private zMaxValue:F

.field private zMinValue:F


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PocketModeService;)V
    .locals 6

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, -0x3a800000    # -4096.0f

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 434
    iput-object p1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mflag:Z

    .line 407
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minX:F

    .line 408
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxX:F

    .line 409
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minY:F

    .line 410
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxY:F

    .line 411
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minZ:F

    .line 412
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxZ:F

    .line 413
    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_negative:I

    .line 414
    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_negative:I

    .line 416
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMaxValue:F

    .line 417
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMinValue:F

    .line 418
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMaxValue:F

    .line 419
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMinValue:F

    .line 420
    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    .line 421
    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgeflag:Z

    .line 424
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->lastvalueZ:F

    .line 425
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->lastxyz:F

    .line 426
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->countxyz:F

    .line 429
    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->errNum:I

    .line 430
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMin:[F

    .line 431
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMax:[F

    .line 432
    const/16 v0, 0x1e

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    .line 435
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgewithoutfifo(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judge_one(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judge(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private judge(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 685
    const/4 v1, 0x0

    .line 686
    .local v1, "xyTotalValue":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 688
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 689
    const-string v2, "PocketModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " xyTotalValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event.values[0]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event.values[1]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event.values[2]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    if-ne v2, v8, :cond_0

    iget-boolean v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgeflag:Z

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMaxValue:F

    .line 693
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMinValue:F

    .line 694
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMaxValue:F

    .line 695
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMinValue:F

    .line 696
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    .line 697
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    .line 699
    :cond_0
    const-string v2, "ro.product.model.bbk"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "prop":Ljava/lang/String;
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    packed-switch v2, :pswitch_data_0

    .line 828
    :cond_1
    :goto_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->lastvalueZ:F

    .line 829
    const-string v2, "PocketModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "judge gsensor data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v2, "PocketModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fifo auth step"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mFinalStateCnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v0    # "prop":Ljava/lang/String;
    :cond_2
    return-void

    .line 706
    .restart local v0    # "prop":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 709
    :cond_3
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    .line 715
    :goto_1
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 717
    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 718
    iput v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto/16 :goto_0

    .line 713
    :cond_4
    iput v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto :goto_1

    .line 728
    :pswitch_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_5

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    .line 731
    :cond_5
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    .line 738
    :goto_2
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    if-lt v2, v9, :cond_1

    .line 740
    iput v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 741
    iput v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto/16 :goto_0

    .line 735
    :cond_6
    iput v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto :goto_2

    .line 746
    :pswitch_2
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    if-ge v2, v9, :cond_7

    .line 748
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iget v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->lastvalueZ:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 750
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    .line 757
    :cond_7
    :goto_3
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMaxValue:F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 759
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMaxValue:F

    .line 761
    :cond_8
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMinValue:F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 763
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMinValue:F

    .line 765
    :cond_9
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMaxValue:F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 767
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMaxValue:F

    .line 769
    :cond_a
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMinValue:F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 771
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMinValue:F

    .line 773
    :cond_b
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    .line 775
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    .line 777
    :cond_c
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 779
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    .line 781
    :cond_d
    iput-boolean v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgeflag:Z

    .line 782
    const-string v2, "PocketModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(zMaxValue-zMinValue): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    if-lt v2, v9, :cond_1

    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    iget v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 786
    iput v9, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 787
    iput-boolean v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgeflag:Z

    .line 788
    iput v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto/16 :goto_0

    .line 754
    :cond_e
    iput v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto/16 :goto_3

    .line 798
    :pswitch_3
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    float-to-double v2, v2

    const-wide/high16 v4, -0x3fe6000000000000L    # -6.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_12

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    float-to-double v2, v2

    const-wide/high16 v4, 0x401a000000000000L    # 6.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_12

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    const/high16 v3, -0x3fc00000    # -3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    const/high16 v3, 0x41400000    # 12.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 800
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    .line 801
    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 803
    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    if-ne v2, v9, :cond_11

    .line 807
    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/vivo/services/motion/PocketModeService;->access$2000(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 808
    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 810
    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAcceleromererListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;
    invoke-static {v3}, Lcom/vivo/services/motion/PocketModeService;->access$1100(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 812
    :cond_f
    # getter for: Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->access$800()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 813
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 815
    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 817
    :cond_10
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :cond_11
    const/4 v2, 0x4

    iput v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    goto/16 :goto_0

    .line 817
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 824
    :cond_12
    iput v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    goto/16 :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private judge_one(FFF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 470
    const/4 v6, 0x0

    .line 471
    .local v6, "xyTotalValue":F
    mul-float v7, p1, p1

    mul-float v8, p2, p2

    add-float/2addr v7, v8

    mul-float v8, p3, p3

    add-float v6, v7, v8

    .line 473
    const-string v7, "PocketModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " xyTotalValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " event.values[0]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " event.values[1]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " event.values[2]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget-boolean v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgeflag:Z

    if-eqz v7, :cond_0

    .line 476
    iput p1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMaxValue:F

    .line 477
    iput p1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMinValue:F

    .line 478
    iput p2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMaxValue:F

    .line 479
    iput p2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMinValue:F

    .line 480
    iput p3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    .line 481
    iput p3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    .line 483
    :cond_0
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->errNum:I

    const/4 v8, 0x5

    if-ge v7, v8, :cond_2

    .line 485
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->errNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->errNum:I

    .line 500
    :goto_0
    const-string v7, "ro.product.model.bbk"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "prop":Ljava/lang/String;
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    packed-switch v7, :pswitch_data_0

    .line 679
    :cond_1
    :goto_1
    iput p3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->lastvalueZ:F

    .line 681
    const-string v7, "PocketModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fifo auth step"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",cnt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mFinalStateCnt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "phone_up_count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void

    .line 489
    .end local v5    # "prop":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x1d

    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_4

    .line 491
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    const/4 v7, 0x3

    if-ge v1, v7, :cond_3

    .line 493
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    add-int/lit8 v9, v0, -0x1

    aget-object v8, v8, v9

    aget v8, v8, v1

    aput v8, v7, v1

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 489
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 496
    .end local v1    # "j":I
    :cond_4
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aput p1, v7, v8

    .line 497
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aput p2, v7, v8

    .line 498
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aput p3, v7, v8

    goto/16 :goto_0

    .line 549
    .end local v0    # "i":I
    .restart local v5    # "prop":Ljava/lang/String;
    :pswitch_0
    const/4 v7, 0x1

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    goto :goto_1

    .line 553
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x41700000    # 15.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 555
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    .line 562
    :goto_4
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    .line 564
    const/4 v7, 0x2

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 565
    const/4 v7, 0x0

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto/16 :goto_1

    .line 559
    :cond_5
    const/4 v7, 0x0

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto :goto_4

    .line 570
    :pswitch_2
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_6

    .line 572
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->lastvalueZ:F

    cmpl-float v7, p3, v7

    if-lez v7, :cond_d

    .line 574
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    .line 581
    :cond_6
    :goto_5
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMaxValue:F

    cmpg-float v7, v7, p1

    if-gez v7, :cond_7

    .line 583
    iput p1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMaxValue:F

    .line 585
    :cond_7
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMinValue:F

    cmpl-float v7, v7, p1

    if-lez v7, :cond_8

    .line 587
    iput p1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->xMinValue:F

    .line 589
    :cond_8
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMaxValue:F

    cmpg-float v7, v7, p2

    if-gez v7, :cond_9

    .line 591
    iput p2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMaxValue:F

    .line 593
    :cond_9
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMinValue:F

    cmpl-float v7, v7, p2

    if-lez v7, :cond_a

    .line 595
    iput p2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->yMinValue:F

    .line 597
    :cond_a
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    cmpg-float v7, v7, p3

    if-gez v7, :cond_b

    .line 599
    iput p3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    .line 601
    :cond_b
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    cmpl-float v7, v7, p3

    if-lez v7, :cond_c

    .line 603
    iput p3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    .line 605
    :cond_c
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgeflag:Z

    .line 608
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMaxValue:F

    iget v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->zMinValue:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x3fc999999999999aL    # 0.2

    cmpl-double v7, v8, v10

    if-lez v7, :cond_1

    .line 610
    const/4 v7, 0x3

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 611
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgeflag:Z

    .line 612
    const/4 v7, 0x0

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto/16 :goto_1

    .line 578
    :cond_d
    const/4 v7, 0x0

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    goto :goto_5

    .line 618
    :pswitch_3
    float-to-double v8, p1

    const-wide/high16 v10, -0x3fe6000000000000L    # -6.5

    cmpl-double v7, v8, v10

    if-lez v7, :cond_18

    float-to-double v8, p1

    const-wide/high16 v10, 0x401a000000000000L    # 6.5

    cmpg-double v7, v8, v10

    if-gez v7, :cond_18

    const/high16 v7, -0x3fc00000    # -3.0f

    cmpl-float v7, p2, v7

    if-lez v7, :cond_18

    const/high16 v7, 0x41200000    # 10.0f

    cmpg-float v7, p2, v7

    if-gez v7, :cond_18

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, p3, v7

    if-lez v7, :cond_18

    const/high16 v7, 0x41400000    # 12.0f

    cmpg-float v7, p3, v7

    if-gez v7, :cond_18

    .line 620
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    .line 621
    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_1

    .line 623
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_6
    const/4 v7, 0x3

    if-ge v4, v7, :cond_e

    .line 625
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMin:[F

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aget v8, v8, v4

    aput v8, v7, v4

    .line 626
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMax:[F

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aget v8, v8, v4

    aput v8, v7, v4

    .line 623
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 628
    :cond_e
    const/4 v2, 0x1

    .local v2, "m":I
    :goto_7
    const/16 v7, 0x1e

    if-ge v2, v7, :cond_f

    .line 630
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_14

    .line 649
    :cond_f
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMax:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMin:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    cmpl-double v7, v8, v10

    if-gtz v7, :cond_10

    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMax:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMin:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    cmpl-double v7, v8, v10

    if-gtz v7, :cond_10

    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMax:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMin:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    cmpl-double v7, v8, v10

    if-lez v7, :cond_1

    .line 651
    :cond_10
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 655
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/vivo/services/motion/PocketModeService;->access$2000(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 656
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 660
    :cond_11
    # getter for: Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->access$800()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 661
    :try_start_0
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 663
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 665
    :cond_12
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :cond_13
    const/4 v7, 0x4

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 668
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I
    invoke-static {v8}, Lcom/vivo/services/motion/PocketModeService;->access$1400(Lcom/vivo/services/motion/PocketModeService;)I

    move-result v8

    # setter for: Lcom/vivo/services/motion/PocketModeService;->Totalcnt:I
    invoke-static {v7, v8}, Lcom/vivo/services/motion/PocketModeService;->access$1902(Lcom/vivo/services/motion/PocketModeService;I)I

    goto/16 :goto_1

    .line 634
    :cond_14
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_8
    const/4 v7, 0x3

    if-ge v3, v7, :cond_17

    .line 636
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v7, v7, v2

    aget v7, v7, v3

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMin:[F

    aget v8, v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_15

    .line 638
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMin:[F

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v8, v8, v2

    aget v8, v8, v3

    aput v8, v7, v3

    .line 640
    :cond_15
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v7, v7, v2

    aget v7, v7, v3

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMax:[F

    aget v8, v8, v3

    cmpl-float v7, v7, v8

    if-lez v7, :cond_16

    .line 642
    iget-object v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorDataMax:[F

    iget-object v8, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v8, v8, v2

    aget v8, v8, v3

    aput v8, v7, v3

    .line 634
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 628
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 665
    .end local v3    # "n":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 675
    .end local v2    # "m":I
    .end local v4    # "p":I
    :cond_18
    const/4 v7, 0x0

    iput v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    goto/16 :goto_1

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private judgewithoutfifo(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 835
    const v2, 0x411ccccd    # 9.8f

    .line 836
    .local v2, "xyz":F
    const/4 v1, 0x0

    .line 837
    .local v1, "x":F
    const/4 v3, 0x0

    .line 838
    .local v3, "y":F
    const v4, 0x411ccccd    # 9.8f

    .line 839
    .local v4, "z":F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 840
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v3, v5, v6

    .line 841
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v4, v5, v6

    .line 843
    const-string v5, "ro.product.model.bbk"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "prop":Ljava/lang/String;
    const-string v5, "PocketModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " z "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    if-eqz v0, :cond_10

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v5, :cond_10

    .line 848
    const-wide v6, 0x40239eb851eb851fL    # 9.81

    mul-float v5, v1, v1

    mul-float v8, v3, v3

    add-float/2addr v5, v8

    mul-float v8, v4, v4

    add-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide v8, 0x3fe3333333333333L    # 0.6

    sub-double/2addr v6, v8

    double-to-float v2, v6

    .line 854
    :goto_0
    iget-boolean v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mflag:Z

    if-eqz v5, :cond_0

    .line 856
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mflag:Z

    .line 857
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minX:F

    .line 858
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxX:F

    .line 859
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minY:F

    .line 860
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxY:F

    .line 861
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minZ:F

    .line 862
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxZ:F

    .line 864
    :cond_0
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minX:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_1

    .line 865
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minX:F

    .line 866
    :cond_1
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minY:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 867
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minY:F

    .line 868
    :cond_2
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minZ:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    .line 869
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minZ:F

    .line 870
    :cond_3
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxX:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_4

    .line 871
    iput v1, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxX:F

    .line 872
    :cond_4
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxY:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_5

    .line 873
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxY:F

    .line 874
    :cond_5
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxZ:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_6

    .line 875
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxZ:F

    .line 876
    :cond_6
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    if-nez v5, :cond_8

    .line 878
    float-to-double v6, v2

    const-wide v8, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_7

    float-to-double v6, v2

    const-wide v8, -0x402ccccccccccccdL    # -0.3

    cmpg-double v5, v6, v8

    if-gez v5, :cond_8

    .line 880
    :cond_7
    const/4 v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 883
    :cond_8
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 886
    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_11

    .line 888
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 889
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_9

    .line 891
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 892
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    .line 893
    const/4 v5, 0x2

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 905
    :cond_9
    :goto_1
    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_12

    .line 907
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_negative:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_negative:I

    .line 908
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_negative:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_a

    .line 910
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_negative:I

    .line 911
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_negative:I

    .line 912
    const/4 v5, 0x3

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 925
    :cond_a
    :goto_2
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 928
    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_13

    .line 930
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 931
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_b

    .line 933
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 934
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    .line 935
    const/4 v5, 0x3

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 948
    :cond_b
    :goto_3
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    .line 950
    float-to-double v6, v1

    const-wide/high16 v8, -0x3fe6000000000000L    # -6.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_14

    float-to-double v6, v1

    const-wide/high16 v8, 0x401a000000000000L    # 6.5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_14

    float-to-double v6, v3

    const-wide/high16 v8, -0x3ff8000000000000L    # -3.0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_14

    float-to-double v6, v3

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_14

    float-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_14

    float-to-double v6, v4

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_14

    .line 954
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 955
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_c

    .line 957
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 958
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    .line 959
    const/4 v5, 0x4

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 972
    :cond_c
    :goto_4
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_f

    .line 974
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxX:F

    iget v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minX:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_f

    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxY:F

    iget v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minY:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_f

    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxZ:F

    iget v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minZ:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_f

    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxX:F

    iget v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minX:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_d

    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxY:F

    iget v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minY:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_d

    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxZ:F

    iget v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minZ:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_f

    .line 981
    :cond_d
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 986
    # getter for: Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->access$800()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 987
    :try_start_0
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 989
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 991
    :cond_e
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 994
    iget-object v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v5}, Lcom/vivo/services/motion/PocketModeService;->access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # getter for: Lcom/vivo/services/motion/PocketModeService;->mAcceleromererListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;
    invoke-static {v6}, Lcom/vivo/services/motion/PocketModeService;->access$1100(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 999
    :cond_f
    const-string v5, "PocketModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "judgewithoutfifo authStep:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phone_up_count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "xyz "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void

    .line 852
    :cond_10
    const-wide v6, 0x40239eb851eb851fL    # 9.81

    mul-float v5, v1, v1

    mul-float v8, v3, v3

    add-float/2addr v5, v8

    mul-float v8, v4, v4

    add-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v6, v8

    double-to-float v2, v6

    goto/16 :goto_0

    .line 898
    :cond_11
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    .line 899
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_9

    .line 901
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 902
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    goto/16 :goto_1

    .line 917
    :cond_12
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_negative:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_negative:I

    .line 918
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_negative:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_a

    .line 920
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_negative:I

    .line 921
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_negative:I

    goto/16 :goto_2

    .line 940
    :cond_13
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    .line 941
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    .line 943
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 944
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    goto/16 :goto_3

    .line 964
    :cond_14
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    .line 965
    iget v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_c

    .line 967
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 968
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    goto/16 :goto_4

    .line 991
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method


# virtual methods
.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, -0x3a800000    # -4096.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 438
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    .line 439
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authCnt:I

    .line 440
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->authStep:I

    .line 441
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mFinalStateCnt:I

    .line 442
    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->this$0:Lcom/vivo/services/motion/PocketModeService;

    # setter for: Lcom/vivo/services/motion/PocketModeService;->isAuthWorking:Z
    invoke-static {v2, v3}, Lcom/vivo/services/motion/PocketModeService;->access$602(Lcom/vivo/services/motion/PocketModeService;Z)Z

    .line 443
    iput-boolean v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->judgeflag:Z

    .line 445
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_up_count:I

    .line 446
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_debounce:I

    .line 447
    iput-boolean v6, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->mflag:Z

    .line 448
    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->lastxyz:F

    .line 449
    iput v5, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->countxyz:F

    .line 450
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minX:F

    .line 451
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxX:F

    .line 452
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minY:F

    .line 453
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxY:F

    .line 454
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->minZ:F

    .line 455
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->maxZ:F

    .line 456
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->phone_negative:I

    .line 457
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->data_negative:I

    .line 458
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->errNum:I

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    .line 462
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->gsensorData:[[F

    aget-object v2, v2, v0

    aput v4, v2, v1

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "j":I
    :cond_1
    return-void
.end method
