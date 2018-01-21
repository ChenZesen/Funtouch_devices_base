.class Lcom/android/server/display/DisplayPowerController$4;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/VivoAalCallback;


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
    .line 506
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableAal(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/high16 v1, -0x40800000    # -1.0f

    # setter for: Lcom/android/server/display/DisplayPowerController;->mVivoWaitingLux:F
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1102(Lcom/android/server/display/DisplayPowerController;F)F

    .line 516
    const-string v0, "DisplayPowerController"

    const-string v1, " onEnableAal nativeSetAALFunction  false=0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 518
    :cond_0
    const-string v0, "DisplayPowerController"

    const-string v1, " onEnableAal nativeSetAALFunction  enable=4"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGetLightLux(I)I
    .locals 2
    .param p1, "lux"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    int-to-float v1, p1

    # setter for: Lcom/android/server/display/DisplayPowerController;->mVivoWaitingLux:F
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1102(Lcom/android/server/display/DisplayPowerController;F)F

    .line 510
    const/4 v0, 0x0

    return v0
.end method
