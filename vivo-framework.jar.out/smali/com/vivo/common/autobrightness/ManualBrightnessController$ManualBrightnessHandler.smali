.class final Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;
.super Landroid/os/Handler;
.source "ManualBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/ManualBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ManualBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/ManualBrightnessController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .line 375
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 376
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 419
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCallbacks:Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;->updateBrightness()V

    .line 383
    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1100()I

    move-result v0

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1002(I)I

    .line 384
    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1202(Z)Z

    .line 385
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjust brightness mCurLightLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1300(Lcom/vivo/common/autobrightness/ManualBrightnessController;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :pswitch_1
    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->OLED_ACL:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1400()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledAclStatus:I
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1500(Lcom/vivo/common/autobrightness/ManualBrightnessController;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/services/DeviceParaProvideService;->writeKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1600(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1700(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1800(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 394
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v0, v5}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$002(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z

    .line 395
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWaitFirstLightLux:Z
    invoke-static {v0, v5}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2002(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z

    .line 396
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWatingFirstLightSensorValue:Z
    invoke-static {v0, v5}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2102(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z

    .line 397
    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$200()F

    move-result v0

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessUpLevels:[F
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2200()[F

    move-result-object v1

    aget v1, v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 398
    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->MAX_LIGHT_LEVEL:I
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2300()I

    move-result v0

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1002(I)I

    .line 402
    :goto_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2500(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2600(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1800(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 403
    const-string v0, "ManualBrightnessController"

    const-string v1, "setLightSensorEnabled true."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    :cond_0
    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->MIN_LIGHT_LEVEL:I
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2400()I

    move-result v0

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1002(I)I

    goto :goto_1

    .line 406
    :pswitch_3
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v0, v4}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$002(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z

    .line 407
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWaitFirstLightLux:Z
    invoke-static {v0, v4}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2002(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z

    .line 408
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledModeChange:Z
    invoke-static {v0, v4}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2702(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z

    .line 409
    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenState:I
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2800()I

    move-result v0

    sget v1, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_OFF:I

    if-eq v0, v1, :cond_1

    .line 410
    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->OLED_ACL:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/services/DeviceParaProvideService;->writeKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledAclStatus:I
    invoke-static {v0, v4}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1502(Lcom/vivo/common/autobrightness/ManualBrightnessController;I)I

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$700(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2500(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 415
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$1600(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 416
    const-string v0, "ManualBrightnessController"

    const-string v1, "setLightSensorEnabled false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
