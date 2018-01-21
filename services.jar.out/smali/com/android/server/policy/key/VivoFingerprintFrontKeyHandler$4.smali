.class Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$4;
.super Ljava/lang/Object;
.source "VivoFingerprintFrontKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->fingerprintsuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->lockMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$700(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)V

    .line 633
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$800(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->resetLockoutAttemptDeadline(I)V

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getLockSettings()Lcom/android/internal/widget/ILockSettings;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$900(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->clearLockCountDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v1

    goto :goto_0
.end method
