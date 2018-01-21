.class Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;
.super Landroid/os/Handler;
.source "DirectCallingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/DirectCallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectCallingServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/DirectCallingService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/DirectCallingService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 2054
    iput-object p1, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    .line 2055
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2056
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 2060
    const-string v0, "DirectCallingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionDet State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I
    invoke-static {v2}, Lcom/vivo/services/motion/DirectCallingService;->access$000(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I
    invoke-static {v0}, Lcom/vivo/services/motion/DirectCallingService;->access$000(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2104
    :cond_0
    :goto_0
    return-void

    .line 2064
    :sswitch_0
    const-string v0, "DirectCallingService"

    const-string v1, "MOTION_DET_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/DirectCallingService;->MotionDetectIdleStateProcess(I)V

    goto :goto_0

    .line 2068
    :sswitch_1
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/DirectCallingService;->MotionDetectGetDataStateProcess(I)V

    goto :goto_0

    .line 2071
    :sswitch_2
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/DirectCallingService;->MotionDetectAnalistStateProcess(I)V

    goto :goto_0

    .line 2074
    :sswitch_3
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/DirectCallingService;->MotionDetectRecoverStateProcess(I)V

    goto :goto_0

    .line 2077
    :sswitch_4
    const-string v0, "DirectCallingService"

    const-string v1, "MSG_GYRO_RATE_SWITCH_TO_LOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z
    invoke-static {v0, v3}, Lcom/vivo/services/motion/DirectCallingService;->access$102(Lcom/vivo/services/motion/DirectCallingService;Z)Z

    .line 2081
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    invoke-static {v1}, Lcom/vivo/services/motion/DirectCallingService;->access$2400(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const v3, 0x1046b

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 2085
    :sswitch_5
    const-string v0, "DirectCallingService"

    const-string v1, "MSG_GYRO_RATE_SWITCH_TO_HIGH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->gyroHighFlag:Z
    invoke-static {v0, v3}, Lcom/vivo/services/motion/DirectCallingService;->access$4002(Lcom/vivo/services/motion/DirectCallingService;Z)Z

    .line 2087
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z
    invoke-static {v0, v3}, Lcom/vivo/services/motion/DirectCallingService;->access$102(Lcom/vivo/services/motion/DirectCallingService;Z)Z

    .line 2090
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    invoke-static {v1}, Lcom/vivo/services/motion/DirectCallingService;->access$2400(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_0

    .line 2095
    :sswitch_6
    const-string v0, "DirectCallingService"

    const-string v1, "MSG_GYRO_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    invoke-static {v1}, Lcom/vivo/services/motion/DirectCallingService;->access$2400(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/16 :goto_0

    .line 2061
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xa -> :sswitch_4
        0xf -> :sswitch_6
        0x14 -> :sswitch_5
    .end sparse-switch
.end method
