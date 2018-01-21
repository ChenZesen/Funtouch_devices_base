.class public Lcom/vivo/common/TabSelector;
.super Landroid/widget/LinearLayout;
.source "TabSelector.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final TAB_CENTER:I = 0x1

.field public static final TAB_END:I = 0x3

.field public static final TAB_LEFT:I = 0x0

.field public static final TAB_RIGHT:I = 0x2


# instance fields
.field private mCurrentTab:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mStateList:[I

.field private mTabClickListener:[Landroid/view/View$OnClickListener;

.field private mTabColorList:[Landroid/content/res/ColorStateList;

.field private mTabEnableState:[Z

.field private mTabHeight:I

.field private mTabItemHeight:[I

.field private mTabSelector:[Landroid/graphics/drawable/Drawable;

.field private mTabWidth:I

.field private mTabs:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x3

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    .line 28
    iput v2, p0, Lcom/vivo/common/TabSelector;->mTabWidth:I

    .line 29
    iput v2, p0, Lcom/vivo/common/TabSelector;->mTabHeight:I

    .line 31
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    .line 33
    new-array v0, v1, [Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/vivo/common/TabSelector;->mTabClickListener:[Landroid/view/View$OnClickListener;

    .line 34
    new-array v0, v1, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/vivo/common/TabSelector;->mTabColorList:[Landroid/content/res/ColorStateList;

    .line 35
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/vivo/common/TabSelector;->mTabEnableState:[Z

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/common/TabSelector;->mStateList:[I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/TabSelector;->mCurrentTab:I

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    .line 41
    new-instance v0, Lcom/vivo/common/TabSelector$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/TabSelector$1;-><init>(Lcom/vivo/common/TabSelector;)V

    iput-object v0, p0, Lcom/vivo/common/TabSelector;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x2

    const/4 v2, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-array v1, v4, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    .line 28
    iput v2, p0, Lcom/vivo/common/TabSelector;->mTabWidth:I

    .line 29
    iput v2, p0, Lcom/vivo/common/TabSelector;->mTabHeight:I

    .line 31
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    .line 33
    new-array v1, v4, [Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/vivo/common/TabSelector;->mTabClickListener:[Landroid/view/View$OnClickListener;

    .line 34
    new-array v1, v4, [Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/vivo/common/TabSelector;->mTabColorList:[Landroid/content/res/ColorStateList;

    .line 35
    new-array v1, v4, [Z

    iput-object v1, p0, Lcom/vivo/common/TabSelector;->mTabEnableState:[Z

    .line 36
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/vivo/common/TabSelector;->mStateList:[I

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/common/TabSelector;->mCurrentTab:I

    .line 39
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    .line 41
    new-instance v1, Lcom/vivo/common/TabSelector$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/TabSelector$1;-><init>(Lcom/vivo/common/TabSelector;)V

    iput-object v1, p0, Lcom/vivo/common/TabSelector;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 63
    sget-object v1, Lcom/vivo/internal/R$styleable;->TabSelector:[I

    const v2, 0x3010006

    const v3, 0x30f011c

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/vivo/common/TabSelector;->mTabWidth:I

    .line 66
    iget-object v1, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v7

    .line 67
    iget-object v1, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 68
    iget-object v1, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    .line 69
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/common/TabSelector;->setTabStateColorList(Landroid/content/res/ColorStateList;)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0, v5}, Lcom/vivo/common/TabSelector;->setBaselineAligned(Z)V

    .line 73
    invoke-direct {p0, p1}, Lcom/vivo/common/TabSelector;->initLayout(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0, v5}, Lcom/vivo/common/TabSelector;->setSelectorTab(I)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/TabSelector;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/TabSelector;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/TabSelector;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/TabSelector;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabEnableState:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/TabSelector;)[Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/TabSelector;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabClickListener:[Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private cloneStateColorList(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 9
    .param p1, "org"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v8, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v4

    .line 211
    .local v4, "state":[[I
    array-length v5, v4

    new-array v3, v5, [[I

    .line 212
    .local v3, "nstate":[[I
    array-length v5, v4

    if-lez v5, :cond_0

    .line 213
    array-length v5, v4

    invoke-static {v4, v8, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 216
    aget-object v5, v4, v1

    array-length v5, v5

    new-array v5, v5, [I

    aput-object v5, v3, v1

    .line 217
    aget-object v5, v3, v1

    array-length v5, v5

    if-lez v5, :cond_1

    .line 218
    aget-object v5, v4, v1

    aget-object v6, v3, v1

    aget-object v7, v3, v1

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v5

    array-length v5, v5

    new-array v0, v5, [I

    .line 221
    .local v0, "color":[I
    array-length v5, v0

    if-lez v5, :cond_3

    .line 222
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v5

    array-length v6, v0

    invoke-static {v5, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 223
    :cond_3
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 224
    .local v2, "n":Landroid/content/res/ColorStateList;
    return-object v2
.end method

.method private getMeasuredHeight(ILandroid/view/View;)I
    .locals 4
    .param p1, "height"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 262
    iget v2, p0, Lcom/vivo/common/TabSelector;->mTabWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 263
    .local v1, "w":I
    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 264
    .local v0, "h":I
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    return v2
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const v5, 0x3010006

    invoke-direct {v3, p1, v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    aput-object v3, v2, v0

    .line 82
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vivo/common/TabSelector;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabEnableState:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 86
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/vivo/common/TabSelector;->mTabWidth:I

    iget v3, p0, Lcom/vivo/common/TabSelector;->mTabHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/vivo/common/TabSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    iget v3, p0, Lcom/vivo/common/TabSelector;->mTabHeight:I

    aput v3, v2, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/vivo/common/TabSelector;->showCenterTabVisible(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/vivo/common/TabSelector;->mCurrentTab:I

    return v0
.end method

.method public setEnableTab(IZ)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 229
    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabEnableState:[Z

    aput-boolean p2, v0, p1

    goto :goto_0
.end method

.method public setSelectorTab(I)V
    .locals 6
    .param p1, "tabIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 236
    iget v2, p0, Lcom/vivo/common/TabSelector;->mCurrentTab:I

    if-ne p1, v2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    .line 240
    if-ne v0, p1, :cond_3

    .line 241
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mStateList:[I

    const v3, 0x10100a1

    aput v3, v2, v5

    .line 245
    :goto_2
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabColorList:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vivo/common/TabSelector;->mTabColorList:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/vivo/common/TabSelector;->mStateList:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v2, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 252
    .local v1, "list":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/vivo/common/TabSelector;->mStateList:[I

    aget v3, v3, v5

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 254
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    .end local v1    # "list":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mStateList:[I

    const v3, -0x10100a1

    aput v3, v2, v5

    goto :goto_2

    .line 257
    :cond_4
    iput p1, p0, Lcom/vivo/common/TabSelector;->mCurrentTab:I

    goto :goto_0
.end method

.method public setTabBackground(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    return-void
.end method

.method public setTabHeight(I)V
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/TabSelector;->requestLayout()V

    .line 120
    return-void
.end method

.method public setTabItemTextSize(IF)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "size"    # F

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/vivo/common/TabSelector;->setTabItemTextSize(IIF)V

    .line 196
    return-void
.end method

.method public setTabItemTextSize(IIF)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "unit"    # I
    .param p3, "size"    # F

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 201
    return-void
.end method

.method public setTabOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabClickListener:[Landroid/view/View$OnClickListener;

    aput-object p2, v0, p1

    .line 178
    return-void
.end method

.method public setTabStateColorList(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabColorList:[Landroid/content/res/ColorStateList;

    aput-object p2, v0, p1

    .line 156
    return-void
.end method

.method public setTabStateColorList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/vivo/common/TabSelector;->mTabColorList:[Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 161
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/vivo/common/TabSelector;->mTabColorList:[Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Lcom/vivo/common/TabSelector;->cloneStateColorList(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    aput-object v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public setTabStateDrawable(ILandroid/graphics/drawable/StateListDrawable;)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "drawablelist"    # Landroid/graphics/drawable/StateListDrawable;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabSelector:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    .line 173
    return-void
.end method

.method public setTabString(ILjava/lang/String;)V
    .locals 6
    .param p1, "tabIndex"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 124
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget v2, p0, Lcom/vivo/common/TabSelector;->mTabWidth:I

    iget-object v3, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-direct {p0, v2, v3}, Lcom/vivo/common/TabSelector;->getMeasuredHeight(ILandroid/view/View;)I

    move-result v1

    .line 127
    .local v1, "max":I
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    aget v2, v2, p1

    if-ne v2, v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    aput v1, v2, p1

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 132
    if-eq p1, v0, :cond_1

    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    aget v2, v2, v0

    if-gtz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    iget v3, p0, Lcom/vivo/common/TabSelector;->mTabWidth:I

    iget-object v4, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v4}, Lcom/vivo/common/TabSelector;->getMeasuredHeight(ILandroid/view/View;)I

    move-result v3

    aput v3, v2, v0

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabItemHeight:[I

    aget v1, v2, v0

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_4

    .line 141
    iget-object v2, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    :cond_4
    iput v1, p0, Lcom/vivo/common/TabSelector;->mTabHeight:I

    .line 145
    invoke-virtual {p0}, Lcom/vivo/common/TabSelector;->requestLayout()V

    goto :goto_0
.end method

.method public setTabStringColor(II)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    return-void
.end method

.method public setTabTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/vivo/common/TabSelector;->setTabTextSize(IF)V

    .line 183
    return-void
.end method

.method public setTabTextSize(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public setTabWidth(I)V
    .locals 2
    .param p1, "w"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/TabSelector;->requestLayout()V

    .line 111
    return-void
.end method

.method public showCenterTabVisible(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vivo/common/TabSelector;->mTabs:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
