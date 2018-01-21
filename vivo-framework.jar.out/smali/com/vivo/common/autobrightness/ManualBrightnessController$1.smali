.class Lcom/vivo/common/autobrightness/ManualBrightnessController$1;
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
    .line 337
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$1;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 353
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$1;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$000(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$1;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mEventRestore:Landroid/hardware/SensorEvent;
    invoke-static {v1, p1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$102(Lcom/vivo/common/autobrightness/ManualBrightnessController;Landroid/hardware/SensorEvent;)Landroid/hardware/SensorEvent;

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 343
    .local v2, "time":J
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v1, v4

    .line 344
    .local v0, "lux":F
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$1;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$300(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/AblConfig;->getRectifiedLux(FLjava/lang/String;)F

    move-result v1

    # setter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$202(F)F

    .line 345
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$1;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$200()F

    move-result v4

    # invokes: Lcom/vivo/common/autobrightness/ManualBrightnessController;->handleOledAclEvent(F)V
    invoke-static {v1, v4}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$400(Lcom/vivo/common/autobrightness/ManualBrightnessController;F)V

    .line 346
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$1;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # getter for: Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F
    invoke-static {}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$200()F

    move-result v4

    # invokes: Lcom/vivo/common/autobrightness/ManualBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v1, v2, v3, v4}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$500(Lcom/vivo/common/autobrightness/ManualBrightnessController;JF)V

    .line 348
    .end local v0    # "lux":F
    .end local v2    # "time":J
    :cond_0
    return-void
.end method
