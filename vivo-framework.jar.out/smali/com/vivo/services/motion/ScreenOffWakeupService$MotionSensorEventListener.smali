.class Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "ScreenOffWakeupService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ScreenOffWakeupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/ScreenOffWakeupService;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/ScreenOffWakeupService;Lcom/vivo/services/motion/ScreenOffWakeupService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;
    .param p2, "x1"    # Lcom/vivo/services/motion/ScreenOffWakeupService$1;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/ScreenOffWakeupService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 182
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "ScreenOffWakeupState":Ljava/lang/String;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 152
    :sswitch_0
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$000()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 154
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->datacount:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$100()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->datacount:I
    invoke-static {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$102(I)I

    .line 155
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->datacount:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$100()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 157
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mScreenOffWakeupAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;
    invoke-static {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$200(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

    move-result-object v1

    # invokes: Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->judge(Landroid/hardware/SensorEvent;)V
    invoke-static {v1, p1}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->access$300(Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;Landroid/hardware/SensorEvent;)V

    .line 159
    :cond_1
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->datacount:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$100()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 161
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 171
    :sswitch_1
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;
    invoke-static {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;

    move-result-object v1

    # invokes: Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->judge(Landroid/hardware/SensorEvent;)V
    invoke-static {v1, p1}, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->access$700(Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
