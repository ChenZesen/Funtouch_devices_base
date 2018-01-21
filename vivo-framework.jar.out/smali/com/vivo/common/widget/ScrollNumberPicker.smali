.class public Lcom/vivo/common/widget/ScrollNumberPicker;
.super Landroid/view/View;
.source "ScrollNumberPicker.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;,
        Lcom/vivo/common/widget/ScrollNumberPicker$OnScrollListener;
    }
.end annotation


# instance fields
.field private DEFAULT_VISIBLE_ITEM_COUNT:I

.field private final LOG_DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F

.field private isFling:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollOffset:I

.field private mDensity:F

.field private mDisplayX:I

.field private mDisplayY:I

.field private mGravity:I

.field private mHalfScrollItemCount:I

.field private mItemCount:I

.field private mItemGravity:I

.field private mItemHeight:I

.field private mItemHeightDefined:Z

.field private mLastDownY:F

.field private mLastY:F

.field private mLeft:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mListener:Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mNumberText:Ljava/lang/String;

.field private mPickerPaint:Landroid/graphics/Paint;

.field private mPickerTextStr:Ljava/lang/String;

.field private mScrollItemGap:I

.field private mScrollItemNeedMeasure:Z

.field private mScrollItemPaint:Landroid/graphics/Paint;

.field private mScrollItemWidth:I

.field private mScrollItemWidthDefined:Z

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectItemPaint:Landroid/graphics/Paint;

.field private mSelectItemText:Ljava/lang/String;

.field private mSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectPosition:I

.field private mSelfHeight:I

.field private mSelfWidth:I

.field private mShader:Landroid/graphics/Shader;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapWheel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const v0, 0x301002e

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defAttr"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const/high16 v5, -0x1000000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v4, "ScrollNumberPicker"

    iput-object v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->TAG:Ljava/lang/String;

    .line 33
    iput-boolean v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->LOG_DEBUG:Z

    .line 35
    const v4, 0x3f666666    # 0.9f

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F

    .line 36
    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->DEFAULT_VISIBLE_ITEM_COUNT:I

    .line 45
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    .line 46
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    .line 48
    iput-boolean v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    .line 49
    iput-boolean v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidthDefined:Z

    .line 50
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    .line 55
    const-string v4, ""

    iput-object v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mNumberText:Ljava/lang/String;

    .line 57
    iput-boolean v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeightDefined:Z

    .line 58
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    .line 60
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemGap:I

    .line 61
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->DEFAULT_VISIBLE_ITEM_COUNT:I

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    .line 62
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    .line 64
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    .line 65
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    .line 69
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollState:I

    .line 81
    iput-boolean v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mWrapWheel:Z

    .line 82
    iput-boolean v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->isFling:Z

    .line 87
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayX:I

    .line 88
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayY:I

    .line 91
    const/16 v4, 0x11

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemGravity:I

    .line 104
    iput-object p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDensity:F

    .line 107
    sget-object v4, Lcom/vivo/internal/R$styleable;->ScrollNumberPicker:[I

    invoke-virtual {p1, p2, v4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    .line 109
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemGap:I

    .line 110
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mGravity:I

    .line 112
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    if-gtz v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeightDefined:Z

    .line 114
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    new-instance v2, Landroid/widget/Scroller;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScroller:Landroid/widget/Scroller;

    .line 129
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 130
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mTouchSlop:I

    .line 131
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mMinimumFlingVelocity:I

    .line 132
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mMaximumFlingVelocity:I

    .line 134
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollInfo()V

    .line 135
    return-void

    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    move v2, v3

    .line 112
    goto :goto_0
.end method

.method private computeSelectPosition(I)[I
    .locals 4
    .param p1, "scrollOffset"    # I

    .prologue
    .line 606
    neg-int v2, p1

    iget v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    div-int v1, v2, v3

    .line 607
    .local v1, "selectPosition":I
    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    rem-int v0, p1, v2

    .line 610
    .local v0, "scrollPosition":I
    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    sub-int/2addr v0, v2

    .line 612
    iget-boolean v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mWrapWheel:Z

    if-eqz v2, :cond_1

    .line 613
    :goto_0
    if-gez v1, :cond_0

    .line 614
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 616
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 617
    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 620
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method

.method private drawContent(Landroid/graphics/Canvas;IILandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawPosX"    # I
    .param p3, "drawPosY"    # I
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 575
    iget-object v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 576
    .local v4, "size":I
    invoke-direct {p0, p5}, Lcom/vivo/common/widget/ScrollNumberPicker;->measureTextHeightOffset(Landroid/graphics/Paint;)I

    move-result v3

    .line 577
    .local v3, "offsetY":I
    const/4 v2, 0x0

    .line 581
    .local v2, "offsetX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 582
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 584
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawContent mSelectPosition ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    if-ge v1, v6, :cond_2

    .line 587
    iget v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    add-int v0, v6, v1

    .line 589
    .local v0, "drawPos":I
    iget-boolean v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mWrapWheel:Z

    if-eqz v6, :cond_0

    .line 590
    add-int v6, v0, v4

    rem-int v0, v6, v4

    .line 592
    :cond_0
    if-ltz v0, :cond_1

    if-ge v0, v4, :cond_1

    .line 593
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mNumberText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "str":Ljava/lang/String;
    invoke-direct {p0, p5, v5}, Lcom/vivo/common/widget/ScrollNumberPicker;->measureTextWidthOffset(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    .line 596
    add-int v6, p2, v2

    int-to-float v6, v6

    add-int v7, p3, v3

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 599
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    iget v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    add-int/2addr p3, v6

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "drawPos":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 603
    return-void
.end method

.method private drawPickerText(Landroid/graphics/Canvas;II)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "displayPosX"    # I
    .param p3, "displayPosY"    # I

    .prologue
    .line 513
    iget-object v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerTextStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3}, Lcom/vivo/common/widget/ScrollNumberPicker;->measureTextHeightOffset(Landroid/graphics/Paint;)I

    move-result v0

    .line 518
    .local v0, "offsetY":I
    iget v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemGap:I

    add-int v1, v3, v4

    .line 519
    .local v1, "xPos":I
    iget v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    mul-int/2addr v3, v4

    add-int v2, p3, v3

    .line 521
    .local v2, "yPos":I
    iget-object v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerTextStr:Ljava/lang/String;

    int-to-float v4, v1

    add-int v5, v2, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private ensureScrollWheelAdjusted()V
    .locals 3

    .prologue
    .line 367
    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    rem-int v0, v1, v2

    .line 368
    .local v0, "deltaY":I
    div-int/lit8 v1, v0, 0x5

    invoke-direct {p0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->fling(I)V

    .line 369
    return-void
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const/4 v1, 0x0

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->isFling:Z

    .line 339
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p1

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    rem-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 340
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;->computeSelectPosition(I)[I

    move-result-object v8

    .line 341
    .local v8, "pos":[I
    aget v7, v8, v1

    .line 343
    .local v7, "desPos":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling   destination Postion is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "     wrapWheel : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mWrapWheel:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 344
    iget-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mWrapWheel:Z

    if-nez v0, :cond_0

    .line 345
    if-gtz v7, :cond_2

    .line 346
    const/4 v7, 0x0

    .line 347
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    neg-int p1, v0

    .line 354
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    const/16 v3, 0x3e8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 356
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->invalidate()V

    .line 358
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 359
    .local v6, "curStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    invoke-virtual {p0, v7, v6, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;->onSelectChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    iput-object v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    .line 363
    return-void

    .line 348
    .end local v6    # "curStr":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v7, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 350
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    sub-int p1, v0, v2

    goto :goto_0
.end method

.method private hasContent()Z
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDisplayParam()V
    .locals 13

    .prologue
    const v12, 0x800005

    const v11, 0x800003

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingRight()I

    move-result v8

    add-int v3, v7, v8

    .line 526
    .local v3, "paddingHorizontal":I
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingBottom()I

    move-result v8

    add-int v4, v7, v8

    .line 528
    .local v4, "paddingVertical":I
    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    .line 529
    .local v5, "scrollNumberWidth":I
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    iget v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    mul-int v0, v7, v8

    .line 530
    .local v0, "contentHeight":I
    move v1, v5

    .line 532
    .local v1, "contentWidth":I
    iget-object v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerTextStr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 533
    iget-object v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerTextStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemGap:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 535
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDraw contentWidth ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] contentHeight ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDraw mGravity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mGravity:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 538
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mGravity:I

    and-int/lit8 v6, v7, 0x70

    .line 539
    .local v6, "verticalGravity":I
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mGravity:I

    const v8, 0x800007

    and-int v2, v7, v8

    .line 542
    .local v2, "horizontalGravity":I
    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 543
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    sub-int/2addr v7, v4

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayY:I

    .line 550
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getLayoutDirection()I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 551
    if-ne v2, v11, :cond_4

    .line 552
    const/4 v2, 0x5

    .line 563
    :cond_1
    :goto_1
    if-ne v2, v10, :cond_7

    .line 564
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    sub-int/2addr v7, v3

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayX:I

    .line 570
    :goto_2
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayX:I

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayX:I

    .line 571
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayY:I

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayY:I

    .line 572
    return-void

    .line 544
    :cond_2
    const/16 v7, 0x50

    if-ne v6, v7, :cond_3

    .line 545
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayY:I

    goto :goto_0

    .line 547
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingTop()I

    move-result v7

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayY:I

    goto :goto_0

    .line 553
    :cond_4
    if-ne v2, v12, :cond_1

    .line 554
    const/4 v2, 0x3

    goto :goto_1

    .line 557
    :cond_5
    if-ne v2, v11, :cond_6

    .line 558
    const/4 v2, 0x3

    goto :goto_1

    .line 559
    :cond_6
    if-ne v2, v12, :cond_1

    .line 560
    const/4 v2, 0x5

    goto :goto_1

    .line 565
    :cond_7
    const/4 v7, 0x5

    if-ne v2, v7, :cond_8

    .line 566
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingEnd()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayX:I

    goto :goto_2

    .line 568
    :cond_8
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingStart()I

    move-result v7

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayX:I

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 744
    const-string v0, "ScrollNumberPicker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void
.end method

.method private measureScrollItemHeight()I
    .locals 3

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeightDefined:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "measureScrollItemHeight mItemHeight ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 702
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private measureScrollItemWidth()V
    .locals 7

    .prologue
    .line 675
    iget-boolean v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    if-eqz v5, :cond_2

    .line 676
    const/4 v4, 0x0

    .local v4, "strLen":I
    const/4 v2, 0x0

    .line 677
    .local v2, "maxWidth":I
    const-string v1, ""

    .line 679
    .local v1, "maxStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 680
    .local v3, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 681
    if-ge v2, v4, :cond_0

    move-object v1, v3

    .line 682
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 683
    goto :goto_0

    .line 685
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    .line 686
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    .line 689
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "maxStr":Ljava/lang/String;
    .end local v2    # "maxWidth":I
    .end local v4    # "strLen":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "measureScrollItemWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method private measureTextHeightOffset(Landroid/graphics/Paint;)I
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 706
    if-nez p1, :cond_0

    .line 712
    :goto_0
    return v2

    .line 709
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v1, v3

    .line 710
    .local v1, "textHeight":I
    iget v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 712
    .local v0, "offsetY":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method private measureTextWidthOffset(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 716
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v3

    .line 719
    :cond_1
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    .line 721
    .local v0, "itemDisplayWidth":I
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v2, v4

    .line 722
    .local v2, "textWidth":I
    const/4 v1, 0x0

    .line 724
    .local v1, "offsetX":I
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemGravity:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 725
    const/4 v1, 0x0

    .line 731
    :goto_1
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 726
    :cond_2
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemGravity:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 727
    sub-int v1, v0, v2

    goto :goto_1

    .line 729
    :cond_3
    sub-int v4, v0, v2

    div-int/lit8 v1, v4, 0x2

    goto :goto_1
.end method

.method private onScrollStateChange(I)V
    .locals 3
    .param p1, "scrollState"    # I

    .prologue
    .line 372
    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollState:I

    if-ne v1, p1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iput p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollState:I

    .line 376
    if-nez p1, :cond_0

    .line 377
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->isFling:Z

    .line 379
    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 382
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    .local v0, "curStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 384
    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    iget-object v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->onSelectChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_2
    iput-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    goto :goto_0
.end method

.method private setScrollInfo()V
    .locals 3

    .prologue
    .line 624
    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    mul-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    add-int v0, v1, v2

    .line 625
    .local v0, "totalHeight":I
    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setFadingEdgeLength(I)V

    .line 626
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->isFling:Z

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    .line 396
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->invalidate()V

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;->onScrollStateChange(I)V

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F

    return v0
.end method

.method public getSelectItemText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectPosition()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 467
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->hasContent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->initDisplayParam()V

    .line 474
    move-object/from16 v0, p0

    iget v15, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    .line 475
    .local v15, "scrollNumberWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayX:I

    .line 476
    .local v12, "displayPosX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDisplayY:I

    .line 478
    .local v13, "displayPosY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->computeSelectPosition(I)[I

    move-result-object v14

    .line 479
    .local v14, "scrollInfo":[I
    move/from16 v16, v12

    .local v16, "xPos":I
    const/4 v2, 0x1

    aget v2, v14, v2

    add-int v17, v2, v13

    .line 480
    .local v17, "yPos":I
    const/4 v2, 0x0

    aget v2, v14, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw displayPosX  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] displayPosY ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw xPos ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] yPos ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw mSelectPosition ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mShader:Landroid/graphics/Shader;

    if-nez v2, :cond_1

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    .line 488
    .local v10, "color":I
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getHeight()I

    move-result v7

    int-to-float v6, v7

    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x1

    const v9, 0x50ffffff

    and-int/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x2

    const v9, -0x3f000001    # -7.9999995f

    and-int/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x3

    const v9, 0x50ffffff

    and-int/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mShader:Landroid/graphics/Shader;

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 495
    .end local v10    # "color":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    mul-int v11, v2, v3

    .line 496
    .local v11, "dheight":I
    new-instance v6, Landroid/graphics/Rect;

    add-int v2, v12, v15

    add-int v3, v13, v11

    invoke-direct {v6, v12, v13, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 497
    .local v6, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v2 .. v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->drawContent(Landroid/graphics/Canvas;IILandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 500
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v13

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 501
    iget v2, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 502
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v2 .. v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->drawContent(Landroid/graphics/Canvas;IILandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 505
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v13

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 506
    iget v2, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 507
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v2 .. v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->drawContent(Landroid/graphics/Canvas;IILandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13}, Lcom/vivo/common/widget/ScrollNumberPicker;->drawPickerText(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0

    .line 488
    :array_0
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3f000000    # 0.5f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    .line 629
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 630
    .local v3, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 632
    .local v0, "heightSpecMode":I
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 633
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    .line 634
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    .line 636
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->measureScrollItemWidth()V

    .line 637
    if-eq v3, v8, :cond_1

    .line 638
    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    .line 640
    .local v2, "needWidthSize":I
    iget-object v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerTextStr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 641
    iget-object v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerTextStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemGap:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 643
    :cond_0
    if-ne v3, v7, :cond_3

    .line 644
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    .line 648
    :goto_0
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    .line 649
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    .line 652
    .end local v2    # "needWidthSize":I
    :cond_1
    if-eq v0, v8, :cond_5

    .line 653
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->measureScrollItemHeight()I

    move-result v1

    .line 655
    .local v1, "needHeightSize":I
    if-ne v0, v7, :cond_4

    .line 656
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    .line 660
    :goto_1
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    .line 661
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getMinimumHeight()I

    move-result v4

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    .line 667
    .end local v1    # "needHeightSize":I
    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure selfWidth["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] selfHeight["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure mItemHeight["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 670
    const/4 v4, 0x0

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    .line 671
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/vivo/common/widget/ScrollNumberPicker;->setMeasuredDimension(II)V

    .line 672
    return-void

    .line 646
    .restart local v2    # "needWidthSize":I
    :cond_3
    iput v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfWidth:I

    goto/16 :goto_0

    .line 658
    .end local v2    # "needWidthSize":I
    .restart local v1    # "needHeightSize":I
    :cond_4
    iput v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    goto :goto_1

    .line 663
    .end local v1    # "needHeightSize":I
    :cond_5
    iget-boolean v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeightDefined:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    if-lez v4, :cond_2

    .line 664
    iget v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelfHeight:I

    iget v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    goto :goto_2
.end method

.method protected onSelectChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "desPos"    # I
    .param p2, "curStr"    # Ljava/lang/String;
    .param p3, "selectItem"    # Ljava/lang/String;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mListener:Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectChanged, desPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;->log(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mListener:Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;

    invoke-interface {v0, p3, p2}, Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 407
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->hasContent()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move v6, v7

    .line 453
    :cond_1
    :goto_0
    return v6

    .line 410
    :cond_2
    iget-object v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_3

    .line 411
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 412
    :cond_3
    iget-object v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 415
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 417
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mLastDownY:F

    iput v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mLastY:F

    .line 418
    iget-object v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    .line 419
    iget-object v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 420
    invoke-direct {p0, v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 424
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 425
    .local v1, "currentY":F
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollState:I

    if-eq v7, v6, :cond_5

    .line 426
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mLastDownY:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v2, v7

    .line 427
    .local v2, "deltaDownY":I
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mTouchSlop:I

    if-le v2, v7, :cond_4

    .line 428
    invoke-direct {p0, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->onScrollStateChange(I)V

    .line 435
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_1
    iput v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mLastY:F

    goto :goto_0

    .line 431
    :cond_5
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mLastY:F

    sub-float v7, v1, v7

    float-to-int v3, v7

    .line 432
    .local v3, "deltaMoveY":I
    iget v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    .line 433
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->invalidate()V

    goto :goto_1

    .line 438
    .end local v1    # "currentY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_2
    iget-object v5, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 439
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    iget v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 441
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    float-to-int v4, v7

    .line 442
    .local v4, "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mMinimumFlingVelocity:I

    if-le v7, v8, :cond_6

    .line 443
    div-int/lit8 v7, v4, 0x5

    invoke-direct {p0, v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->fling(I)V

    .line 448
    :goto_2
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->onScrollStateChange(I)V

    .line 449
    iget-object v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 450
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 445
    :cond_6
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->ensureScrollWheelAdjusted()V

    goto :goto_2

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableRang(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    return-void
.end method

.method public setInitialOffset(I)V
    .locals 0
    .param p1, "initialOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    return-void
.end method

.method public setItemHeight(I)V
    .locals 1
    .param p1, "itemHeight"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeightDefined:Z

    .line 164
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollInfo()V

    .line 165
    return-void
.end method

.method public setItemWidth(I)V
    .locals 2
    .param p1, "itemWidth"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 168
    if-lez p1, :cond_0

    .line 169
    iput p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidth:I

    .line 170
    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    .line 171
    iput-boolean v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidthDefined:Z

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidthDefined:Z

    .line 175
    iput-boolean v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    goto :goto_0
.end method

.method public setLeftPadding(I)V
    .locals 3
    .param p1, "left"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPadding(IIII)V

    .line 224
    return-void
.end method

.method public setListItemTextRightPadding(I)V
    .locals 0
    .param p1, "padding"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public setNumberText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mNumberText:Ljava/lang/String;

    .line 284
    iget-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidthDefined:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mListener:Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;

    .line 334
    return-void
.end method

.method public setPickText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerTextStr:Ljava/lang/String;

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemGravity:I

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    const/16 v0, 0x11

    iput v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemGravity:I

    goto :goto_0
.end method

.method public setPickerTextColor(I)V
    .locals 1
    .param p1, "pickerItemColor"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    return-void
.end method

.method public setPickerTextLeftPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemGap:I

    .line 232
    return-void
.end method

.method public setPickerTextSize(F)V
    .locals 2
    .param p1, "pickerItemSize"    # F

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDensity:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 201
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollInfo()V

    .line 202
    return-void
.end method

.method public setRange(III)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "maxLines"    # I

    .prologue
    .line 239
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 240
    .local v2, "size":I
    if-ge p1, p2, :cond_0

    const/4 v3, 0x1

    .line 242
    .local v3, "step":I
    :goto_0
    new-array v1, v2, [Ljava/lang/String;

    .line 243
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 244
    mul-int v4, v0, v3

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "i":I
    .end local v1    # "list":[Ljava/lang/String;
    .end local v3    # "step":I
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 246
    .restart local v0    # "i":I
    .restart local v1    # "list":[Ljava/lang/String;
    .restart local v3    # "step":I
    :cond_1
    invoke-virtual {p0, v1, p3}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange([Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method public setRange([Ljava/lang/String;I)V
    .locals 4
    .param p1, "list"    # [Ljava/lang/String;
    .param p2, "maxLines"    # I

    .prologue
    const/4 v2, 0x0

    .line 250
    if-nez p1, :cond_0

    .line 266
    .end local p2    # "maxLines":I
    :goto_0
    return-void

    .line 253
    .restart local p2    # "maxLines":I
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_1
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    .end local p2    # "maxLines":I
    :cond_2
    iput p2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    .line 259
    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mHalfScrollItemCount:I

    .line 260
    iget-boolean v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidthDefined:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    .line 262
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemCount:I

    if-ge v1, v3, :cond_3

    .line 263
    iput-boolean v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mWrapWheel:Z

    .line 265
    :cond_3
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollInfo()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 260
    goto :goto_2
.end method

.method public setScrollItemBackground(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 288
    return-void
.end method

.method public setScrollItemPositionByIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 319
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 320
    iput p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    .line 321
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    .line 322
    iget v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    mul-int/2addr v0, p1

    neg-int v0, v0

    iput v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    .line 323
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->invalidate()V

    .line 325
    :cond_0
    return-void
.end method

.method public setScrollItemPositionByRange(I)V
    .locals 2
    .param p1, "rangeNumber"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 294
    iput v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    .line 295
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    .line 296
    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    mul-int/2addr v1, v0

    neg-int v1, v1

    iput v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    .line 297
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->invalidate()V

    .line 302
    :cond_0
    return-void

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setScrollItemPositionByRange(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iput v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectPosition:I

    .line 310
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemText:Ljava/lang/String;

    .line 311
    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    mul-int/2addr v1, v0

    neg-int v1, v1

    iput v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mCurrentScrollOffset:I

    .line 312
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->invalidate()V

    .line 316
    :cond_1
    return-void
.end method

.method public setScrollItemTextColor(I)V
    .locals 1
    .param p1, "scrollItemColor"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    return-void
.end method

.method public setScrollItemTextSize(F)V
    .locals 2
    .param p1, "scrollItemSize"    # F

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDensity:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    iget-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidthDefined:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    .line 182
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollInfo()V

    .line 183
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollPickerParams(IFFII)V
    .locals 3
    .param p1, "itemHeight"    # I
    .param p2, "scrollItemSize"    # F
    .param p3, "pickerItemSize"    # F
    .param p4, "scrollItemColor"    # I
    .param p5, "pickerItemColor"    # I

    .prologue
    const/4 v0, 0x1

    .line 139
    iput p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeight:I

    .line 140
    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mItemHeightDefined:Z

    .line 142
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDensity:F

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    iget-boolean v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidthDefined:Z

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    .line 146
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDensity:F

    mul-float/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mPickerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollInfo()V

    .line 150
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectedItemTextColor(I)V
    .locals 1
    .param p1, "selectedItemColor"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    return-void
.end method

.method public setSelectedItemTextSize(F)V
    .locals 2
    .param p1, "selectedItemSize"    # F

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mSelectItemPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mDensity:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    iget-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemWidthDefined:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mScrollItemNeedMeasure:Z

    .line 192
    invoke-direct {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollInfo()V

    .line 193
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextPadding(III)V
    .locals 0
    .param p1, "pickerLeftPadding"    # I
    .param p2, "pickerTopPadding"    # I
    .param p3, "selectedItemLeftPadding"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method public setWrapWheel(Z)V
    .locals 0
    .param p1, "wrapWheel"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->mWrapWheel:Z

    .line 280
    return-void
.end method

.method public stopFling()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/ScrollNumberPicker;->isFling:Z

    .line 329
    invoke-virtual {p0}, Lcom/vivo/common/widget/ScrollNumberPicker;->invalidate()V

    .line 330
    return-void
.end method
