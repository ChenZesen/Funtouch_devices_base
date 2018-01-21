.class Lcom/vivo/common/autobrightness/CollectUseData$1;
.super Ljava/lang/Object;
.source "CollectUseData.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/CollectUseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/CollectUseData;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/CollectUseData;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CollectUseData$1;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 69
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData$1;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/CollectUseData;->access$000(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData$1;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLightBuffer:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/CollectUseData;->access$100(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
