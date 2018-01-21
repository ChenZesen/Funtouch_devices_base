.class public Lcom/android/internal/view/menu/VivoIconMenuPresenter;
.super Lcom/android/internal/view/menu/IconMenuPresenter;
.source "VivoIconMenuPresenter.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/VivoIconMenuPresenter$1;,
        Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mMaxItems:I

.field private mMoreView:Lcom/android/internal/view/menu/VivoIconMenuItemView;

.field private mOpenSubMenu:Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

.field mOpenSubMenuId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, "VivoIconMenuPresenter"

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->DEBUG:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMaxItems:I

    .line 48
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 49
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 52
    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    .line 57
    const-string v0, "mMenuLayoutRes"

    const v1, 0x3030016

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->setFieldInt(Ljava/lang/String;I)V

    .line 58
    const-string v0, "mItemLayoutRes"

    const v1, 0x3030015

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->setFieldInt(Ljava/lang/String;I)V

    .line 61
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/VivoIconMenuPresenter;)Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/view/menu/VivoIconMenuPresenter;Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;)Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuPresenter;
    .param p1, "x1"    # Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    return-object p1
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 188
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 189
    .local v0, "pr":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 191
    const-string v2, "VivoIconMenuPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFieldInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 67
    :try_start_0
    const-class v2, Lcom/android/internal/view/menu/BaseMenuPresenter;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 69
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VivoIconMenuPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set private Filed["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->logException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private updateMenuViewInternal(Z)V
    .locals 12
    .param p1, "cleared"    # Z

    .prologue
    .line 128
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    const v10, 0x30d0034

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 129
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 131
    const-string v9, "VivoIconMenuPresenter"

    const-string v10, "updateMenuViewInternal not found ViewGroup id[content]"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 136
    .local v0, "childIndex":I
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_6

    .line 137
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 138
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 139
    .local v8, "visibleItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 142
    .local v4, "itemCount":I
    const-string v9, "VivoIconMenuPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "we will add [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ] menu items"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 145
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 147
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 148
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v9, :cond_5

    move-object v9, v1

    check-cast v9, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v9}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v6

    .line 151
    .local v6, "oldItem":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 153
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 155
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 156
    invoke-virtual {v5}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 159
    :cond_2
    if-eq v5, v1, :cond_3

    .line 160
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 163
    const-string v9, "VivoIconMenuPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ]  menu item"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 144
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "oldItem":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 172
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "itemCount":I
    .end local v8    # "visibleItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 173
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 175
    const-string v9, "VivoIconMenuPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "filter menu item index[ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 7
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 196
    move-object v3, p1

    check-cast v3, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 197
    .local v3, "v":Lcom/android/internal/view/menu/VivoIconMenuItemView;
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v2, Lcom/android/internal/view/menu/VivoIconMenuView;

    .line 198
    .local v2, "menu":Lcom/android/internal/view/menu/VivoIconMenuView;
    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 201
    .local v1, "currentParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    :cond_0
    iget-object v4, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x30d0034

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 206
    .local v0, "content":Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 207
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "addItemView not find View with id [content]"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 212
    const-string v4, "VivoIconMenuPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 81
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 82
    .local v0, "view":Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 85
    const-string v1, "VivoIconMenuPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindItemView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public getNumActualItemsShown()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/android/internal/view/menu/VivoIconMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/VivoIconMenuView;->getNumActualItemsShown()I

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 254
    :cond_0
    const-string v0, "VivoIconMenuPresenter"

    const-string v1, "onCloseMenu invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 244
    :goto_0
    return v1

    .line 230
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 231
    .local v0, "helper":Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;
    new-instance v1, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/view/menu/VivoIconMenuPresenter$SubMenuPresenterCallback;-><init>(Lcom/android/internal/view/menu/VivoIconMenuPresenter;Lcom/android/internal/view/menu/VivoIconMenuPresenter$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 232
    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 234
    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/VivoIconMenuDialogHelper;

    .line 235
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mOpenSubMenuId:I

    .line 238
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 242
    :cond_1
    const-string v1, "VivoIconMenuPresenter"

    const-string v2, "onSubMenuSelected invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "b"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 218
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    iget-object v4, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    .local v1, "itemsToShow":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMaxItems:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMaxItems:I

    if-lt p1, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMaxItems:I

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_2

    :cond_1
    move v0, v2

    .line 93
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

    .line 91
    goto :goto_0

    .restart local v0    # "fits":Z
    :cond_3
    move v2, v3

    .line 93
    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 5
    .param p1, "cleared"    # Z

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/android/internal/view/menu/VivoIconMenuView;

    .line 99
    .local v1, "menuView":Lcom/android/internal/view/menu/VivoIconMenuView;
    if-nez v1, :cond_0

    .line 101
    const-string v3, "VivoIconMenuPresenter"

    const-string v4, "updateMenuView exit for mMenuView[null]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    .local v0, "itemsToShow":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget v3, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMaxItems:I

    if-gez v3, :cond_1

    .line 108
    invoke-virtual {v1}, Lcom/android/internal/view/menu/VivoIconMenuView;->getMaxItems()I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMaxItems:I

    .line 110
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMaxItems:I

    if-le v3, v4, :cond_2

    const/4 v2, 0x1

    .line 111
    .local v2, "needsMore":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->updateMenuViewInternal(Z)V

    .line 123
    if-eqz v2, :cond_3

    iget v3, p0, Lcom/android/internal/view/menu/VivoIconMenuPresenter;->mMaxItems:I

    add-int/lit8 v3, v3, -0x1

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/VivoIconMenuView;->setNumActualItemsShown(I)V

    goto :goto_0

    .line 110
    .end local v2    # "needsMore":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 123
    .restart local v2    # "needsMore":Z
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2
.end method
