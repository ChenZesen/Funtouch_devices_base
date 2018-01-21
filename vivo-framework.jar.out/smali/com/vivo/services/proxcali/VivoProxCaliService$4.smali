.class Lcom/vivo/services/proxcali/VivoProxCaliService$4;
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
    .line 657
    iput-object p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 676
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v3, 0xc

    .line 660
    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PD1225"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # invokes: Lcom/vivo/services/proxcali/VivoProxCaliService;->getPsDataFromKernel()V
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1300(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1400(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 665
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    const/4 v2, 0x1

    # += operator for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I
    invoke-static {v1, v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1412(Lcom/vivo/services/proxcali/VivoProxCaliService;I)I

    .line 666
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F
    invoke-static {v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1500(Lcom/vivo/services/proxcali/VivoProxCaliService;)F

    move-result v2

    div-float v0, v1, v2

    .line 667
    .local v0, "lightValue":F
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    const/high16 v2, 0x41400000    # 12.0f

    div-float v2, v0, v2

    # += operator for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F
    invoke-static {v1, v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1616(Lcom/vivo/services/proxcali/VivoProxCaliService;F)F

    .line 670
    .end local v0    # "lightValue":F
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1700(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1400(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v1

    if-ne v1, v3, :cond_2

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z
    invoke-static {}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsVerifying:Z
    invoke-static {}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$1900()Z

    move-result v1

    if-nez v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$4;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # invokes: Lcom/vivo/services/proxcali/VivoProxCaliService;->verifyCalibrationValue()V
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2000(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    .line 675
    :cond_2
    return-void
.end method
