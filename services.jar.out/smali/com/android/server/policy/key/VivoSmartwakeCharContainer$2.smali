.class Lcom/android/server/policy/key/VivoSmartwakeCharContainer$2;
.super Ljava/lang/Object;
.source "VivoSmartwakeCharContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->disappearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$2;->this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 875
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 864
    const-string v0, "VivoSmartwakeCharContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All animation have ended,then call the callback : mEndCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$2;->this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->access$100(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$2;->this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;
    invoke-static {v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->access$100(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$2;->this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->mEndCallback:Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;
    invoke-static {v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->access$100(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;->charAnimationEnd()V

    .line 869
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 859
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 853
    return-void
.end method
