.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 524
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v4, 0xd

    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 493
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v1

    .line 494
    .local v0, "distance":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityThreshold:F
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    move v1, v2

    .line 496
    .local v1, "positive":Z
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v3

    if-eq v3, v1, :cond_1

    .line 498
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    move-result-object v6

    if-eqz v1, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->notifyStateChanged(I)V

    .line 501
    :cond_1
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 502
    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setProximityPositiveToNegative(Z)V

    .line 503
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatusDebounce:Z
    invoke-static {v2, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1602(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 504
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->proximityToNegtiveDebounce()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    :goto_1
    return-void

    :cond_2
    move v3, v5

    .line 498
    goto :goto_0

    .line 507
    :cond_3
    const-string v2, "AutoBrightnessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSensorChanged prox: positive="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 509
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J
    invoke-static {v2, v6, v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2602(Lcom/vivo/common/autobrightness/AutoBrightnessManager;J)J

    .line 510
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v2, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1502(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 511
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setProximityStatus(Z)V

    .line 512
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->isFirstFewSeconds()Z
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$6000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 514
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const-string v3, "mProximityListener call resetLightDegreeInfo"

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/vivo/common/autobrightness/LightController;->notifyStateChanged(I)V

    .line 516
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/LightController;->resetLightDegreeInfo()V

    .line 518
    :cond_4
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v2

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v2, v4}, Lcom/vivo/common/autobrightness/LightController;->notifyStateChanged(I)V

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2
.end method
