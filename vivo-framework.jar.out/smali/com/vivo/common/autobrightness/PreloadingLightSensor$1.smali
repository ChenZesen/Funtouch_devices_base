.class Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;
.super Ljava/lang/Object;
.source "PreloadingLightSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/PreloadingLightSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 102
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    # getter for: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$100(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 105
    .local v0, "now":J
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    # getter for: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mLightTimeStamp:J
    invoke-static {v2}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$200(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    # getter for: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mLightTimeStamp:J
    invoke-static {v2}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$200(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    # getter for: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$100(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    const/4 v3, 0x1

    # += operator for: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mValidEventCount:I
    invoke-static {v2, v3}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$312(Lcom/vivo/common/autobrightness/PreloadingLightSensor;I)I

    .line 110
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    # getter for: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mValidEventCount:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$300(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 111
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    # getter for: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$400(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;->sendEmptyMessage(I)Z

    .line 116
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    const-string v2, "PreloadingLightSensor"

    const-string v3, "onSensorChanged mCallback is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
