.class Lcom/vivo/common/animation/ListAnimatorManager$3;
.super Ljava/lang/Object;
.source "ListAnimatorManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 107
    iput-object p1, p0, Lcom/vivo/common/animation/ListAnimatorManager$3;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 113
    .local v0, "value":F
    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager$3;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    # setter for: Lcom/vivo/common/animation/ListAnimatorManager;->mCurrentProgess:F
    invoke-static {v1, v0}, Lcom/vivo/common/animation/ListAnimatorManager;->access$402(Lcom/vivo/common/animation/ListAnimatorManager;F)F

    .line 115
    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager$3;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    # invokes: Lcom/vivo/common/animation/ListAnimatorManager;->updateUIProgress(F)V
    invoke-static {v1, v0}, Lcom/vivo/common/animation/ListAnimatorManager;->access$500(Lcom/vivo/common/animation/ListAnimatorManager;F)V

    .line 116
    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager$3;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    # getter for: Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;
    invoke-static {v1}, Lcom/vivo/common/animation/ListAnimatorManager;->access$100(Lcom/vivo/common/animation/ListAnimatorManager;)Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager$3;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    # getter for: Lcom/vivo/common/animation/ListAnimatorManager;->mIListControlHook:Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;
    invoke-static {v1}, Lcom/vivo/common/animation/ListAnimatorManager;->access$100(Lcom/vivo/common/animation/ListAnimatorManager;)Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;

    move-result-object v2

    iget-object v1, p0, Lcom/vivo/common/animation/ListAnimatorManager$3;->this$0:Lcom/vivo/common/animation/ListAnimatorManager;

    # getter for: Lcom/vivo/common/animation/ListAnimatorManager;->mState:I
    invoke-static {v1}, Lcom/vivo/common/animation/ListAnimatorManager;->access$200(Lcom/vivo/common/animation/ListAnimatorManager;)I

    move-result v1

    const/16 v3, 0x1003

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v0, v1}, Lcom/vivo/common/animation/ListAnimatorManager$IListControlHook;->onAmProgress(FZ)V

    .line 118
    :cond_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
