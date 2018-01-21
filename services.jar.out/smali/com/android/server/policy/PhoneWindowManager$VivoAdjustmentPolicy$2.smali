.class Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/VivoWMPHook$ShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->finishScreenTurningOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)V
    .locals 0

    .prologue
    .line 8595
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$2;->this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 8598
    if-eqz p1, :cond_0

    .line 8599
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$2;->this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->access$4500(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)Lcom/android/server/policy/VivoWMPHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/policy/VivoWMPHook;->finishScreenTurningOn(Landroid/os/IBinder;)V

    .line 8601
    :cond_0
    return-void
.end method
