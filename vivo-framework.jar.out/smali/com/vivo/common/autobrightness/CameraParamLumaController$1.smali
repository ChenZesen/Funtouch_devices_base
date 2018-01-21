.class Lcom/vivo/common/autobrightness/CameraParamLumaController$1;
.super Ljava/lang/Object;
.source "CameraParamLumaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/CameraParamLumaController;
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
    .line 58
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$200(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerFilter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method
