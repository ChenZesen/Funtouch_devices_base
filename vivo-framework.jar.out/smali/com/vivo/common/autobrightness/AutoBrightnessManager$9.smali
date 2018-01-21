.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;


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
    .line 541
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLightDegreeChanged(I)V
    .locals 12
    .param p1, "degree"    # I

    .prologue
    const/4 v7, 0x2

    const-wide/16 v10, 0x2bc

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 546
    const-string v1, "AutoBrightnessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLightDegreeChanged degree="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/SceneRecognition;

    move-result-object v1

    new-instance v4, Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/SceneRecognition;->updateAutobrightInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 548
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v1

    if-eq v1, p1, :cond_9

    .line 549
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setDegree(I)V

    .line 550
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v1, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2102(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I

    .line 553
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->shouldStartCameraLuma()Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 554
    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 556
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/SceneRecognition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/SceneRecognition;->recognizeScene()I

    move-result v0

    .line 557
    .local v0, "scene":I
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 559
    .local v2, "uptime":J
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v1, v4, v10

    if-gez v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z
    invoke-static {v1, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 563
    const-string v1, "AutoBrightnessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "just enable at timeStamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uptime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " degree="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v6

    add-long/2addr v6, v10

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 636
    .end local v0    # "scene":I
    .end local v2    # "uptime":J
    :goto_0
    return-void

    .line 569
    .restart local v0    # "scene":I
    .restart local v2    # "uptime":J
    :cond_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseFixedDelayTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    const-string v1, "AutoBrightnessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " degree="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getFixedStartCameraDelayTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z
    invoke-static {v1, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 573
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getFixedStartCameraDelayTime()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 577
    :cond_1
    const/16 v1, 0x202

    if-ne v0, v1, :cond_2

    .line 578
    const-string v1, "AutoBrightnessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scene=SCENE_DUSKY_FLOATING degree="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z
    invoke-static {v1, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 581
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 582
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 586
    :cond_2
    const-string v1, "AutoBrightnessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scene="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/SceneRecognition;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/vivo/common/autobrightness/SceneRecognition;->sceneToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " degree="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " go start cam."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 593
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 594
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaController;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->notifyStateChanged(I)I

    .line 595
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setLumaServiceStatus(I)I

    .line 597
    :cond_3
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v1, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 602
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->isFirstFewSeconds()Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$6000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 603
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v1

    invoke-interface {v1, v8}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->onNeedCancelBrightness(I)V

    .line 605
    :cond_4
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0xfa0

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 609
    .end local v0    # "scene":I
    .end local v2    # "uptime":J
    :cond_5
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaController;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->notifyStateChanged(I)I

    .line 610
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 611
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z
    invoke-static {v1, v6}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 612
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 613
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 614
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setLumaServiceStatus(I)I

    .line 619
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v1

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_QUICK_DELAY:I
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$6100()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    iput v4, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 620
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    .line 621
    const-string v1, "AutoBrightnessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update AutobrightInfo when break up camera mAutobrightInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingModeOpen:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 623
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v1

    iput v6, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 625
    :cond_6
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->onNewScreenValue(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 628
    :cond_7
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v1, v6}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    goto/16 :goto_0

    .line 631
    :cond_8
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const-string v4, "not use CameraLuma"

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :cond_9
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const-string v4, "same degree, nothing to do."

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onLightStateChanged()V
    .locals 0

    .prologue
    .line 657
    return-void
.end method
