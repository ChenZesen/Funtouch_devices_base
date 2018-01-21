.class Lcom/vivo/common/widget/VivoListView$2;
.super Ljava/lang/Object;
.source "VivoListView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/VivoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/VivoListView;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/VivoListView;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$000(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$100(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$100(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchTextChanageListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$200(Lcom/vivo/common/widget/VivoListView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchTextChanageListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$200(Lcom/vivo/common/widget/VivoListView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/vivo/common/widget/VivoListView;->access$000(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 308
    :cond_1
    return-void

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$100(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$2;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$100(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/Button;

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
    .line 287
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 292
    return-void
.end method
