.class Lcom/vivo/common/autobrightness/CameraParamLumaController$2;
.super Ljava/lang/Object;
.source "CameraParamLumaController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 73
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$2;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$2;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    const-string v1, "call mRunnable"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->access$300(Lcom/vivo/common/autobrightness/CameraParamLumaController;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController$2;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->handleStateChanged()I

    .line 77
    return-void
.end method
