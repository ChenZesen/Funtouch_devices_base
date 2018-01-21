.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 269
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v2, 0xd

    const/16 v3, 0xc

    .line 271
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatusDebounce:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v4

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1502(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 272
    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseCameraLuma:Z
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v4

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/vivo/common/autobrightness/LightController;->notifyStateChanged(I)V

    .line 275
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/LightController;->getLightLevel(I)I

    .line 277
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/LightController;->getLightDegree()I

    move-result v0

    .line 278
    .local v0, "degree":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 279
    const-string v1, "AutoBrightnessManager"

    const-string v4, "mProximityRunnable isAroundFewSeconds go start cam."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v1, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2102(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I

    .line 281
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCancelBrightnessHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCancelBrightnessRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCancelBrightnessHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCancelBrightnessRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    .end local v0    # "degree":I
    :goto_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J
    invoke-static {v1, v4, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2602(Lcom/vivo/common/autobrightness/AutoBrightnessManager;J)J

    .line 297
    const-string v1, "AutoBrightnessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged prox: mProximityRunnable mProximityStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLightDegree="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v5

    invoke-static {v5}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/LightController;->notifyStateChanged(I)V

    .line 300
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatusDebounce:Z
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setProximityStatus(Z)V

    .line 301
    return-void

    :cond_0
    move v1, v3

    .line 274
    goto/16 :goto_0

    .line 287
    .restart local v0    # "degree":I
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/LightController;->getLightDegree()I

    move-result v4

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2102(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mProximityRunnable: degree="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    .end local v0    # "degree":I
    :cond_3
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mProximityRunnable : mProximityStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mProximityTimeStamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScreenOnTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWaitFirstLightLux:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 299
    goto/16 :goto_2
.end method
