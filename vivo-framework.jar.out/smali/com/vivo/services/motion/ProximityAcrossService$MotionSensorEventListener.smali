.class Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "ProximityAcrossService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ProximityAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ProximityAcrossService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/ProximityAcrossService;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/ProximityAcrossService;Lcom/vivo/services/motion/ProximityAcrossService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;
    .param p2, "x1"    # Lcom/vivo/services/motion/ProximityAcrossService$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/ProximityAcrossService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 99
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->TYPE_PROXIMITY_ACROSS:I
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$000(Lcom/vivo/services/motion/ProximityAcrossService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->TYPE_PROXIMITY_ACROSS:I
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$000(Lcom/vivo/services/motion/ProximityAcrossService;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 100
    const-string v2, "ProximityAcrossService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get prox across data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/vivo/services/motion/FlatPositionInfo;->IsProxAcrossInFlatState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->pushData(Landroid/hardware/SensorEvent;)V

    .line 105
    const-string v2, "ProximityAcrossService"

    const-string v3, "ready to send a msg MSG_PROX_ACROSS_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$200(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v2

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # invokes: Lcom/vivo/services/motion/ProximityAcrossService;->callNotice()Z
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$300(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$400(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 110
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    const-string v2, "ProximityAcrossService"

    const-string v4, "send a msg MSG_PROX_ACROSS_DET_TRIGER"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    .line 173
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 117
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 123
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    goto :goto_0

    .line 128
    :cond_4
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 131
    :sswitch_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_x:F
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$702(F)F

    .line 132
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_y:F
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$802(F)F

    .line 133
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    # setter for: Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_z:F
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$902(F)F

    .line 134
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->isSteady(FFF)V

    goto :goto_0

    .line 138
    :sswitch_1
    const-string v2, "ro.product.model.bbk"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_6

    sget-boolean v2, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v2, :cond_6

    .line 142
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_x:F
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$700()F

    move-result v3

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_y:F
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$800()F

    move-result v4

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_z:F
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$900()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->IsProxAcrossInFlatState_isSteady(FFF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->pushData(Landroid/hardware/SensorEvent;)V

    .line 146
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$200(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 147
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    # invokes: Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->judge(Landroid/hardware/SensorEvent;)V
    invoke-static {v2, p1}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->access$1000(Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;Landroid/hardware/SensorEvent;)V

    goto/16 :goto_0

    .line 151
    :cond_5
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    goto/16 :goto_0

    .line 156
    :cond_6
    invoke-static {}, Lcom/vivo/services/motion/FlatPositionInfo;->IsProxAcrossInFlatState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->pushData(Landroid/hardware/SensorEvent;)V

    .line 160
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$200(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 161
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    # invokes: Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->judge(Landroid/hardware/SensorEvent;)V
    invoke-static {v2, p1}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->access$1000(Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;Landroid/hardware/SensorEvent;)V

    goto/16 :goto_0

    .line 165
    :cond_7
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    goto/16 :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
