.class Lcom/vivo/services/motion/ShakeDetectService$2;
.super Ljava/lang/Object;
.source "ShakeDetectService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ShakeDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ShakeDetectService;


# direct methods
.method constructor <init>(Lcom/vivo/services/motion/ShakeDetectService;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

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
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/32 v6, 0xf4240

    .line 173
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v0, v6

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->accDataTime:J
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectService;->access$400(Lcom/vivo/services/motion/ShakeDetectService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    # invokes: Lcom/vivo/services/motion/ShakeDetectService;->WaveAnalysis(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/vivo/services/motion/ShakeDetectService;->access$500(Lcom/vivo/services/motion/ShakeDetectService;FFF)V

    .line 176
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v2, v6

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->accDataTime:J
    invoke-static {v0, v2, v3}, Lcom/vivo/services/motion/ShakeDetectService;->access$402(Lcom/vivo/services/motion/ShakeDetectService;J)J

    .line 179
    :cond_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v0, v6

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->accTime:J
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectService;->access$600(Lcom/vivo/services/motion/ShakeDetectService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I
    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectService;->access$700(Lcom/vivo/services/motion/ShakeDetectService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ShakeDetectService;->access$702(Lcom/vivo/services/motion/ShakeDetectService;I)I

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I
    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectService;->access$700(Lcom/vivo/services/motion/ShakeDetectService;)I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I
    invoke-static {v0, v5}, Lcom/vivo/services/motion/ShakeDetectService;->access$702(Lcom/vivo/services/motion/ShakeDetectService;I)I

    .line 190
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->timeMode:Z
    invoke-static {v0, v8}, Lcom/vivo/services/motion/ShakeDetectService;->access$802(Lcom/vivo/services/motion/ShakeDetectService;Z)Z

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v2, v6

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->accTime:J
    invoke-static {v0, v2, v3}, Lcom/vivo/services/motion/ShakeDetectService;->access$602(Lcom/vivo/services/motion/ShakeDetectService;J)J

    .line 194
    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$2;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I
    invoke-static {v0, v5}, Lcom/vivo/services/motion/ShakeDetectService;->access$702(Lcom/vivo/services/motion/ShakeDetectService;I)I

    goto :goto_0
.end method
