.class Lcom/android/server/policy/key/VivoCameraKeyHandler$2;
.super Ljava/lang/Object;
.source "VivoCameraKeyHandler.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/key/VivoCameraKeyHandler;->dismissSplashView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "paramAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 419
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "paramAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->access$200(Lcom/android/server/policy/key/VivoCameraKeyHandler;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->access$300(Lcom/android/server/policy/key/VivoCameraKeyHandler;)Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->access$200(Lcom/android/server/policy/key/VivoCameraKeyHandler;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->access$300(Lcom/android/server/policy/key/VivoCameraKeyHandler;)Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 406
    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->access$302(Lcom/android/server/policy/key/VivoCameraKeyHandler;Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;)Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "paramAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 396
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "paramAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 390
    return-void
.end method
