.class Lcom/vivo/common/antimisoperation/AntiMisoperation$1;
.super Ljava/lang/Object;
.source "AntiMisoperation.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/antimisoperation/AntiMisoperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;


# direct methods
.method constructor <init>(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    iget-object v4, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEnabled:Z
    invoke-static {v4}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$000(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 140
    .local v0, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityThreshold:F
    invoke-static {v4}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$100(Lcom/vivo/common/antimisoperation/AntiMisoperation;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    move v1, v2

    .line 141
    .local v1, "positive":Z
    :goto_0
    iget-object v4, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    if-eqz v1, :cond_2

    :goto_1
    # setter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I
    invoke-static {v4, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$202(Lcom/vivo/common/antimisoperation/AntiMisoperation;I)I

    .line 142
    const-string v2, "AntiMisoperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got proximity event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I
    invoke-static {v4}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$200(Lcom/vivo/common/antimisoperation/AntiMisoperation;)I

    move-result v4

    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->proximityToString(I)Ljava/lang/String;
    invoke-static {v4}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$300(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    invoke-virtual {v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getTriggered()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 144
    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->getWakelockTimeout()Z
    invoke-static {v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$400(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    const-string v2, "AntiMisoperation"

    const-string v3, "onSensorChanged proximity negative after triggered, logout"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;
    invoke-static {v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$500(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 147
    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;
    invoke-static {v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$500(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;
    invoke-static {v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$500(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "distance":F
    :cond_1
    move v1, v3

    .line 140
    goto :goto_0

    .restart local v1    # "positive":Z
    :cond_2
    move v2, v3

    .line 141
    goto :goto_1

    .line 149
    :cond_3
    const-string v2, "AntiMisoperation"

    const-string v3, "onSensorChanged proximity negative after triggered but wakelock-timeout, not logout"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
