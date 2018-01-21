.class Lcom/android/server/policy/VivoGlobalActionsDialog$5;
.super Ljava/lang/Object;
.source "VivoGlobalActionsDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoGlobalActionsDialog;->startOutAnim()V
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
    .line 884
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$5;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$5;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsExiting:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$1102(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z

    .line 905
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$5;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsExiting:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$1102(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z

    .line 898
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$5;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->dismiss()V

    .line 899
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 911
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$5;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsExiting:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$1102(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z

    .line 890
    return-void
.end method
