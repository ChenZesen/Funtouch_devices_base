.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;
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
    .line 337
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 340
    const-string v1, "AutoBrightnessManager"

    const-string v2, "called mSceneCameraRetryRunnable."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v2, 0x0

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z
    invoke-static {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 342
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->shouldStartCameraLuma()Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/LightController;->getLightDegree()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/LightController;->getLightDegree()I

    move-result v2

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2102(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I

    .line 345
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/SceneRecognition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/SceneRecognition;->recognizeScene()I

    move-result v0

    .line 354
    .local v0, "scene":I
    const-string v1, "AutoBrightnessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSceneCameraRetryRunnable scene="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/SceneRecognition;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vivo/common/autobrightness/SceneRecognition;->sceneToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " degree="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " go start cam."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 362
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->notifyStateChanged(I)I

    .line 363
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setLumaServiceStatus(I)I

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 370
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->onNeedCancelBrightness(I)V

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    .end local v0    # "scene":I
    :goto_0
    return-void

    .line 376
    :cond_2
    const-string v1, "AutoBrightnessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSceneCameraRetryRunnable mLightDegree="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/common/autobrightness/LightController;->getLightDegree()I

    move-result v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mProximityStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraServiceRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUseCameraLuma="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseCameraLuma:Z
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1700()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
