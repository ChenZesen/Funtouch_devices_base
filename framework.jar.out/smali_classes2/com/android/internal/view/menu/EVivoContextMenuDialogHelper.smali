.class public Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;
.super Lcom/android/internal/view/menu/MenuDialogHelper;
.source "EVivoContextMenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;,
        Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;
    }
.end annotation


# instance fields
.field private mContextMenuContent:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/Dialog;

.field private mExpandedIcon:Landroid/graphics/drawable/Drawable;

.field private mExpandedMode:Z

.field private mIconMenus:Landroid/widget/LinearLayout;

.field private mItemSpace:I

.field private mListAdapter:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMaxIconMenus:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuAdjust:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;

.field private mMenuItemMoreTextColor:Landroid/content/res/ColorStateList;

.field private mMenuItemTextColor:Landroid/content/res/ColorStateList;

.field private mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 65
    iput-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    .line 66
    iput-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuItemMoreTextColor:Landroid/content/res/ColorStateList;

    .line 68
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mExpandedMode:Z

    .line 69
    iput-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mExpandedIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    iput v4, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMaxIconMenus:I

    .line 77
    iput-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuAdjust:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;

    .line 78
    iput-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

    .line 81
    iput v5, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mItemSpace:I

    .line 85
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vivo/internal/R$styleable;->ContextMenu:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 88
    .local v1, "typeArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    .line 89
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuItemMoreTextColor:Landroid/content/res/ColorStateList;

    .line 90
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mExpandedIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .local v0, "density":F
    iget v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mItemSpace:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mItemSpace:I

    .line 97
    new-instance v2, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;

    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuAdjust:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mContextMenuContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->switchMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMaxIconMenus:I

    return v0
.end method

.method private addIconMenuItems()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 176
    iget-object v8, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 178
    .local v4, "itemsToShow":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMaxIconMenus:I

    if-le v8, v9, :cond_2

    const/4 v5, 0x1

    .line 179
    .local v5, "needsMore":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 181
    .local v3, "itemCount":I
    if-eqz v5, :cond_0

    .line 182
    iget v8, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMaxIconMenus:I

    add-int/lit8 v3, v8, -0x1

    .line 184
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 185
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 187
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v8, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x301002c

    invoke-direct {v1, v8, v9, v10}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    .local v1, "iconItem":Lcom/android/internal/view/menu/VivoContextMenuIconItem;
    invoke-virtual {v1, v2, v7}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 189
    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 191
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 194
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 196
    if-eqz v0, :cond_1

    .line 197
    iget v8, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mItemSpace:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    :cond_1
    iget-object v8, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mIconMenus:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "iconItem":Lcom/android/internal/view/menu/VivoContextMenuIconItem;
    .end local v2    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v3    # "itemCount":I
    .end local v5    # "needsMore":Z
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    move v5, v7

    .line 178
    goto :goto_0

    .line 202
    .restart local v0    # "i":I
    .restart local v3    # "itemCount":I
    .restart local v5    # "needsMore":Z
    :cond_3
    if-eqz v5, :cond_4

    .line 203
    invoke-direct {p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->addIconMenuMoreIcon()V

    .line 206
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->overROM3_0()Z

    move-result v7

    if-nez v7, :cond_5

    .line 207
    iget-object v7, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuAdjust:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;

    iget-object v8, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mIconMenus:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->adjust(Landroid/view/ViewGroup;)V

    .line 209
    :cond_5
    return v5
.end method

.method private addIconMenuMoreIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 213
    new-instance v1, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x301002c

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    .line 214
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mExpandedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 217
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 220
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 221
    iget v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mItemSpace:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 223
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mIconMenus:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    new-instance v2, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$3;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$3;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private overROM3_0()Z
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchMode()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, 0x2

    .line 233
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 234
    .local v2, "interpolator":Landroid/view/animation/PathInterpolator;
    iget-boolean v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mExpandedMode:Z

    if-eqz v3, :cond_0

    .line 235
    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 236
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 239
    .local v1, "height":I
    new-instance v3, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$4;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$4;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    new-instance v3, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$5;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$5;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 263
    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v4, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mExpandedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v4, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 298
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mExpandedMode:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mExpandedMode:Z

    .line 299
    return-void

    .line 267
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v1    # "height":I
    :cond_0
    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 268
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 269
    .restart local v1    # "height":I
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 271
    new-instance v3, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$6;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$6;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    new-instance v3, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$7;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$7;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 294
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 295
    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v4, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v4, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuItemMoreTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 298
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 235
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 267
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 318
    :cond_0
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 367
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 369
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListAdapter:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 345
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 327
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->dismiss()V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 333
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 323
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListAdapter:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 361
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 362
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 303
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    .line 107
    iget-object v5, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 109
    .local v5, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 111
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x303000f

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 112
    .local v8, "view":Landroid/view/View;
    const v9, 0x30d002c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mContextMenuContent:Landroid/widget/LinearLayout;

    .line 114
    const v9, 0x30d002b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 115
    .local v3, "mContextMenuRoot":Landroid/view/View;
    new-instance v9, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$1;

    invoke-direct {v9, p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$1;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v9, Lcom/android/internal/view/menu/VivoIconMenuPresenter;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/view/menu/VivoIconMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

    .line 123
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v10, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 125
    const v9, 0x30d002e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 126
    .local v4, "mTitleView":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 129
    const v9, 0x30d0030

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mIconMenus:Landroid/widget/LinearLayout;

    .line 130
    const v9, 0x30d0032

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    .line 132
    new-instance v9, Landroid/app/Dialog;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lvivo/util/VivoThemeUtil$ThemeType;->CONTEXT_MENU_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v11}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 134
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 135
    .local v1, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x50

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 137
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 138
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 141
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 143
    invoke-direct {p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->addIconMenuItems()Z

    move-result v6

    .line 144
    .local v6, "needMore":Z
    if-eqz v6, :cond_1

    .line 145
    new-instance v9, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$1;)V

    iput-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListAdapter:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;

    .line 146
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListAdapter:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 150
    .local v7, "observer":Landroid/view/ViewTreeObserver;
    new-instance v9, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$2;

    invoke-direct {v9, p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$2;-><init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 162
    .end local v7    # "observer":Landroid/view/ViewTreeObserver;
    :goto_0
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 163
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v9, -0x1

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 164
    const/4 v9, -0x2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 166
    if-eqz v6, :cond_0

    .line 167
    const v9, 0x30f0148

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 169
    :cond_0
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 172
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 173
    return-void

    .line 158
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const v9, 0x30d0031

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
