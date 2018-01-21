.class Lcom/android/server/policy/VivoWMPHook$1;
.super Ljava/lang/Object;
.source "VivoWMPHook.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoWMPHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoWMPHook;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/policy/VivoWMPHook$1;->this$0:Lcom/android/server/policy/VivoWMPHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v6

    .line 107
    .local v0, "distance":F
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook$1;->this$0:Lcom/android/server/policy/VivoWMPHook;

    # getter for: Lcom/android/server/policy/VivoWMPHook;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/server/policy/VivoWMPHook;->access$000(Lcom/android/server/policy/VivoWMPHook;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook$1;->this$0:Lcom/android/server/policy/VivoWMPHook;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/policy/VivoWMPHook;->mProximitySwitchOn:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/VivoWMPHook;->access$102(Lcom/android/server/policy/VivoWMPHook;Z)Z

    .line 113
    :goto_0
    const-string v1, "VivoWMPHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxiity sensor change keySwitchOn is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/VivoWMPHook$1;->this$0:Lcom/android/server/policy/VivoWMPHook;

    # getter for: Lcom/android/server/policy/VivoWMPHook;->mProximitySwitchOn:Z
    invoke-static {v3}, Lcom/android/server/policy/VivoWMPHook;->access$100(Lcom/android/server/policy/VivoWMPHook;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook$1;->this$0:Lcom/android/server/policy/VivoWMPHook;

    # setter for: Lcom/android/server/policy/VivoWMPHook;->mProximitySwitchOn:Z
    invoke-static {v1, v6}, Lcom/android/server/policy/VivoWMPHook;->access$102(Lcom/android/server/policy/VivoWMPHook;Z)Z

    goto :goto_0
.end method
