.class Lcom/android/server/display/VivoAAL$2;
.super Ljava/lang/Object;
.source "VivoAAL.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VivoAAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/VivoAAL;


# direct methods
.method constructor <init>(Lcom/android/server/display/VivoAAL;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/display/VivoAAL$2;->this$0:Lcom/android/server/display/VivoAAL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 156
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v2

    .line 157
    .local v1, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/VivoAAL$2;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/display/VivoAAL;->access$100(Lcom/android/server/display/VivoAAL;)F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    move v2, v3

    .line 159
    .local v2, "positive":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/VivoAAL$2;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mNear:Z
    invoke-static {v4}, Lcom/android/server/display/VivoAAL;->access$200(Lcom/android/server/display/VivoAAL;)Z

    move-result v0

    .line 161
    .local v0, "NeartoPsensor":Z
    if-ne v2, v3, :cond_2

    .line 162
    const/4 v0, 0x1

    .line 166
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/VivoAAL$2;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mNear:Z
    invoke-static {v4}, Lcom/android/server/display/VivoAAL;->access$200(Lcom/android/server/display/VivoAAL;)Z

    move-result v4

    if-eq v0, v4, :cond_1

    .line 167
    const-string v4, "VivoAAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSensorChanged change mNear from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/VivoAAL$2;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mNear:Z
    invoke-static {v6}, Lcom/android/server/display/VivoAAL;->access$200(Lcom/android/server/display/VivoAAL;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, p0, Lcom/android/server/display/VivoAAL$2;->this$0:Lcom/android/server/display/VivoAAL;

    # setter for: Lcom/android/server/display/VivoAAL;->mNear:Z
    invoke-static {v4, v0}, Lcom/android/server/display/VivoAAL;->access$202(Lcom/android/server/display/VivoAAL;Z)Z

    .line 169
    iget-object v4, p0, Lcom/android/server/display/VivoAAL$2;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;
    invoke-static {v4}, Lcom/android/server/display/VivoAAL;->access$300(Lcom/android/server/display/VivoAAL;)Lcom/android/server/display/VivoAAL$CurrentHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/display/VivoAAL$CurrentHandler;->removeMessages(I)V

    .line 170
    iget-object v4, p0, Lcom/android/server/display/VivoAAL$2;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;
    invoke-static {v4}, Lcom/android/server/display/VivoAAL;->access$300(Lcom/android/server/display/VivoAAL;)Lcom/android/server/display/VivoAAL$CurrentHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/display/VivoAAL$CurrentHandler;->sendEmptyMessage(I)Z

    .line 173
    :cond_1
    const-string v3, "VivoAAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proximity positive is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
