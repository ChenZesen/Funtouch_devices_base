.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;


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
    .line 889
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 892
    if-nez p1, :cond_1

    .line 893
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v1, 0x0

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLightSensorEvent:Landroid/hardware/SensorEvent;
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$6202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Landroid/hardware/SensorEvent;)Landroid/hardware/SensorEvent;

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLightSensorEvent:Landroid/hardware/SensorEvent;
    invoke-static {v0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$6202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Landroid/hardware/SensorEvent;)Landroid/hardware/SensorEvent;

    .line 897
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$6300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const-string v0, "AutoBrightnessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreLightCallback onSensorChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J
    invoke-static {v0, v2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4102(Lcom/vivo/common/autobrightness/AutoBrightnessManager;J)J

    .line 900
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$6400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method
