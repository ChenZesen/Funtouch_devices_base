.class public Lcom/android/internal/widget/FtMainPanelLayout;
.super Landroid/widget/LinearLayout;
.source "FtMainPanelLayout.java"


# instance fields
.field private ID_ARROW_ABOVE:I

.field private ID_ARROW_BELOW:I

.field private ID_BUTTON_APPEARANCE:I

.field private ID_LEFT:I

.field private ID_MIDDLE:I

.field private ID_RIGHT:I

.field private ID_WHOLE:I

.field private final TAG:Ljava/lang/String;

.field private TOOLBAR_CONTENT_HEIGHT:I

.field private mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowBelowDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowHeight:I

.field private mArrowWidth:I

.field private mContext:Landroid/content/Context;

.field private mIsAbove:Z

.field private mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mPointTo:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/FtMainPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/FtMainPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/FtMainPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-string v2, "FtMainPanelLayout"

    iput-object v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->TAG:Ljava/lang/String;

    .line 33
    const v2, 0x30203ab

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_LEFT:I

    .line 34
    const v2, 0x30203b5

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_RIGHT:I

    .line 35
    const v2, 0x30203bb

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_WHOLE:I

    .line 36
    const v2, 0x30203a3

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_MIDDLE:I

    .line 37
    const v2, 0x30203b1

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_ARROW_ABOVE:I

    .line 38
    const v2, 0x30203b3

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_ARROW_BELOW:I

    .line 39
    iput v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_BUTTON_APPEARANCE:I

    .line 41
    iput-object v7, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 42
    iput-object v7, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mContext:Landroid/content/Context;

    .line 43
    const/16 v2, 0x84

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    .line 44
    iput-object v7, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v7, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowBelowDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    .line 47
    iput v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowHeight:I

    .line 48
    iput-boolean v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mIsAbove:Z

    .line 49
    iput v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mPointTo:I

    .line 50
    iput v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mScreenWidth:I

    .line 67
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 69
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mScreenWidth:I

    .line 71
    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget-object v3, Lvivo/util/VivoThemeUtil$ThemeType;->SYSTEM_DEFAULT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v3}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mContext:Landroid/content/Context;

    .line 72
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/FtMainPanelLayout;->setGravity(I)V

    .line 74
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/FtMainPanelLayout;->setWillNotDraw(Z)V

    .line 75
    iget-object v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/vivo/internal/R$styleable;->TextViewToolbar:[I

    const v4, 0x3010024

    const v5, 0x30f0119

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_LEFT:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_LEFT:I

    .line 78
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_MIDDLE:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_MIDDLE:I

    .line 79
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_RIGHT:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_RIGHT:I

    .line 80
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_WHOLE:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_WHOLE:I

    .line 81
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_ARROW_ABOVE:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_ARROW_ABOVE:I

    .line 82
    const/4 v2, 0x5

    iget v3, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_ARROW_BELOW:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_ARROW_BELOW:I

    .line 83
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_BUTTON_APPEARANCE:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_ARROW_ABOVE:I

    invoke-virtual {v2, v3, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_ARROW_BELOW:I

    invoke-virtual {v2, v3, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowBelowDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    .line 89
    iget-object v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowHeight:I

    .line 90
    iget-object v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    .line 91
    iget v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    iget v3, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/FtMainPanelLayout;->setMinimumHeight(I)V

    .line 92
    return-void
.end method

.method private createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const v4, 0x30f014a

    const/4 v3, 0x0

    .line 224
    invoke-direct {p0, p2}, Lcom/android/internal/widget/FtMainPanelLayout;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    new-instance v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_BUTTON_APPEARANCE:I

    invoke-direct {v0, p1, v5, v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 226
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 228
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 229
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 240
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return-object v0

    .line 233
    :cond_0
    new-instance v1, Landroid/widget/Button;

    iget v2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_BUTTON_APPEARANCE:I

    invoke-direct {v1, p1, v5, v2, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 234
    .local v1, "menuItemButton":Landroid/widget/Button;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 235
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 236
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 237
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 238
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method private isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 244
    move-object v0, p1

    .line 245
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method


# virtual methods
.method public layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
    .locals 28
    .param p2, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v19, Ljava/util/LinkedList;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 109
    .local v19, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->mScreenWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x10500a0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    sub-int v4, v21, v22

    .line 112
    .local v4, "availableWidth":I
    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v11

    .line 114
    .local v11, "itemSize":I
    if-nez v11, :cond_1

    .line 115
    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->clear()V

    .line 220
    :cond_0
    :goto_0
    return-object v19

    .line 119
    :cond_1
    div-int v12, v4, v11

    .line 121
    .local v12, "maxAvgWidth":I
    const-string v21, "FtMainPanelLayout"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "maxAvgWidth = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v18, 0x0

    .line 125
    .local v18, "remainWidth":I
    const/16 v16, 0x0

    .line 127
    .local v16, "overAvgWidthNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FtMainPanelLayout;->removeAllViews()V

    .line 129
    const/4 v8, 0x1

    .line 131
    .local v8, "isFirstItem":Z
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_9

    .line 132
    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/MenuItem;

    .line 133
    .local v13, "menuItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/android/internal/widget/FtMainPanelLayout;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v14

    .line 135
    .local v14, "menuItemButton":Landroid/view/View;
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_WHOLE:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    :goto_2
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 162
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 163
    .local v10, "itemMeasuredWidth":I
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 165
    .local v15, "menuItemButtonWidth":I
    if-le v10, v12, :cond_2

    .line 166
    add-int/lit8 v16, v16, 0x1

    .line 169
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/internal/widget/FtMainPanelLayout;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/FtMainPanelLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 172
    .local v17, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    instance-of v0, v14, Landroid/widget/Button;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v21, v14

    .line 175
    check-cast v21, Landroid/widget/Button;

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/Button;->setMinWidth(I)V

    move-object/from16 v21, v14

    .line 176
    check-cast v21, Landroid/widget/Button;

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 180
    :goto_3
    sub-int v21, v12, v15

    add-int v18, v18, v21

    .line 181
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .line 137
    .end local v10    # "itemMeasuredWidth":I
    .end local v15    # "menuItemButtonWidth":I
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    if-eqz v8, :cond_5

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FtMainPanelLayout;->isRtl()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_RIGHT:I

    move/from16 v21, v0

    :goto_4
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    const-wide/high16 v22, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v14}, Landroid/view/View;->getPaddingStart()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    invoke-virtual {v14}, Landroid/view/View;->getPaddingEnd()I

    move-result v23

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 144
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 138
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_LEFT:I

    move/from16 v21, v0

    goto :goto_4

    .line 145
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FtMainPanelLayout;->isRtl()Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_LEFT:I

    move/from16 v21, v0

    :goto_5
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    invoke-virtual {v14}, Landroid/view/View;->getPaddingStart()I

    move-result v21

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    const-wide/high16 v24, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v14}, Landroid/view/View;->getPaddingEnd()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_2

    .line 146
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_RIGHT:I

    move/from16 v21, v0

    goto :goto_5

    .line 153
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_MIDDLE:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 154
    invoke-virtual {v14}, Landroid/view/View;->getPaddingStart()I

    move-result v21

    mul-int/lit8 v21, v21, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    invoke-virtual {v14}, Landroid/view/View;->getPaddingEnd()I

    move-result v23

    mul-int/lit8 v23, v23, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_2

    .line 178
    .restart local v10    # "itemMeasuredWidth":I
    .restart local v15    # "menuItemButtonWidth":I
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, v17

    iput v15, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    .line 185
    .end local v10    # "itemMeasuredWidth":I
    .end local v13    # "menuItem":Landroid/view/MenuItem;
    .end local v14    # "menuItemButton":Landroid/view/View;
    .end local v15    # "menuItemButtonWidth":I
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    const-string v21, "FtMainPanelLayout"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "remainWidth = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v21, "FtMainPanelLayout"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "overAvgWidthNum = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v9, 0x0

    .line 189
    .local v9, "isTwoLines":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_d

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/FtMainPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 191
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_b

    .line 189
    .end local v5    # "child":Landroid/view/View;
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 194
    .restart local v5    # "child":Landroid/view/View;
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 195
    .local v20, "width":I
    instance-of v0, v5, Landroid/widget/Button;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 196
    check-cast v5, Landroid/widget/Button;

    .end local v5    # "child":Landroid/view/View;
    move-object v6, v5

    check-cast v6, Landroid/widget/Button;

    .line 197
    .local v6, "childTemp":Landroid/widget/Button;
    move/from16 v0, v20

    if-le v0, v12, :cond_c

    .line 198
    invoke-virtual {v6}, Landroid/widget/Button;->getMaxWidth()I

    move-result v21

    div-int v22, v18, v16

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 200
    :cond_c
    invoke-virtual {v6}, Landroid/widget/Button;->getMaxWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 201
    const/4 v9, 0x1

    goto :goto_7

    .line 206
    .end local v6    # "childTemp":Landroid/widget/Button;
    .end local v20    # "width":I
    :cond_d
    const-string v21, "FtMainPanelLayout"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isTwoLines = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz v9, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    .line 209
    const/4 v7, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_f

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/FtMainPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 211
    .restart local v5    # "child":Landroid/view/View;
    if-eqz v5, :cond_e

    .line 212
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 213
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 218
    .end local v5    # "child":Landroid/view/View;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getMinimumHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FtMainPanelLayout;->setMinimumHeight(I)V

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    const-string v5, "FtMainPanelLayout"

    const-string v6, "isRTL, setBackground"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/FtMainPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_RIGHT:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/FtMainPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->ID_LEFT:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 270
    :cond_0
    const/4 v1, 0x0

    .line 271
    .local v1, "left":I
    const/4 v4, 0x0

    .line 272
    .local v4, "top":I
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 273
    .local v2, "locationIn":[I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/FtMainPanelLayout;->getLocationOnScreen([I)V

    .line 274
    aget v3, v2, v7

    .line 275
    .local v3, "startEdge":I
    aget v5, v2, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getWidth()I

    move-result v6

    add-int v0, v5, v6

    .line 277
    .local v0, "endEdge":I
    iget v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mPointTo:I

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_1

    .line 278
    iget v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    div-int/lit8 v1, v5, 0x2

    .line 285
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mIsAbove:Z

    if-eqz v5, :cond_3

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowHeight:I

    sub-int v4, v5, v6

    .line 287
    iget-object v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    iget-object v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 295
    :goto_1
    return-void

    .line 279
    :cond_1
    iget v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mPointTo:I

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    if-lt v5, v6, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    goto :goto_0

    .line 282
    :cond_2
    iget v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mPointTo:I

    sub-int/2addr v5, v3

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->TOOLBAR_CONTENT_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 291
    iget-object v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowBelowDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowWidth:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    iget-object v5, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mArrowBelowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public setMenuItemOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method

.method public updateFloatingArrow(ZI)V
    .locals 0
    .param p1, "isAbove"    # Z
    .param p2, "pointTo"    # I

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mIsAbove:Z

    .line 100
    iput p2, p0, Lcom/android/internal/widget/FtMainPanelLayout;->mPointTo:I

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/widget/FtMainPanelLayout;->invalidate()V

    .line 102
    return-void
.end method
