.class Lcom/android/server/display/DisplayPowerController$6;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 586
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mUseAlsBeforeScreenOff:Z
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPendingOneBrightness:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenAutoBrightness:I
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)I

    move-result v2

    # invokes: Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;I)I

    move-result v1

    # invokes: Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V
    invoke-static {v0, v1, v4}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;II)V

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->isAutoChange:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1700(Lcom/android/server/display/DisplayPowerController;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 591
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isLcmAckChangeFlickering()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    const-string v0, "DisplayPowerController"

    const-string v1, "isAutoChange, set brightness now"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenAutoBrightness:I
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)I

    move-result v2

    # invokes: Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;I)I

    move-result v1

    # invokes: Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V
    invoke-static {v0, v1, v4}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;II)V

    .line 602
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->isAutoChange:I
    invoke-static {v0, v4}, Lcom/android/server/display/DisplayPowerController;->access$1702(Lcom/android/server/display/DisplayPowerController;I)I

    .line 608
    :goto_1
    const-string v0, "DisplayPowerController"

    const-string v1, "mAnimateBrightnessTask called."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mWatingFirstLightSensorValue:Z
    invoke-static {v0, v4}, Lcom/android/server/display/DisplayPowerController;->access$202(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 610
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mWaitingApplyFirstLight:Z
    invoke-static {v0, v4}, Lcom/android/server/display/DisplayPowerController;->access$602(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 611
    return-void

    .line 595
    :cond_2
    const-string v0, "DisplayPowerController"

    const-string v1, "isAutoChange, set light sensor event "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mManualBrightnessController:Lcom/vivo/common/autobrightness/ManualBrightnessController;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Lcom/vivo/common/autobrightness/ManualBrightnessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->getLightEvent()Landroid/hardware/SensorEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessManager:Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1900(Lcom/android/server/display/DisplayPowerController;)Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mManualBrightnessController:Lcom/vivo/common/autobrightness/ManualBrightnessController;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Lcom/vivo/common/autobrightness/ManualBrightnessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->getLightEvent()Landroid/hardware/SensorEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->manualSetOnSensorChange(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenAutoBrightness:I
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)I

    move-result v2

    # invokes: Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;I)I

    move-result v1

    # invokes: Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V
    invoke-static {v0, v1, v4}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;II)V

    goto :goto_0

    .line 604
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenAutoBrightness:I
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)I

    move-result v2

    # invokes: Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;I)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenAutoBrightness:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mSettingBrightness:I
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$2000(Lcom/android/server/display/DisplayPowerController;)I

    move-result v3

    if-le v0, v3, :cond_5

    const/16 v0, 0xc8

    :goto_2
    # invokes: Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V
    invoke-static {v1, v2, v0}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;II)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x28

    goto :goto_2
.end method
