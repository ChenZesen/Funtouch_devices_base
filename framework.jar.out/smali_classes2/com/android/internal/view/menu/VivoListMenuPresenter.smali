.class public Lcom/android/internal/view/menu/VivoListMenuPresenter;
.super Lcom/android/internal/view/menu/IconMenuPresenter;
.source "VivoListMenuPresenter.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mMaxItems:I

.field private mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMaxItems:I

    .line 29
    :try_start_0
    const-class v2, Lcom/android/internal/view/menu/BaseMenuPresenter;

    const-string v3, "mMenuLayoutRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 31
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    const v2, 0x3030019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    const-class v2, Lcom/android/internal/view/menu/BaseMenuPresenter;

    const-string v3, "mItemLayoutRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    const v2, 0x3030018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VivoListMenuPresenter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private internalUpdateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .prologue
    .line 110
    iget-object v7, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 111
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 146
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    .line 115
    .local v0, "childIndex":I
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_6

    .line 116
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 117
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 118
    .local v8, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 119
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 120
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 121
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/view/menu/VivoListMenuPresenter;->shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 122
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v9, :cond_5

    move-object v9, v1

    check-cast v9, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v9}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v6

    .line 125
    .local v6, "oldItem":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Lcom/android/internal/view/menu/VivoListMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 126
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 128
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 132
    :cond_2
    if-eq v5, v1, :cond_3

    .line 133
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/view/menu/VivoListMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 135
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 119
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "oldItem":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 141
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "itemCount":I
    .end local v8    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 142
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/view/menu/VivoListMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 70
    move-object v2, p1

    check-cast v2, Lcom/android/internal/view/menu/VivoListMenuItemView;

    .line 71
    .local v2, "v":Lcom/android/internal/view/menu/VivoListMenuItemView;
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/android/internal/view/menu/VivoListMenuView;

    .line 72
    .local v1, "parent":Lcom/android/internal/view/menu/VivoListMenuView;
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 53
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/VivoListMenuItemView;

    .line 54
    .local v0, "view":Lcom/android/internal/view/menu/VivoListMenuItemView;
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setItemData(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/VivoListMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setVisibility(I)V

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setEnabled(Z)V

    .line 58
    return-void

    .line 56
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public getNumActualItemsShown()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/android/internal/view/menu/VivoListMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoListMenuView;->getNumActualItemsShown()I

    move-result v0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 49
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    iget-object v4, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    .local v1, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMaxItems:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMaxItems:I

    if-lt p1, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMaxItems:I

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_2

    :cond_1
    move v0, v2

    .line 65
    .local v0, "fits":Z
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    return v2

    .end local v0    # "fits":Z
    :cond_2
    move v0, v3

    .line 63
    goto :goto_0

    .restart local v0    # "fits":Z
    :cond_3
    move v2, v3

    .line 65
    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 5
    .param p1, "cleared"    # Z

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/android/internal/view/menu/VivoListMenuView;

    .line 83
    .local v1, "menuView":Lcom/android/internal/view/menu/VivoListMenuView;
    iget v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMaxItems:I

    if-gez v3, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/android/internal/view/menu/VivoListMenuView;->getMaxItems()I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMaxItems:I

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    .local v0, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMaxItems:I

    if-le v3, v4, :cond_4

    const/4 v2, 0x1

    .line 87
    .local v2, "needsMore":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/VivoListMenuPresenter;->internalUpdateMenuView(Z)V

    .line 88
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/VivoListMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, v1, :cond_2

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    if-nez v3, :cond_5

    .line 91
    invoke-virtual {v1}, Lcom/android/internal/view/menu/VivoListMenuView;->createMoreItemView()Lcom/android/internal/view/menu/VivoListMenuItemView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    .line 96
    :goto_1
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/VivoListMenuView;->addView(Landroid/view/View;)V

    .line 97
    :cond_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    if-eqz v3, :cond_3

    .line 98
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v4, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Lcom/android/internal/view/menu/VivoListMenuView;

    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 102
    :cond_3
    if-eqz v2, :cond_6

    iget v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMaxItems:I

    add-int/lit8 v3, v3, -0x1

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/VivoListMenuView;->setNumActualItemsShown(I)V

    .line 104
    return-void

    .line 86
    .end local v2    # "needsMore":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 94
    .restart local v2    # "needsMore":Z
    :cond_5
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoListMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/VivoListMenuView;->initMoreItemView(Lcom/android/internal/view/menu/VivoListMenuItemView;)V

    goto :goto_1

    .line 102
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_2
.end method
