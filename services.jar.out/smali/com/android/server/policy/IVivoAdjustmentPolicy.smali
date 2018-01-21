.class public interface abstract Lcom/android/server/policy/IVivoAdjustmentPolicy;
.super Ljava/lang/Object;
.source "IVivoAdjustmentPolicy.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract doCustomKeyHandler(II)V
.end method

.method public abstract handleMetaKeyEvent()V
.end method

.method public abstract isShowingAndNotOccluded()Z
.end method

.method public abstract keyguardDone(ZZ)V
.end method

.method public abstract performHapticFeedback(IZZ)Z
.end method

.method public abstract requestScreenShot()V
.end method

.method public abstract resultKeyguardByFingerprint(ZLjava/lang/String;I)V
.end method

.method public abstract sendFingerprintMessage(I)V
.end method

.method public abstract sendMediaKeyEvent(Landroid/view/KeyEvent;)V
.end method
