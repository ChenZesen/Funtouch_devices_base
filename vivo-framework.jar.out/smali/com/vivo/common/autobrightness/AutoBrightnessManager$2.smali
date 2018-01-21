.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$2;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 305
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$2;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$2;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    .line 311
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$2;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setLumaServiceStatus(I)I

    .line 312
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$2;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v1, 0x0

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 313
    return-void
.end method
