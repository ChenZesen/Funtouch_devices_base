.class Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "MoveService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MoveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/MoveService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/MoveService;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/MoveService;Lcom/vivo/services/motion/MoveService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/MoveService;
    .param p2, "x1"    # Lcom/vivo/services/motion/MoveService$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/MoveService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v8, 0x3f7d70a4    # 0.99f

    const v7, 0x3c23d700    # 0.00999999f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "ScreenOffWakeupState":Ljava/lang/String;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 62
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->filterFlag:Z
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$000(Lcom/vivo/services/motion/MoveService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 65
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 66
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 68
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # setter for: Lcom/vivo/services/motion/MoveService;->filterFlag:Z
    invoke-static {v1, v4}, Lcom/vivo/services/motion/MoveService;->access$002(Lcom/vivo/services/motion/MoveService;Z)Z

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v2

    aget v2, v2, v4

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    aput v2, v1, v4

    .line 72
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v2

    aget v2, v2, v5

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 73
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v2

    aget v2, v2, v6

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 74
    const-string v1, "MoveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " gravityValues[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gravityValues[1]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gravityValues[2]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->mMoveAnalyzer:Lcom/vivo/services/motion/MoveService$MoveAnalyzer;
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$200(Lcom/vivo/services/motion/MoveService;)Lcom/vivo/services/motion/MoveService$MoveAnalyzer;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v3

    aget v3, v3, v5

    iget-object v4, p0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->gravityValues:[F
    invoke-static {v4}, Lcom/vivo/services/motion/MoveService;->access$100(Lcom/vivo/services/motion/MoveService;)[F

    move-result-object v4

    aget v4, v4, v6

    # invokes: Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->judge(FFF)V
    invoke-static {v1, v2, v3, v4}, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->access$300(Lcom/vivo/services/motion/MoveService$MoveAnalyzer;FFF)V

    .line 79
    :cond_1
    return-void
.end method
