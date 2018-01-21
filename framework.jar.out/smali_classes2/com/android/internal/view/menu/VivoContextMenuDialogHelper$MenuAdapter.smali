.class Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "VivoContextMenuDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private menuItemHeight:I

.field final synthetic this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V
    .locals 2

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->menuItemHeight:I

    .line 482
    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {p1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->menuItemHeight:I

    .line 483
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 486
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v2}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 487
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMaxIconMenus:I
    invoke-static {v3}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$600(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 488
    .local v0, "count":I
    return v0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 493
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMaxIconMenus:I
    invoke-static {v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$600(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p1, v1

    .line 494
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 500
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 504
    if-nez p2, :cond_0

    .line 505
    new-instance p2, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$000(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x301002b

    invoke-direct {p2, v0, v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local p2    # "convertView":Landroid/view/View;
    move-object v0, p2

    .line 506
    check-cast v0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;
    invoke-static {v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$700(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 507
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->menuItemHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move-object v0, p2

    .line 510
    check-cast v0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setText(Ljava/lang/CharSequence;)V

    .line 512
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 518
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 519
    return-void
.end method
