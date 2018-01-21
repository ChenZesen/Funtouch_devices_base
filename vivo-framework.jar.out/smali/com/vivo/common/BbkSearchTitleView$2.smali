.class Lcom/vivo/common/BbkSearchTitleView$2;
.super Ljava/lang/Object;
.source "BbkSearchTitleView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/BbkSearchTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/BbkSearchTitleView;


# direct methods
.method constructor <init>(Lcom/vivo/common/BbkSearchTitleView;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$000(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$100(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$100(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchTextChanageListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$200(Lcom/vivo/common/BbkSearchTitleView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchTextChanageListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$200(Lcom/vivo/common/BbkSearchTitleView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/vivo/common/BbkSearchTitleView;->access$000(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 249
    :cond_1
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$100(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$2;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$100(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 232
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 234
    return-void
.end method
