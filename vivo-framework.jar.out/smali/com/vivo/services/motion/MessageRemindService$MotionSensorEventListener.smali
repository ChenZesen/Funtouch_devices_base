.class Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "MessageRemindService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MessageRemindService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/MessageRemindService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/MessageRemindService;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/MessageRemindService;Lcom/vivo/services/motion/MessageRemindService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/MessageRemindService;
    .param p2, "x1"    # Lcom/vivo/services/motion/MessageRemindService$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/MessageRemindService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 298
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 256
    const-string v1, "ro.product.model.bbk"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "prop":Ljava/lang/String;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_0
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v1, :cond_0

    .line 262
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->datacount:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$800()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/vivo/services/motion/MessageRemindService;->datacount:I
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$802(I)I

    .line 263
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->datacount:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$800()I

    move-result v1

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    invoke-virtual {v1, p1}, Lcom/vivo/services/motion/MessageRemindService;->IsDevInFlatState_startstate(Landroid/hardware/SensorEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->statecount:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$900()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/vivo/services/motion/MessageRemindService;->statecount:I
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$902(I)I

    .line 267
    :cond_1
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->statecount:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$900()I

    move-result v1

    if-lt v1, v3, :cond_3

    .line 269
    # setter for: Lcom/vivo/services/motion/MessageRemindService;->statecount:I
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$902(I)I

    .line 270
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorTrigerObserver:Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$1000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mSensorTrigerObserver:Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$1000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->StartSensorTrigerObserver()V

    .line 279
    :cond_3
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->statecount:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$900()I

    move-result v1

    if-ge v1, v3, :cond_4

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->datacount:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$800()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_4

    .line 281
    # setter for: Lcom/vivo/services/motion/MessageRemindService;->statecount:I
    invoke-static {v4}, Lcom/vivo/services/motion/MessageRemindService;->access$902(I)I

    .line 282
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 284
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    :cond_4
    const-string v1, "MessageRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " datacount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->datacount:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " statecount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->statecount:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$900()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
