.class Lcom/vivo/services/sarpower/SarPowerStateService$1;
.super Ljava/lang/Object;
.source "SarPowerStateService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/sarpower/SarPowerStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/sarpower/SarPowerStateService;


# direct methods
.method constructor <init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$1;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 123
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService$1;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    # setter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I
    invoke-static {v0, v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$002(Lcom/vivo/services/sarpower/SarPowerStateService;I)I

    .line 116
    iget-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService$1;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v0}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->removeMessages(I)V

    .line 117
    iget-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService$1;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v0}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$1;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    const-string v0, "SarPowerStateServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProximityState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/sarpower/SarPowerStateService$1;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I
    invoke-static {v2}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$000(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method
