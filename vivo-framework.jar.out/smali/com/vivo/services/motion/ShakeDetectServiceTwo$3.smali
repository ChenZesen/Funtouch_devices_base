.class Lcom/vivo/services/motion/ShakeDetectServiceTwo$3;
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
    .line 182
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$3;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 197
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/32 v6, 0xf4240

    .line 185
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 187
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v0, v6

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$3;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityTime:J
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1100(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x13

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$3;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$200(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    # invokes: Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->GravityListenerWindow(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->access$900(Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;FFF)V

    .line 190
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$3;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v2, v6

    # setter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityTime:J
    invoke-static {v0, v2, v3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1102(Lcom/vivo/services/motion/ShakeDetectServiceTwo;J)J

    .line 193
    :cond_0
    return-void
.end method
