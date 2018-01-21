.class Lcom/android/server/policy/VivoProximitySensorListener$1;
.super Ljava/lang/Object;
.source "VivoProximitySensorListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoProximitySensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoProximitySensorListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoProximitySensorListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/policy/VivoProximitySensorListener$1;->this$0:Lcom/android/server/policy/VivoProximitySensorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 138
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v4, p0, Lcom/android/server/policy/VivoProximitySensorListener$1;->this$0:Lcom/android/server/policy/VivoProximitySensorListener;

    # getter for: Lcom/android/server/policy/VivoProximitySensorListener;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/policy/VivoProximitySensorListener;->access$000(Lcom/android/server/policy/VivoProximitySensorListener;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 124
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/VivoProximitySensorListener$1;->this$0:Lcom/android/server/policy/VivoProximitySensorListener;

    # getter for: Lcom/android/server/policy/VivoProximitySensorListener;->mEnabled:Z
    invoke-static {v4}, Lcom/android/server/policy/VivoProximitySensorListener;->access$100(Lcom/android/server/policy/VivoProximitySensorListener;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 127
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v0, v4, v6

    .line 128
    .local v0, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/VivoProximitySensorListener$1;->this$0:Lcom/android/server/policy/VivoProximitySensorListener;

    # getter for: Lcom/android/server/policy/VivoProximitySensorListener;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/policy/VivoProximitySensorListener;->access$200(Lcom/android/server/policy/VivoProximitySensorListener;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .line 129
    .local v1, "positive":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/VivoProximitySensorListener$1;->this$0:Lcom/android/server/policy/VivoProximitySensorListener;

    # invokes: Lcom/android/server/policy/VivoProximitySensorListener;->handleProximitySensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/policy/VivoProximitySensorListener;->access$300(Lcom/android/server/policy/VivoProximitySensorListener;JZ)V

    .line 131
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_1
    monitor-exit v5

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
