.class Lcom/vivo/services/proxcali/VivoProxCaliService$3;
.super Ljava/lang/Object;
.source "VivoProxCaliService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/proxcali/VivoProxCaliService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;


# direct methods
.method constructor <init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 654
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 624
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 625
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const v1, 0x447fc000    # 1023.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const v1, 0x457ff000    # 4095.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsProxOverFlow:Z
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$200(Lcom/vivo/services/proxcali/VivoProxCaliService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    const-string v0, "VivoProxCaliService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProximityNonWake ps 1023 overflow.reset ps caldata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I
    invoke-static {v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$300(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # setter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsProxOverFlow:Z
    invoke-static {v0, v3}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$202(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)Z

    .line 628
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->pm:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$400(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isUseProximitySensorLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    const-string v0, "VivoProxCaliService"

    const-string v1, "ProximityNonWake use proximity lock when 1023 return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # setter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsLockWhenOverFlow:Z
    invoke-static {v0, v3}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$502(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)Z

    .line 653
    :cond_1
    :goto_0
    return-void

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliHandler:Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$600(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->removeMessages(I)V

    .line 634
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliHandler:Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$600(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliHandler:Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$600(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 638
    :cond_3
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsProxOverFlow:Z
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$200(Lcom/vivo/services/proxcali/VivoProxCaliService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    const-string v0, "VivoProxCaliService"

    const-string v1, "ProximityNonWake ps far away,do ps cali"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # setter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsProxOverFlow:Z
    invoke-static {v0, v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$202(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)Z

    .line 641
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsLockWhenOverFlow:Z
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$500(Lcom/vivo/services/proxcali/VivoProxCaliService;)Z

    move-result v0

    if-ne v0, v3, :cond_4

    .line 642
    const-string v0, "VivoProxCaliService"

    const-string v1, "ProximityNonWake use proximity lock when 1023 return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # setter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsLockWhenOverFlow:Z
    invoke-static {v0, v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$502(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)Z

    goto :goto_0

    .line 646
    :cond_4
    # setter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I
    invoke-static {v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$702(I)I

    .line 647
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$900(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartCaliRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$800(Lcom/vivo/services/proxcali/VivoProxCaliService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 648
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$900(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartCaliRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$800(Lcom/vivo/services/proxcali/VivoProxCaliService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 649
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1100(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1000(Lcom/vivo/services/proxcali/VivoProxCaliService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1100(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$3;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1000(Lcom/vivo/services/proxcali/VivoProxCaliService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
