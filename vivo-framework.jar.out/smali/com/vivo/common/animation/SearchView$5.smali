.class Lcom/vivo/common/animation/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 174
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/16 v2, 0x8

    .line 176
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mCodeClear:Z
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1200(Lcom/vivo/common/animation/SearchView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1100(Lcom/vivo/common/animation/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 179
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1100(Lcom/vivo/common/animation/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchViewListener:Lcom/vivo/common/animation/SearchView$SearchViewListener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$100(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchViewListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/common/animation/SearchView$SearchViewListener;->onSearchTextChanged(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchLinstener:Lcom/vivo/common/animation/SearchView$SearchLinstener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1000(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchLinstener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mSearchLinstener:Lcom/vivo/common/animation/SearchView$SearchLinstener;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1000(Lcom/vivo/common/animation/SearchView;)Lcom/vivo/common/animation/SearchView$SearchLinstener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/common/animation/SearchView$SearchLinstener;->onSearchTextChanged(Ljava/lang/String;)V

    .line 190
    :cond_1
    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1100(Lcom/vivo/common/animation/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$5;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mClearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1100(Lcom/vivo/common/animation/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 198
    return-void
.end method
