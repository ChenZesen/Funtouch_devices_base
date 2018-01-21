.class Lcom/vivo/common/BbkSearchTitleView$1;
.super Ljava/lang/Object;
.source "BbkSearchTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 221
    iput-object p1, p0, Lcom/vivo/common/BbkSearchTitleView$1;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$1;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$000(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/vivo/common/BbkSearchTitleView$1;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mSearchEditTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/vivo/common/BbkSearchTitleView;->access$000(Lcom/vivo/common/BbkSearchTitleView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method
