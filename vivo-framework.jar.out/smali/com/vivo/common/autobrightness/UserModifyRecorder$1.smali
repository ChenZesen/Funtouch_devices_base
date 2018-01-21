.class Lcom/vivo/common/autobrightness/UserModifyRecorder$1;
.super Ljava/lang/Object;
.source "UserModifyRecorder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/UserModifyRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/UserModifyRecorder;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder$1;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

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
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 111
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 112
    .local v0, "lux":F
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder$1;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder$1;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightSensorName:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$100(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/common/autobrightness/AblConfig;->getRectifiedLux(FLjava/lang/String;)F

    move-result v2

    # setter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightLux:F
    invoke-static {v1, v2}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$002(Lcom/vivo/common/autobrightness/UserModifyRecorder;F)F

    .line 113
    return-void
.end method
