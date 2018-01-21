.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$12;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;


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
    .line 724
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$12;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAutobrightInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)Z
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 747
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$12;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$12;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$12;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 749
    const/4 v0, 0x1

    .line 752
    :goto_0
    return v0

    .line 751
    :cond_0
    const-string v0, "AutoBrightnessManager"

    const-string v1, "mStatisticsCallback onGetAutobrightInfo: info is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGetLightDegree()I
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public onGetLumaInfo(Lcom/vivo/common/autobrightness/LumaInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/vivo/common/autobrightness/LumaInfo;

    .prologue
    .line 736
    return-void
.end method

.method public onUpdateSceneState(I)I
    .locals 1
    .param p1, "sceneState"    # I

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method
