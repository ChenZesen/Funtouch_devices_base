.class Lcom/vivo/services/proxcali/VivoProxCaliService$5;
.super Ljava/lang/Object;
.source "VivoProxCaliService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 678
    iput-object p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$5;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 680
    const-string v0, "VivoProxCaliService"

    const-string v1, "Start calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsUseVST:Z
    invoke-static {}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$5;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # invokes: Lcom/vivo/services/proxcali/VivoProxCaliService;->enableCalibrationUseVST(Z)V
    invoke-static {v0, v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2200(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)V

    .line 688
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$5;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # invokes: Lcom/vivo/services/proxcali/VivoProxCaliService;->enableCalibration(Z)V
    invoke-static {v0, v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2300(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)V

    goto :goto_0
.end method
