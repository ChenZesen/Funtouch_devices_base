.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$3;
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
    .line 316
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$2100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->onNeedCancelBrightness(I)V

    .line 324
    :cond_0
    return-void
.end method
