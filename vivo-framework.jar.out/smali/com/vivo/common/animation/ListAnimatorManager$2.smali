.class Lcom/vivo/common/animation/ListAnimatorManager$2;
.super Ljava/lang/Object;
.source "ListAnimatorManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/animation/ListAnimatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/animation/ListAnimatorManager;


# direct methods
.method constructor <init>(Lcom/vivo/common/animation/ListAnimatorManager;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vivo/common/animation/ListAnimatorManager$2;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 103
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager$2;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    const/16 v1, 0x1000

    # setter for: Lcom/vivo/common/animation/ListAnimatorManager;->mState:I
    invoke-static {v0, v1}, Lcom/vivo/common/animation/ListAnimatorManager;->access$202(Lcom/vivo/common/animation/ListAnimatorManager;I)I

    .line 96
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager$2;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    # invokes: Lcom/vivo/common/animation/ListAnimatorManager;->reset()V
    invoke-static {v0}, Lcom/vivo/common/animation/ListAnimatorManager;->access$300(Lcom/vivo/common/animation/ListAnimatorManager;)V

    .line 97
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager$2;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    # getter for: Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;
    invoke-static {v0}, Lcom/vivo/common/animation/ListAnimatorManager;->access$100(Lcom/vivo/common/animation/ListAnimatorManager;)Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;->onAnimationEnd(Z)V

    .line 98
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vivo/common/animation/ListAnimatorManager$2;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    # getter for: Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;
    invoke-static {v0}, Lcom/vivo/common/animation/ListAnimatorManager;->access$100(Lcom/vivo/common/animation/ListAnimatorManager;)Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;->onAnimationStart(Z)V

    .line 85
    return-void
.end method
