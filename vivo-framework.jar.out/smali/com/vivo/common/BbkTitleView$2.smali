.class Lcom/vivo/common/BbkTitleView$2;
.super Ljava/lang/Object;
.source "BbkTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/BbkTitleView;->setOnTitleClickListener()V
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
    .line 358
    iput-object p1, p0, Lcom/vivo/common/BbkTitleView$2;->this$0:Lcom/vivo/common/BbkTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$2;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$200(Lcom/vivo/common/BbkTitleView;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/vivo/app/VivoBaseActivity;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$2;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$300(Lcom/vivo/common/BbkTitleView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vivo/app/VivoBaseActivity;

    .line 364
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$2;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$2;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$2;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-nez v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$2;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 367
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v3, v3}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 368
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 375
    .end local v0    # "activity":Lcom/vivo/app/VivoBaseActivity;
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_0
    :goto_0
    return-void

    .line 369
    .restart local v0    # "activity":Lcom/vivo/app/VivoBaseActivity;
    :cond_1
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$2;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/GridView;

    if-eqz v2, :cond_0

    goto :goto_0
.end method
