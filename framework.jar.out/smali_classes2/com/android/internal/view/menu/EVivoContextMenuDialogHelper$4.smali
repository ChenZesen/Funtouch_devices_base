.class Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EVivoContextMenuDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->switchMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$4;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$4;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 249
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x30f0148

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 250
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$4;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 251
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 243
    return-void
.end method
