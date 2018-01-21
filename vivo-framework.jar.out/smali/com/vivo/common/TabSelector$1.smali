.class Lcom/vivo/common/TabSelector$1;
.super Ljava/lang/Object;
.source "TabSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/TabSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/TabSelector;


# direct methods
.method constructor <init>(Lcom/vivo/common/TabSelector;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vivo/common/TabSelector$1;->this$0:Lcom/vivo/common/TabSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/vivo/common/TabSelector$1;->this$0:Lcom/vivo/common/TabSelector;

    # getter for: Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/TabSelector;->access$000(Lcom/vivo/common/TabSelector;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/common/TabSelector$1;->this$0:Lcom/vivo/common/TabSelector;

    # getter for: Lcom/vivo/common/TabSelector;->mTabEnableState:[Z
    invoke-static {v1}, Lcom/vivo/common/TabSelector;->access$100(Lcom/vivo/common/TabSelector;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/vivo/common/TabSelector$1;->this$0:Lcom/vivo/common/TabSelector;

    invoke-virtual {v1, v0}, Lcom/vivo/common/TabSelector;->setSelectorTab(I)V

    .line 51
    iget-object v1, p0, Lcom/vivo/common/TabSelector$1;->this$0:Lcom/vivo/common/TabSelector;

    # getter for: Lcom/vivo/common/TabSelector;->mTabClickListener:[Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/vivo/common/TabSelector;->access$200(Lcom/vivo/common/TabSelector;)[Landroid/view/View$OnClickListener;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/vivo/common/TabSelector$1;->this$0:Lcom/vivo/common/TabSelector;

    # getter for: Lcom/vivo/common/TabSelector;->mTabClickListener:[Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/vivo/common/TabSelector;->access$200(Lcom/vivo/common/TabSelector;)[Landroid/view/View$OnClickListener;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 56
    :cond_0
    return-void

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
