.class Lcom/vivo/common/autobrightness/CameraParamLumaController$3;
.super Landroid/content/BroadcastReceiver;
.source "CameraParamLumaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/autobrightness/CameraParamLumaController;-><init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/CameraParamLumaController;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "level"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "current":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "scale"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, "total":I
    mul-int/lit8 v4, v0, 0x64

    div-int v2, v4, v3

    .line 87
    .local v2, "percent":I
    iget-object v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerPercent:I
    invoke-static {v4, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$402(Lcom/vivo/common/autobrightness/CameraParamLumaController;I)I

    .line 88
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    const/4 v1, 0x1

    .line 89
    .local v1, "low":Z
    :goto_0
    iget-object v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaController;->mLowPower:Z
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$500(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Z

    move-result v4

    if-eq v1, v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "low battery status changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaController;->mLowPower:Z
    invoke-static {v6}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$500(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$300(Lcom/vivo/common/autobrightness/CameraParamLumaController;Ljava/lang/String;)V

    .line 91
    iget-object v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaController;->mLowPower:Z
    invoke-static {v4, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$502(Lcom/vivo/common/autobrightness/CameraParamLumaController;Z)Z

    .line 92
    iget-object v5, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    if-eqz v1, :cond_1

    const/16 v4, 0x15

    :goto_1
    invoke-virtual {v5, v4}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->notifyStateChanged(I)I

    .line 97
    :goto_2
    return-void

    .line 88
    .end local v1    # "low":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    .restart local v1    # "low":Z
    :cond_1
    const/16 v4, 0x14

    goto :goto_1

    .line 95
    :cond_2
    iget-object v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery status not change: low="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$300(Lcom/vivo/common/autobrightness/CameraParamLumaController;Ljava/lang/String;)V

    goto :goto_2
.end method
