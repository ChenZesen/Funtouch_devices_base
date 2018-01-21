.class public Lcom/android/internal/view/menu/VivoIconMenuView;
.super Landroid/widget/LinearLayout;
.source "VivoIconMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mMaxItems:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mNumActualItemsShown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/VivoIconMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "VivoIconMenuView"

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->DEBUG:Z

    .line 33
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->mMaxItems:I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/VivoIconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private setTitle(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 12
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v11, 0x0

    .line 54
    const v8, 0x30d0043

    invoke-virtual {p0, v8}, Lcom/android/internal/view/menu/VivoIconMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "headerView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_4

    .line 57
    const/4 v5, 0x0

    .line 59
    .local v5, "showHeader":Z
    const v8, 0x30d002a

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 60
    .local v7, "titleView":Landroid/widget/TextView;
    const v8, 0x30d003c

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 62
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/4 v5, 0x1

    .line 70
    const-string v8, "VivoIconMenuView"

    const-string v9, "setTitle icon"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 74
    .local v6, "titleStr":Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 75
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 80
    .local v4, "padding":I
    invoke-virtual {v7, v4, v11, v4, v11}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 83
    .end local v4    # "padding":I
    :cond_1
    const/4 v5, 0x1

    .line 86
    const-string v8, "VivoIconMenuView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setTitle [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    if-eqz v5, :cond_3

    .line 90
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "showHeader":Z
    .end local v6    # "titleStr":Ljava/lang/CharSequence;
    .end local v7    # "titleView":Landroid/widget/TextView;
    :cond_3
    :goto_0
    return-void

    .line 93
    :cond_4
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 94
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8, v11, v3}, Lcom/android/internal/view/menu/VivoIconMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public createMoreItemView()Lcom/android/internal/view/menu/VivoIconMenuItemView;
    .locals 6

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoIconMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 117
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x3030015

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 120
    .local v2, "itemView":Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoIconMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 121
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x1040326

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 122
    new-instance v4, Lcom/android/internal/view/menu/VivoIconMenuView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/view/menu/VivoIconMenuView$1;-><init>(Lcom/android/internal/view/menu/VivoIconMenuView;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-object v2
.end method

.method getMaxItems()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->mMaxItems:I

    return v0
.end method

.method getNumActualItemsShown()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->mNumActualItemsShown:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x10302df

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/VivoIconMenuView;->setTitle(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 50
    const-string v0, "VivoIconMenuView"

    const-string v1, "initialize new VivoIconMenuView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 108
    const-string v0, "VivoIconMenuView"

    const-string v1, "invokeItem in VivoIconMenuView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method setNumActualItemsShown(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/internal/view/menu/VivoIconMenuView;->mNumActualItemsShown:I

    .line 147
    return-void
.end method
