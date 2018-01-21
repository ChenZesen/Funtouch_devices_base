.class Lcom/android/server/policy/VivoGlobalActionsDialog$4;
.super Ljava/lang/Object;
.source "VivoGlobalActionsDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoGlobalActionsDialog;->startInAnim()V
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
    .line 825
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$4;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$4;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsStarting:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$802(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z

    .line 846
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$4;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsStarting:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$802(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z

    .line 839
    const-string v0, "VivoGlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 851
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 830
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$4;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsStarting:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$802(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z

    .line 831
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$4;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # getter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$900(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$4;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # getter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$1000(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    return-void
.end method
