.class Lcom/vivo/common/animation/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 145
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick   mEnableInnerClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mEnableInnerClick:Z
    invoke-static {v2}, Lcom/vivo/common/animation/SearchView;->access$400(Lcom/vivo/common/animation/SearchView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/vivo/common/animation/SearchView;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/animation/SearchView;->access$500(Lcom/vivo/common/animation/SearchView;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$600(Lcom/vivo/common/animation/SearchView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mEnableInnerClick:Z
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$400(Lcom/vivo/common/animation/SearchView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$200(Lcom/vivo/common/animation/SearchView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # invokes: Lcom/vivo/common/animation/SearchView;->isAnimRun()Z
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$700(Lcom/vivo/common/animation/SearchView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView;->hidenSearch()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mButtonClickLinstener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$800(Lcom/vivo/common/animation/SearchView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mButtonClickLinstener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$800(Lcom/vivo/common/animation/SearchView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/vivo/common/animation/SearchView;->access$600(Lcom/vivo/common/animation/SearchView;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$900(Lcom/vivo/common/animation/SearchView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchLinstener:Lcom/vivo/common/animation/SearchView$SearchLinstener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1000(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchLinstener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchLinstener:Lcom/vivo/common/animation/SearchView$SearchLinstener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1000(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchLinstener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/common/animation/SearchView$SearchLinstener;->processSearchClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mButtonVisible:Z
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$200(Lcom/vivo/common/animation/SearchView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # invokes: Lcom/vivo/common/animation/SearchView;->isAnimRun()Z
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$700(Lcom/vivo/common/animation/SearchView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView;->showSearch()V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1100(Lcom/vivo/common/animation/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # invokes: Lcom/vivo/common/animation/SearchView;->showInput()V
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$300(Lcom/vivo/common/animation/SearchView;)V

    .line 169
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$4;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$900(Lcom/vivo/common/animation/SearchView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
