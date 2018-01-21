.class Lcom/vivo/common/animation/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/animation/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/animation/SearchView;


# direct methods
.method constructor <init>(Lcom/vivo/common/animation/SearchView;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView$1;->this$0:Lcom/vivo/common/animation/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 89
    .local v0, "value":F
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView$1;->this$0:Lcom/vivo/common/animation/SearchView;

    # invokes: Lcom/vivo/common/animation/SearchView;->updateLayoutParam(F)V
    invoke-static {v1, v0}, Lcom/vivo/common/animation/SearchView;->access$000(Lcom/vivo/common/animation/SearchView;F)V

    .line 91
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView$1;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v1}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView$1;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z
    invoke-static {v1}, Lcom/vivo/common/animation/SearchView;->access$200(Lcom/vivo/common/animation/SearchView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView$1;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v1}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/vivo/common/animation/SearchView$SearchViewListener;->onSwitchingToSearch(F)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/animation/SearchView$1;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v1}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/vivo/common/animation/SearchView$SearchViewListener;->onSwitchingToNormal(F)V

    goto :goto_0
.end method
