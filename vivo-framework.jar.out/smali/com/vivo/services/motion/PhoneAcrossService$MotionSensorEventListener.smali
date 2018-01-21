.class Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "PhoneAcrossService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field private pick_up_cnt:I

.field final synthetic this$0:Lcom/vivo/services/motion/PhoneAcrossService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/PhoneAcrossService;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->pick_up_cnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p2, "x1"    # Lcom/vivo/services/motion/PhoneAcrossService$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 147
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 65
    :sswitch_0
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$000(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gPickUpFlag:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$100(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->pickUpTriger:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$200(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$300(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$300(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # setter for: Lcom/vivo/services/motion/PhoneAcrossService;->pickUpTriger:Z
    invoke-static {v0, v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$202(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->aFilterFlag:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$400(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 76
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 77
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 79
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # setter for: Lcom/vivo/services/motion/PhoneAcrossService;->aFilterFlag:Z
    invoke-static {v0, v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$402(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    const v1, 0x3f7d70a4    # 0.99f

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v2

    aget v2, v2, v4

    mul-float/2addr v1, v2

    const v2, 0x3c23d700    # 0.00999999f

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 83
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    const v1, 0x3f7d70a4    # 0.99f

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v2

    aget v2, v2, v5

    mul-float/2addr v1, v2

    const v2, 0x3c23d700    # 0.00999999f

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 84
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    const v1, 0x3f7d70a4    # 0.99f

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v2

    aget v2, v2, v6

    mul-float/2addr v1, v2

    const v2, 0x3c23d700    # 0.00999999f

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 88
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$000(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpStaticFlag:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$600(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mMoveAnalyzer:Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$700(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v2

    aget v2, v2, v5

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/PhoneAcrossService;->access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v3

    aget v3, v3, v6

    # invokes: Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->judge(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->access$800(Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;FFF)V

    goto/16 :goto_0

    .line 95
    :sswitch_1
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationAnalysis(Landroid/hardware/SensorEvent;)V

    goto/16 :goto_0

    .line 99
    :sswitch_2
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gPickUpFlag:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$100(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 101
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    .line 103
    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->pick_up_cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->pick_up_cnt:I

    .line 109
    :goto_1
    iget v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->pick_up_cnt:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    .line 111
    const-string v0, "PhoneAcrossService"

    const-string v1, " gPickUpFlag: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->pick_up_cnt:I

    .line 113
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # setter for: Lcom/vivo/services/motion/PhoneAcrossService;->gPickUpFlag:Z
    invoke-static {v0, v5}, Lcom/vivo/services/motion/PhoneAcrossService;->access$102(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gFilterFlag:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1000(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 119
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 120
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 122
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # setter for: Lcom/vivo/services/motion/PhoneAcrossService;->gFilterFlag:Z
    invoke-static {v0, v4}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1002(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v1

    aget v1, v1, v4

    mul-float/2addr v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 126
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v1

    aget v1, v1, v5

    mul-float/2addr v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 127
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v1

    aget v1, v1, v6

    mul-float/2addr v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 131
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v1

    aget v1, v1, v4

    aput v1, v0, v4

    .line 132
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v1

    aget v1, v1, v5

    aput v1, v0, v5

    .line 133
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F

    move-result-object v1

    aget v1, v1, v6

    aput v1, v0, v6

    .line 134
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v0

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->access$1200(Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 136
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->gyroscopeAnalysis(Landroid/hardware/SensorEvent;)V

    goto/16 :goto_0

    .line 107
    :cond_7
    iput v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;->pick_up_cnt:I

    goto/16 :goto_1

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_2
        0xa -> :sswitch_1
    .end sparse-switch
.end method
