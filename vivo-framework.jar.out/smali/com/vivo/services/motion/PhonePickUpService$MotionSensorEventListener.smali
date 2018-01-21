.class Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "PhonePickUpService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhonePickUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PhonePickUpService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/PhonePickUpService;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/PhonePickUpService;Lcom/vivo/services/motion/PhonePickUpService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/PhonePickUpService;
    .param p2, "x1"    # Lcom/vivo/services/motion/PhonePickUpService$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhonePickUpService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 105
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

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "ScreenOffWakeupState":Ljava/lang/String;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$000(Lcom/vivo/services/motion/PhonePickUpService;)Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    # invokes: Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->gyroSensorJudge(FFF)V
    invoke-static {v1, v2, v3, v4}, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->access$100(Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;FFF)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 83
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->filterFlag:Z
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$200(Lcom/vivo/services/motion/PhonePickUpService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 86
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 87
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 89
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # setter for: Lcom/vivo/services/motion/PhonePickUpService;->filterFlag:Z
    invoke-static {v1, v4}, Lcom/vivo/services/motion/PhonePickUpService;->access$202(Lcom/vivo/services/motion/PhonePickUpService;Z)Z

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v2

    aget v2, v2, v4

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    aput v2, v1, v4

    .line 93
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v2

    aget v2, v2, v5

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 94
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v2

    aget v2, v2, v6

    mul-float/2addr v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 95
    const-string v1, "PhonePickUpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " gravityValues[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gravityValues[1]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gravityValues[2]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$000(Lcom/vivo/services/motion/PhonePickUpService;)Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v3

    aget v3, v3, v5

    iget-object v4, p0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F
    invoke-static {v4}, Lcom/vivo/services/motion/PhonePickUpService;->access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F

    move-result-object v4

    aget v4, v4, v6

    # invokes: Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->gSensorJudge(FFF)V
    invoke-static {v1, v2, v3, v4}, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->access$400(Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;FFF)V

    goto/16 :goto_0
.end method
