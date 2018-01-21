.class final Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;
.super Landroid/content/BroadcastReceiver;
.source "VivoProxCaliService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/proxcali/VivoProxCaliService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootcompleteReceiverForPsCali"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/proxcali/VivoProxCaliService;Lcom/vivo/services/proxcali/VivoProxCaliService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p2, "x1"    # Lcom/vivo/services/proxcali/VivoProxCaliService$1;

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 789
    if-nez p2, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 792
    const-string v4, "VivoProxCaliService"

    const-string v5, "startCalibration(0) when bootcompleted..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v4, "ro.product.model.bbk"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "prop":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    invoke-virtual {v4, v6}, Lcom/vivo/services/proxcali/VivoProxCaliService;->startCalibration(I)V

    .line 795
    if-eqz v2, :cond_0

    const-string v4, "PD1222T"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "PD1222"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "PD1222W"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "PD1222TG3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    :cond_2
    const-string v4, "akmd"

    const-string v5, "startup copy pdc.txt for 1222\n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v4, "ctl.start"

    const-string v5, "bbk_pdc_copy"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 805
    .end local v2    # "prop":Ljava/lang/String;
    :cond_3
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 806
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->pm:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$400(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isUseProximitySensorLocked()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCrystalAnim:Z
    invoke-static {v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2400(Lcom/vivo/services/proxcali/VivoProxCaliService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 807
    :cond_4
    const-string v4, "VivoProxCaliService"

    const-string v5, "use proximity lock or cystal animation in screen on,return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    :cond_5
    const-string v1, ""

    .line 811
    .local v1, "arg":Ljava/lang/String;
    new-instance v3, Lcom/sensoroperate/SensorTestResult;

    invoke-direct {v3}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    .line 812
    .local v3, "result":Lcom/sensoroperate/SensorTestResult;
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static {v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2500(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/sensoroperate/VivoSensorTest;

    move-result-object v4

    const/16 v5, 0x201

    invoke-virtual {v4, v5, v3, v1, v6}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;Ljava/lang/String;I)I

    .line 813
    iget v4, v3, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 814
    const-string v4, "VivoProxCaliService"

    const-string v5, "startCalibration when screen on..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    invoke-virtual {v4, v6}, Lcom/vivo/services/proxcali/VivoProxCaliService;->startCalibration(I)V

    goto/16 :goto_0

    .line 818
    :cond_6
    const-string v4, "VivoProxCaliService"

    const-string v5, "not configured ps tolerance,not do calibration when screen on..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 820
    .end local v1    # "arg":Ljava/lang/String;
    .end local v3    # "result":Lcom/sensoroperate/SensorTestResult;
    :cond_7
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCrystalAnim:Z
    invoke-static {v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2400(Lcom/vivo/services/proxcali/VivoProxCaliService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 821
    :cond_8
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->pm:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$400(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isUseProximitySensorLocked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 822
    const-string v4, "VivoProxCaliService"

    const-string v5, "use proximity lock or cystal animation in screen off,return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 825
    :cond_9
    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z
    invoke-static {}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2600()Z

    move-result v4

    if-nez v4, :cond_0

    .line 826
    const-string v4, "VivoProxCaliService"

    const-string v5, "Stop calibration coz screen off broadcast"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1100(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1000(Lcom/vivo/services/proxcali/VivoProxCaliService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 828
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1100(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1000(Lcom/vivo/services/proxcali/VivoProxCaliService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
