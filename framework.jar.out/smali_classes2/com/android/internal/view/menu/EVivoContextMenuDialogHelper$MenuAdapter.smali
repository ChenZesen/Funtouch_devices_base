.class Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "EVivoContextMenuDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;
    .param p2, "x1"    # Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v2}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$500(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 375
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMaxIconMenus:I
    invoke-static {v3}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$600(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 376
    .local v0, "count":I
    return v0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$500(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMaxIconMenus:I
    invoke-static {v1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$600(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p1, v1

    .line 382
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 388
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 392
    if-nez p2, :cond_0

    .line 393
    new-instance p2, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$500(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x301002b

    invoke-direct {p2, v0, v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 394
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move-object v0, p2

    .line 398
    check-cast v0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 404
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 405
    return-void
.end method
