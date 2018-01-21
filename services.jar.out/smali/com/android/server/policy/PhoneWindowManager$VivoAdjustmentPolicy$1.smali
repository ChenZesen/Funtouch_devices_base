.class Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/VivoWMPHook$ShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->waitForVivo(Landroid/view/WindowManagerPolicy$ScreenOnListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

.field final synthetic val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0

    .prologue
    .line 8556
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$1;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 8559
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$1;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    # invokes: Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->access$4400(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 8560
    return-void
.end method
