.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;
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
    .line 382
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 486
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 386
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v0, v7, v8

    .line 389
    .local v0, "light":F
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensorName:Ljava/lang/String;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/vivo/common/autobrightness/AblConfig;->getRectifiedLux(FLjava/lang/String;)F

    move-result v3

    .line 391
    .local v3, "rectifiedLux":F
    invoke-static {v3}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->notifyLightLux(F)V

    .line 392
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->isAutoBakclightAdjust()Z

    move-result v7

    if-nez v7, :cond_0

    .line 393
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const-string v8, "bIsAutoBakclightAdjust is false"

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    .line 481
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->isLuxValid(J)Z
    invoke-static {v7, v8, v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;J)Z

    move-result v7

    if-nez v7, :cond_1

    .line 398
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    move-result-object v7

    float-to-int v8, v3

    invoke-virtual {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setLightLux(I)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J
    invoke-static {v7, v8, v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4102(Lcom/vivo/common/autobrightness/AutoBrightnessManager;J)J

    .line 403
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LuxMedian;

    move-result-object v7

    float-to-int v8, v3

    invoke-virtual {v7, v8}, Lcom/vivo/common/autobrightness/LuxMedian;->putAndGetLightMedian(I)I

    move-result v1

    .line 404
    .local v1, "lux":I
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I
    invoke-static {v7, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I

    .line 410
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 412
    .local v4, "t":J
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_3

    long-to-double v8, v4

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getObjectUncoverActionTimeout()I

    move-result v7

    int-to-double v10, v7

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    cmpg-double v7, v8, v10

    if-gez v7, :cond_3

    .line 413
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LuxMedian;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vivo/common/autobrightness/LuxMedian;->getUsedLen()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    .line 414
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "light onSensorChagned mHasObjectUncoverAction && usedLen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LuxMedian;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/common/autobrightness/LuxMedian;->getUsedLen()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " return"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :cond_2
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "light onSensorChagned mHasObjectUncoverAction && usedLen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LuxMedian;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/common/autobrightness/LuxMedian;->getUsedLen()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " go get max"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    .line 418
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->removeMessages(I)V

    .line 419
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v8, 0x0

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$502(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 420
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v8, 0x1

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWasHasObjectUncoverAction:Z
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$702(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 424
    .end local v4    # "t":J
    :cond_3
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWasHasObjectUncoverAction:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 425
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v8, 0x0

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWasHasObjectUncoverAction:Z
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$702(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 426
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LuxMedian;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vivo/common/autobrightness/LuxMedian;->getMax()F

    move-result v7

    float-to-int v1, v7

    .line 427
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "light onSensorChagned got max lux="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    .line 428
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I
    invoke-static {v7, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I

    .line 431
    :cond_4
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightTendency:Lcom/vivo/common/autobrightness/LightTendency;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightTendency;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/vivo/common/autobrightness/LightTendency;->putLux(I)V

    .line 432
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/vivo/common/autobrightness/LightController;->getLightLevel(I)I

    move-result v8

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLevel:I
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4502(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I

    .line 433
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setLux(I)V

    .line 434
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 435
    :try_start_0
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSwapAutoBrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 436
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 437
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseCameraLuma()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 438
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLevel:I
    invoke-static {v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v8

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSwapAutoBrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v10

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->calcScreenLevel(IILcom/vivo/common/autobrightness/LumaInfo;Lcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7, v8, v1, v9, v10}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;IILcom/vivo/common/autobrightness/LumaInfo;Lcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v6

    .line 442
    .local v6, "tempAbInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :goto_1
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v7

    if-nez v7, :cond_5

    .line 444
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v8

    iget v7, v6, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    const/4 v9, 0x6

    if-lt v7, v9, :cond_d

    iget v7, v6, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    add-int/lit8 v7, v7, -0x6

    :goto_2
    invoke-virtual {v8, v7}, Lcom/vivo/common/autobrightness/LightController;->setLightLevel(I)V

    .line 446
    :cond_5
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 447
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z
    invoke-static {v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v8

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v1, v10}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->getAutoBrightness(ZZILcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v6

    .line 451
    :goto_3
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 452
    const-string v8, "AutoBrightnessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSensorChanged light: first lux tempAbInfo:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v6, :cond_f

    const-string v7, "null"

    :goto_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v8, "AutoBrightnessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSensorChanged light: first lux mSwapAutoBrightInfo:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSwapAutoBrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    if-nez v7, :cond_10

    const-string v7, "null"

    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v8, "AutoBrightnessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSensorChanged light: first lux mLumaInfo:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v7

    if-nez v7, :cond_11

    const-string v7, "null"

    :goto_6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_6
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->calcDelayTime(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    invoke-static {v7, v6}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutobrightInfo;)I

    move-result v7

    iput v7, v6, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 462
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    .line 463
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 464
    :try_start_1
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    if-eqz v7, :cond_12

    iget-boolean v7, v6, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    if-nez v7, :cond_12

    const/4 v2, 0x1

    .line 465
    .local v2, "proximityChanged":Z
    :goto_7
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 466
    if-eqz v2, :cond_8

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    iget v7, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    if-lez v7, :cond_8

    .line 467
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    iget v7, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->getCurrentAutoBrightness()I

    move-result v9

    if-ge v7, v9, :cond_7

    .line 468
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v7

    const/4 v9, 0x5

    if-ge v7, v9, :cond_7

    .line 469
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # operator++ for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5408(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    .line 471
    :cond_7
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    iget v9, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    iget-object v10, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I
    invoke-static {v10}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 473
    :cond_8
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    iget v7, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->getCurrentAutoBrightness()I

    move-result v9

    if-le v7, v9, :cond_b

    .line 475
    :cond_9
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingModeOpen:Z
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 476
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    const/4 v9, 0x0

    iput v9, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 478
    :cond_a
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->onNewScreenValue(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 480
    :cond_b
    monitor-exit v8

    goto/16 :goto_0

    .end local v2    # "proximityChanged":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 436
    .end local v6    # "tempAbInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :catchall_1
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 440
    :cond_c
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLevel:I
    invoke-static {v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v8

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSwapAutoBrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v9

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->calcScreenLevel(IILcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7, v8, v1, v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;IILcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v6

    .restart local v6    # "tempAbInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    goto/16 :goto_1

    .line 444
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 449
    :cond_e
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->getAutoBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    invoke-static {v7, v6}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutobrightInfo;)I

    move-result v7

    iput v7, v6, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    goto/16 :goto_3

    .line 452
    :cond_f
    invoke-virtual {v6}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 454
    :cond_10
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSwapAutoBrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 458
    :cond_11
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vivo/common/autobrightness/LumaInfo;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 464
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_7
.end method
