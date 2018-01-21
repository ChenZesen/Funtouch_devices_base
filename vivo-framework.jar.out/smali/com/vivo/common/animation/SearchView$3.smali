.class Lcom/vivo/common/animation/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 125
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView$3;->this$0:Lcom/vivo/common/animation/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 142
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$3;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$3;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/common/animation/SearchView$SearchViewListener;->onSwitchToNormalStateEnd()V

    .line 139
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 133
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$3;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$3;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/common/animation/SearchView$SearchViewListener;->onSwitchToNormalStateStart()V

    .line 130
    :cond_0
    return-void
.end method
