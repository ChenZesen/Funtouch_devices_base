.class Lcom/android/server/policy/VivoGlobalActionsDialog$2;
.super Ljava/lang/Object;
.source "VivoGlobalActionsDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoGlobalActionsDialog;->startBackgroundAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$2;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 440
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$2;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # getter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$700(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$2;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # getter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mFakeView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$200(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 435
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 430
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$2;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # getter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mFakeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$200(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    return-void
.end method
