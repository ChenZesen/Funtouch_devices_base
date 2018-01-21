.class Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VivoContextMenuDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->switchMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$7;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 387
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$7;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$200(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 379
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x30f0149

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 380
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$7;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$200(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 381
    return-void
.end method
