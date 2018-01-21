.class Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "GestureService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/GestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/GestureService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/GestureService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/GestureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/GestureService;Lcom/vivo/services/motion/GestureService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/GestureService;
    .param p2, "x1"    # Lcom/vivo/services/motion/GestureService$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/GestureService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 127
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x7

    const/4 v4, 0x3

    const/high16 v3, 0x42c60000    # 99.0f

    const/high16 v2, 0x42b00000    # 88.0f

    .line 72
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 77
    :sswitch_0
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/GestureService;

    # getter for: Lcom/vivo/services/motion/GestureService;->mCapturing:Z
    invoke-static {v0}, Lcom/vivo/services/motion/GestureService;->access$000(Lcom/vivo/services/motion/GestureService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/GestureService;

    # getter for: Lcom/vivo/services/motion/GestureService;->mAutoStopOn:Z
    invoke-static {v0}, Lcom/vivo/services/motion/GestureService;->access$100(Lcom/vivo/services/motion/GestureService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v1, 0xf

    aget v0, v0, v1

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 86
    :cond_1
    const-string v0, "GestureService"

    const-string v1, "auto stop nomal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/GestureService;

    # invokes: Lcom/vivo/services/motion/GestureService;->stopMotionRecognitionServiceInternel()Z
    invoke-static {v0}, Lcom/vivo/services/motion/GestureService;->access$200(Lcom/vivo/services/motion/GestureService;)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v1, 0xf

    aget v0, v0, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/GestureService;

    # operator++ for: Lcom/vivo/services/motion/GestureService;->mAutoStopCnt:I
    invoke-static {v0}, Lcom/vivo/services/motion/GestureService;->access$308(Lcom/vivo/services/motion/GestureService;)I

    .line 95
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/GestureService;

    # getter for: Lcom/vivo/services/motion/GestureService;->mAutoStopCnt:I
    invoke-static {v0}, Lcom/vivo/services/motion/GestureService;->access$300(Lcom/vivo/services/motion/GestureService;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 97
    const-string v0, "GestureService"

    const-string v1, "auto stop time out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/GestureService;

    # invokes: Lcom/vivo/services/motion/GestureService;->stopMotionRecognitionServiceInternel()Z
    invoke-static {v0}, Lcom/vivo/services/motion/GestureService;->access$200(Lcom/vivo/services/motion/GestureService;)Z

    goto :goto_0

    .line 104
    :cond_3
    # getter for: Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$400()Lcom/vivo/services/motion/gesture/MotionDetect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/services/motion/gesture/MotionDetect;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto/16 :goto_0

    .line 110
    :cond_4
    # getter for: Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$400()Lcom/vivo/services/motion/gesture/MotionDetect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/services/motion/gesture/MotionDetect;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto/16 :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method
