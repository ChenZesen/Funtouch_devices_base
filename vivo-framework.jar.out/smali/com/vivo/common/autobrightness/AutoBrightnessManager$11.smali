.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;


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
    .line 688
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetLumaResult(Lcom/vivo/common/autobrightness/LumaInfo;)V
    .locals 6
    .param p1, "lumaInfo"    # Lcom/vivo/common/autobrightness/LumaInfo;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 693
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vivo/common/autobrightness/LumaInfo;->copyFrom(Lcom/vivo/common/autobrightness/LumaInfo;)V

    .line 694
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v2, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 696
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 697
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 698
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setLumaServiceStatus(I)I

    .line 699
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->notifyStateChanged(I)I

    .line 700
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaValid()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/vivo/common/autobrightness/LightController;->setCameraLuma(IZ)V

    .line 701
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z
    invoke-static {v2, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 702
    const-string v2, "debug.luma.cam_level"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    .line 704
    .local v0, "info":Lcom/vivo/common/autobrightness/AutobrightInfo;
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 705
    :try_start_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 706
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLevel:I
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LuxMedian;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/LuxMedian;->getAverage()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v5

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->calcScreenLevel(IILcom/vivo/common/autobrightness/LumaInfo;Lcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v2, v3, v4, v5, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;IILcom/vivo/common/autobrightness/LumaInfo;Lcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v1

    .line 708
    .local v1, "tmpInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->getAutoBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    invoke-static {v2, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$5200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutobrightInfo;)I

    move-result v2

    iput v2, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .line 709
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getCameraLumaDebounce()I

    move-result v2

    iput v2, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 710
    const-string v3, "AutoBrightnessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetLumaResult info:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v2, "AutoBrightnessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetLumaResult tmpInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v2, "AutoBrightnessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetLumaResult mLumaInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/LumaInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 714
    :try_start_1
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 715
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v2

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->onNewScreenValue(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 716
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    .end local v0    # "info":Lcom/vivo/common/autobrightness/AutobrightInfo;
    .end local v1    # "tmpInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :goto_1
    return-void

    .line 706
    .restart local v0    # "info":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 710
    .restart local v1    # "tmpInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 716
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 718
    .end local v0    # "info":Lcom/vivo/common/autobrightness/AutobrightInfo;
    .end local v1    # "tmpInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :cond_1
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const-string v3, "Caution,got lumaresult,but mCameraServiceRunning is false."

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    goto :goto_1
.end method
