.class Lcom/vivo/common/autobrightness/ManualBrightnessController$2;
.super Ljava/lang/Object;
.source "ManualBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/ManualBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/ManualBrightnessController;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$2;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 371
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 360
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v1

    .line 361
    .local v0, "distance":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$2;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityThreshold:F
    invoke-static {v3}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$600(Lcom/vivo/common/autobrightness/ManualBrightnessController;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    move v1, v2

    .line 362
    .local v1, "positive":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 363
    iget-object v3, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$2;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$700(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    :cond_1
    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$802(Z)Z

    .line 367
    return-void
.end method
