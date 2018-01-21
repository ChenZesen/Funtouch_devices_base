.class Lcom/vivo/common/BbkTitleView$1;
.super Ljava/lang/Object;
.source "BbkTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/BbkTitleView;->setOnTitleClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/BbkTitleView;


# direct methods
.method constructor <init>(Lcom/vivo/common/BbkTitleView;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/vivo/common/BbkTitleView$1;->this$0:Lcom/vivo/common/BbkTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView$1;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v1}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/common/BbkTitleView$1;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v1}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView$1;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v1}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 345
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 346
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 351
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView$1;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v1}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView$1;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v1}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    goto :goto_0
.end method
