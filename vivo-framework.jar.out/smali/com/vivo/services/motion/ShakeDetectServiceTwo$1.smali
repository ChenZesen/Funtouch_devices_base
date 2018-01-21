.class Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;
.super Ljava/lang/Object;
.source "ShakeDetectServiceTwo.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ShakeDetectServiceTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;


# direct methods
.method constructor <init>(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 161
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/32 v8, 0xf4240

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 133
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 135
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityFlag:Z
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$300(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 138
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 139
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 140
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # setter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityFlag:Z
    invoke-static {v0, v4}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$302(Lcom/vivo/services/motion/ShakeDetectServiceTwo;Z)Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->alpha:F
    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$500(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)F

    move-result v1

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v2

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->alpha:F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$500(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)F

    move-result v2

    sub-float v2, v7, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 143
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->alpha:F
    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$500(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)F

    move-result v1

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v2

    aget v2, v2, v4

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->alpha:F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$500(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)F

    move-result v2

    sub-float v2, v7, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 144
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->alpha:F
    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$500(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)F

    move-result v1

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v2

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->alpha:F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$500(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)F

    move-result v2

    sub-float v2, v7, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 147
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$600(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v2

    aget v2, v2, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 148
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$600(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v2

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 149
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationValues:[F
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$600(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v2

    aget v2, v2, v6

    sub-float/2addr v1, v2

    aput v1, v0, v6

    .line 150
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v0, v8

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->accTime:J
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$700(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x13

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$200(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$600(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$600(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$600(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v3

    aget v3, v3, v6

    # invokes: Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->ShakeAnalysis(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->access$800(Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;FFF)V

    .line 153
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$200(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F
    invoke-static {v3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F

    move-result-object v3

    aget v3, v3, v6

    # invokes: Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->GravityListenerWindow(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->access$900(Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;FFF)V

    .line 154
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v2, v8

    # setter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->accTime:J
    invoke-static {v0, v2, v3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$702(Lcom/vivo/services/motion/ShakeDetectServiceTwo;J)J

    .line 157
    :cond_1
    return-void
.end method
