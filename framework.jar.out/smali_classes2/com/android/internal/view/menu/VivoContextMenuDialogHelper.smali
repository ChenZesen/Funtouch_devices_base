.class public Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;
.super Lcom/android/internal/view/menu/MenuDialogHelper;
.source "VivoContextMenuDialogHelper.java"

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
        Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuItemAdjust;,
        Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;
    }
.end annotation


# instance fields
.field private mContextMenuContent:Landroid/widget/LinearLayout;

.field private mContextMenuRoot:Landroid/widget/FrameLayout;

.field private mDensity:F

.field private mDialog:Landroid/app/Dialog;

.field private mExpandedIcon:Landroid/graphics/drawable/Drawable;

.field private mExpandedMode:Z

.field private mIconMenus:Landroid/widget/LinearLayout;

.field private mItemWidth:I

.field private mListAdapter:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMaxIconMenus:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuAdjust:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuItemAdjust;

.field private mMenuItemMoreTextColor:Landroid/content/res/ColorStateList;

.field private mMenuItemTextColor:Landroid/content/res/ColorStateList;

.field private mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 75
    iput v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMaxIconMenus:I

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mExpandedMode:Z

    .line 85
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    .line 87
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemMoreTextColor:Landroid/content/res/ColorStateList;

    .line 89
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mExpandedIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuAdjust:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuItemAdjust;

    .line 99
    new-instance v1, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$1;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

    .line 175
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 177
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/vivo/internal/R$styleable;->ContextMenu:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, "typeArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    .line 179
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemMoreTextColor:Landroid/content/res/ColorStateList;

    .line 180
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 181
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mExpandedIcon:Landroid/graphics/drawable/Drawable;

    .line 182
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    new-instance v1, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuItemAdjust;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuItemAdjust;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuAdjust:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuItemAdjust;

    .line 185
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDensity:F

    .line 186
    iget v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDensity:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 187
    const/16 v1, 0x4a

    iput v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mItemWidth:I

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    const/16 v1, 0x4e

    iput v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mItemWidth:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mContextMenuContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->switchMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMaxIconMenus:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private overROM3_0()Z
    .locals 2

    .prologue
    .line 410
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

    .line 337
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 338
    .local v2, "interpolator":Landroid/view/animation/PathInterpolator;
    iget-boolean v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mExpandedMode:Z

    if-eqz v3, :cond_0

    .line 339
    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 340
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 342
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 343
    .local v1, "height":I
    new-instance v3, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$5;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$5;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    new-instance v3, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$6;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$6;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 366
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 367
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v4, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mExpandedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v4, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 402
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mExpandedMode:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mExpandedMode:Z

    .line 403
    return-void

    .line 371
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v1    # "height":I
    :cond_0
    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 372
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 373
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 374
    .restart local v1    # "height":I
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 375
    new-instance v3, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$7;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$7;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    new-instance v3, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$8;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$8;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 398
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 399
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v4, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v4, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemMoreTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 402
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 339
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 371
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addIconMenuItems()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 281
    iget-object v8, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 282
    .local v4, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMaxIconMenus:I

    if-le v8, v9, :cond_2

    const/4 v5, 0x1

    .line 283
    .local v5, "needsMore":Z
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 284
    .local v3, "itemCount":I
    if-eqz v5, :cond_0

    .line 285
    iget v8, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMaxIconMenus:I

    add-int/lit8 v3, v8, -0x1

    .line 288
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 289
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 290
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v8, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x301002c

    invoke-direct {v1, v8, v9, v10}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 292
    .local v1, "iconItem":Lcom/android/internal/view/menu/VivoContextMenuIconItem;
    iget-object v8, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v8}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 294
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 297
    const/high16 v8, 0x41000000    # 8.0f

    iget v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDensity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 299
    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 301
    invoke-virtual {v1, v2, v7}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 302
    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 303
    iget-object v8, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mIconMenus:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
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

    .line 282
    goto :goto_0

    .line 306
    .restart local v0    # "i":I
    .restart local v3    # "itemCount":I
    .restart local v5    # "needsMore":Z
    :cond_3
    if-eqz v5, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->addMoreIcon()V

    .line 310
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->overROM3_0()Z

    move-result v7

    if-nez v7, :cond_5

    .line 311
    iget-object v7, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuAdjust:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuItemAdjust;

    iget-object v8, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mIconMenus:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuItemAdjust;->adjust(Landroid/view/ViewGroup;)V

    .line 312
    :cond_5
    return v5
.end method

.method public addMoreIcon()V
    .locals 5

    .prologue
    .line 317
    new-instance v1, Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x301002c

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    .line 318
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mExpandedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 322
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 324
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 325
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 326
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mIconMenus:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMoreItem:Lcom/android/internal/view/menu/VivoContextMenuIconItem;

    new-instance v2, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$4;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$4;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 422
    :cond_0
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 474
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 475
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListAdapter:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 449
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 431
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->dismiss()V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 437
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 427
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
    .line 465
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListAdapter:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 467
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 469
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 444
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
    .line 406
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 407
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    .line 199
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 201
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 204
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x303000f

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 206
    .local v8, "view":Landroid/view/View;
    const v9, 0x30d002b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mContextMenuRoot:Landroid/widget/FrameLayout;

    .line 209
    const v9, 0x30d002c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mContextMenuContent:Landroid/widget/LinearLayout;

    .line 211
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mContextMenuRoot:Landroid/widget/FrameLayout;

    new-instance v10, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$2;

    invoke-direct {v10, p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$2;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v10, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mMenuPresenter:Lcom/android/internal/view/menu/MenuPresenter;

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 226
    const v9, 0x30d002e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mTitleView:Landroid/widget/TextView;

    .line 228
    const v9, 0x30d0030

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mIconMenus:Landroid/widget/LinearLayout;

    .line 230
    const v9, 0x30d0032

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    .line 232
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 233
    .local v7, "screenWidth":I
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 234
    .local v6, "screenHeight":I
    new-instance v9, Landroid/app/Dialog;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lvivo/util/VivoThemeUtil$ThemeType;->CONTEXT_MENU_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v11}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 236
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mTitleView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 238
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 240
    .local v1, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x50

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 242
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 243
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 244
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 247
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->addIconMenuItems()Z

    move-result v4

    .line 249
    .local v4, "needMore":Z
    if-eqz v4, :cond_1

    .line 250
    new-instance v9, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;

    invoke-direct {v9, p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V

    iput-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListAdapter:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;

    .line 251
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListAdapter:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$MenuAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    .line 255
    .local v5, "observer":Landroid/view/ViewTreeObserver;
    new-instance v9, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$3;

    invoke-direct {v9, p0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$3;-><init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V

    invoke-virtual {v5, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 265
    .end local v5    # "observer":Landroid/view/ViewTreeObserver;
    :goto_0
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 266
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v9, -0x1

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 267
    const/4 v9, -0x2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 269
    if-eqz v4, :cond_0

    .line 270
    const v9, 0x30f0148

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 272
    :cond_0
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 273
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 276
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 277
    return-void

    .line 262
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const v9, 0x30d0031

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v9, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
