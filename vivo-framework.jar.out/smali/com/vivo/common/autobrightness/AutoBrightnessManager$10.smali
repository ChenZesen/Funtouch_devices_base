.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;


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
    .line 662
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowedStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 682
    return-void
.end method

.method public onServiceStateChanged(Z)V
    .locals 3
    .param p1, "run"    # Z

    .prologue
    const/4 v2, 0x2

    .line 667
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 670
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 671
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setLumaServiceStatus(I)I

    .line 672
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->notifyStateChanged(I)I

    .line 673
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 676
    :cond_0
    return-void
.end method
