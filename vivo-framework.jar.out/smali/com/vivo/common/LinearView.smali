.class public Lcom/vivo/common/LinearView;
.super Landroid/widget/LinearLayout;
.source "LinearView.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/LinearView$LinearViewItemInfo;
    }
.end annotation


# static fields
.field private static final FONT_REDUCE_SIZE:I = 0x2


# instance fields
.field private final DEBUG:Z

.field public final ITEM_INDEX_END:I

.field private final MAX_ITEM_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private mAutoPadding:Z

.field protected mContext:Landroid/content/Context;

.field private mDefaultItemSpace:I

.field private mDefaultPaddingEnd:I

.field private mDefaultPaddingStart:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerWidth:I

.field private mItemInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vivo/common/LinearView$LinearViewItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLayout:I

.field private mItemSpace:[I

.field private mItemTextBackground:Landroid/graphics/drawable/Drawable;

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mLineInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingEnd:[I

.field private mPaddingStart:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/LinearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x3010028

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v1, "LinearView"

    iput-object v1, p0, Lcom/vivo/common/LinearView;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v3, p0, Lcom/vivo/common/LinearView;->DEBUG:Z

    .line 37
    const/4 v1, 0x4

    iput v1, p0, Lcom/vivo/common/LinearView;->MAX_ITEM_COUNT:I

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/common/LinearView;->ITEM_INDEX_END:I

    .line 41
    iput-object v2, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/LinearView;->mLineInfo:Ljava/util/List;

    .line 46
    iput v3, p0, Lcom/vivo/common/LinearView;->mItemLayout:I

    .line 47
    iput-boolean v5, p0, Lcom/vivo/common/LinearView;->mAutoPadding:Z

    .line 50
    iput-object v2, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    .line 51
    iput-object v2, p0, Lcom/vivo/common/LinearView;->mPaddingStart:[I

    .line 52
    iput-object v2, p0, Lcom/vivo/common/LinearView;->mPaddingEnd:[I

    .line 55
    iput v3, p0, Lcom/vivo/common/LinearView;->mDefaultItemSpace:I

    .line 56
    iput v3, p0, Lcom/vivo/common/LinearView;->mDefaultPaddingStart:I

    .line 57
    iput v3, p0, Lcom/vivo/common/LinearView;->mDefaultPaddingEnd:I

    .line 60
    iput-object v2, p0, Lcom/vivo/common/LinearView;->mItemTextBackground:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v2, p0, Lcom/vivo/common/LinearView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 64
    iput-object v2, p0, Lcom/vivo/common/LinearView;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iput v4, p0, Lcom/vivo/common/LinearView;->mDividerWidth:I

    .line 66
    iput v4, p0, Lcom/vivo/common/LinearView;->mDividerHeight:I

    .line 89
    iput-object p1, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    .line 90
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/vivo/internal/R$styleable;->LinearView:[I

    invoke-virtual {v1, p2, v2, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v3}, Lcom/vivo/common/LinearView;->setOrientation(I)V

    .line 93
    invoke-virtual {p0, v3}, Lcom/vivo/common/LinearView;->setBaselineAligned(Z)V

    .line 95
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/LinearView;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    const/4 v1, 0x7

    iget v2, p0, Lcom/vivo/common/LinearView;->mDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/vivo/common/LinearView;->mDividerWidth:I

    .line 97
    const/16 v1, 0x8

    iget v2, p0, Lcom/vivo/common/LinearView;->mDividerHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/vivo/common/LinearView;->mDividerHeight:I

    .line 99
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/LinearView;->mItemLayout:I

    .line 100
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    .line 101
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/LinearView;->mPaddingStart:[I

    .line 102
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/LinearView;->mPaddingEnd:[I

    .line 104
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/LinearView;->mPaddingStart:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/LinearView;->mPaddingStart:[I

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/LinearView;->mPaddingEnd:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/LinearView;->mPaddingEnd:[I

    array-length v1, v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ItemSpace or Padding Array Illegal"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/vivo/common/LinearView;->mDefaultItemSpace:I

    .line 110
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mPaddingStart:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/vivo/common/LinearView;->mDefaultPaddingStart:I

    .line 111
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mPaddingEnd:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/vivo/common/LinearView;->mDefaultPaddingEnd:I

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    return-void
.end method

.method private adjustItemSpace()V
    .locals 10

    .prologue
    .line 268
    iget-object v8, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 291
    :cond_0
    return-void

    .line 271
    :cond_1
    iget-object v8, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 272
    .local v1, "index":I
    iget-object v8, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-lt v8, v1, :cond_3

    iget-object v8, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    aget v7, v8, v1

    .line 274
    .local v7, "space":I
    :goto_0
    iget-boolean v8, p0, Lcom/vivo/common/LinearView;->mAutoPadding:Z

    if-eqz v8, :cond_2

    .line 275
    iget-object v8, p0, Lcom/vivo/common/LinearView;->mPaddingStart:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-lt v8, v1, :cond_4

    iget-object v8, p0, Lcom/vivo/common/LinearView;->mPaddingStart:[I

    aget v6, v8, v1

    .line 276
    .local v6, "paddingStart":I
    :goto_1
    iget-object v8, p0, Lcom/vivo/common/LinearView;->mPaddingEnd:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-lt v8, v1, :cond_5

    iget-object v8, p0, Lcom/vivo/common/LinearView;->mPaddingEnd:[I

    aget v5, v8, v1

    .line 277
    .local v5, "paddingEnd":I
    :goto_2
    invoke-virtual {p0}, Lcom/vivo/common/LinearView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/vivo/common/LinearView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {p0, v6, v8, v5, v9}, Lcom/vivo/common/LinearView;->setPaddingRelative(IIII)V

    .line 285
    .end local v5    # "paddingEnd":I
    .end local v6    # "paddingStart":I
    :cond_2
    iget v8, p0, Lcom/vivo/common/LinearView;->mDividerWidth:I

    if-le v7, v8, :cond_6

    iget v8, p0, Lcom/vivo/common/LinearView;->mDividerWidth:I

    sub-int v8, v7, v8

    div-int/lit8 v4, v8, 0x2

    .line 286
    .local v4, "margin":I
    :goto_3
    const/4 v3, 0x0

    .line 287
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/vivo/common/LinearView;->mLineInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 288
    .local v2, "line":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 272
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "line":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "margin":I
    .end local v7    # "space":I
    :cond_3
    iget v7, p0, Lcom/vivo/common/LinearView;->mDefaultItemSpace:I

    goto :goto_0

    .line 275
    .restart local v7    # "space":I
    :cond_4
    iget v6, p0, Lcom/vivo/common/LinearView;->mDefaultPaddingStart:I

    goto :goto_1

    .line 276
    .restart local v6    # "paddingStart":I
    :cond_5
    iget v5, p0, Lcom/vivo/common/LinearView;->mDefaultPaddingEnd:I

    goto :goto_2

    .line 285
    .end local v6    # "paddingStart":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private createLineView()Landroid/view/View;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-object v0
.end method

.method private getTextLength(Landroid/widget/Button;)I
    .locals 4
    .param p1, "view"    # Landroid/widget/Button;

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 381
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private indexOfItem(I)I
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 264
    mul-int/lit8 v0, p1, 0x2

    return v0
.end method

.method private indexOfLine(I)I
    .locals 2
    .param p1, "order"    # I

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private isROM3_0()Z
    .locals 2

    .prologue
    .line 246
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

.method private translateOrderIfNeed(I)I
    .locals 4
    .param p1, "order"    # I

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 324
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 325
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out Of MakupView Order : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_1
    move v0, p1

    goto :goto_0

    .line 327
    :cond_2
    return v0
.end method

.method private tryReduceFont(Landroid/widget/Button;IF)Z
    .locals 10
    .param p1, "textView"    # Landroid/widget/Button;
    .param p2, "availableLength"    # I
    .param p3, "originTextSize"    # F

    .prologue
    const/4 v6, 0x0

    .line 395
    const/4 v4, 0x0

    .line 396
    .local v4, "retval":Z
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 397
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "textStr":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 414
    :goto_0
    return v6

    .line 402
    :cond_0
    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v9, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    sub-float v0, p3, v7

    .line 404
    .local v0, "adjustTextSize":F
    invoke-virtual {p1, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 406
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v1, v7

    .line 407
    .local v1, "adjustTotalLen":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v2, v7

    .line 409
    .local v2, "offset":I
    :goto_1
    add-int v7, v1, v2

    if-lt v7, p2, :cond_2

    .line 410
    invoke-virtual {p1, v6, p3}, Landroid/widget/Button;->setTextSize(IF)V

    :goto_2
    move v6, v4

    .line 414
    goto :goto_0

    .end local v2    # "offset":I
    :cond_1
    move v2, v6

    .line 407
    goto :goto_1

    .line 412
    .restart local v2    # "offset":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 136
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/vivo/common/LinearView;->addDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 137
    return-void
.end method

.method public addDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "order"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 153
    iget-object v0, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 154
    .local v6, "inFlater":Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/vivo/common/LinearView;->mItemLayout:I

    invoke-virtual {v6, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 156
    .local v2, "view":Landroid/widget/Button;
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v7, "lParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 162
    new-instance v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/LinearView$LinearViewItemInfo;-><init>(Lcom/vivo/common/LinearView;Landroid/widget/Button;ZZF)V

    invoke-virtual {p0, v2, v7, p2, v0}, Lcom/vivo/common/LinearView;->addItem(Landroid/widget/Button;Landroid/widget/LinearLayout$LayoutParams;ILcom/vivo/common/LinearView$LinearViewItemInfo;)I

    .line 163
    return-void
.end method

.method public addItem(Landroid/widget/Button;Landroid/widget/LinearLayout$LayoutParams;ILcom/vivo/common/LinearView$LinearViewItemInfo;)I
    .locals 6
    .param p1, "view"    # Landroid/widget/Button;
    .param p2, "lParams"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p3, "order"    # I
    .param p4, "info"    # Lcom/vivo/common/LinearView$LinearViewItemInfo;

    .prologue
    const/4 v5, -0x1

    .line 185
    iget-object v3, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 186
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out of max items[4] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt p3, v3, :cond_1

    if-gez p3, :cond_2

    if-eq p3, v5, :cond_2

    .line 189
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out Of MakupView Order : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_2
    const/4 v2, 0x0

    .line 192
    .local v2, "position":I
    if-ne p3, v5, :cond_4

    .line 193
    iget-object v3, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/vivo/common/LinearView;->createLineView()Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "line":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/vivo/common/LinearView;->mDividerWidth:I

    iget v4, p0, Lcom/vivo/common/LinearView;->mDividerHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 201
    if-nez v2, :cond_5

    .line 202
    invoke-direct {p0, v2}, Lcom/vivo/common/LinearView;->indexOfItem(I)I

    move-result v3

    invoke-virtual {p0, p1, v3, p2}, Lcom/vivo/common/LinearView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v3, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    .line 206
    invoke-direct {p0, v2}, Lcom/vivo/common/LinearView;->indexOfLine(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/vivo/common/LinearView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v3, p0, Lcom/vivo/common/LinearView;->mLineInfo:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 217
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v3, v2, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    invoke-direct {p0}, Lcom/vivo/common/LinearView;->adjustItemSpace()V

    .line 219
    return v2

    .line 195
    .end local v0    # "line":Landroid/view/View;
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move v2, p3

    goto :goto_0

    .line 211
    .restart local v0    # "line":Landroid/view/View;
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-direct {p0, v2}, Lcom/vivo/common/LinearView;->indexOfLine(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/vivo/common/LinearView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-direct {p0, v2}, Lcom/vivo/common/LinearView;->indexOfItem(I)I

    move-result v3

    invoke-virtual {p0, p1, v3, p2}, Lcom/vivo/common/LinearView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v3, p0, Lcom/vivo/common/LinearView;->mLineInfo:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public addText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/vivo/common/LinearView;->addText(Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public addText(Ljava/lang/String;I)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "order"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 167
    .local v6, "inFlater":Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/vivo/common/LinearView;->mItemLayout:I

    invoke-virtual {v6, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 169
    .local v2, "view":Landroid/widget/Button;
    iget-object v0, p0, Lcom/vivo/common/LinearView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/vivo/internal/R$styleable;->LinearView:[I

    const v3, 0x3010028

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 170
    .local v8, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-direct {p0}, Lcom/vivo/common/LinearView;->isROM3_0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 175
    :cond_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v7, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v7, "lParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 181
    new-instance v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/widget/Button;->getTextSize()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/LinearView$LinearViewItemInfo;-><init>(Lcom/vivo/common/LinearView;Landroid/widget/Button;ZZF)V

    invoke-virtual {p0, v2, v7, p2, v0}, Lcom/vivo/common/LinearView;->addItem(Landroid/widget/Button;Landroid/widget/LinearLayout$LayoutParams;ILcom/vivo/common/LinearView$LinearViewItemInfo;)I

    .line 182
    return-void
.end method

.method public getCurrentItem(I)Landroid/widget/Button;
    .locals 2
    .param p1, "order"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/vivo/common/LinearView;->translateOrderIfNeed(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    iget-object v0, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    return-object v0
.end method

.method public getCurrentItemCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x4

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v7, 0x8

    .line 332
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 334
    .local v3, "widthMode":I
    invoke-direct {p0}, Lcom/vivo/common/LinearView;->adjustItemSpace()V

    .line 337
    invoke-direct {p0}, Lcom/vivo/common/LinearView;->isROM3_0()Z

    move-result v4

    if-nez v4, :cond_3

    .line 338
    iget-object v4, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    .line 339
    .local v1, "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    iget-boolean v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->isText:Z

    if-eqz v4, :cond_0

    .line 340
    iget-object v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    const/4 v5, 0x0

    iget v6, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->textSize:F

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_0

    .line 344
    .end local v1    # "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 346
    iget-object v4, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    .line 347
    .restart local v1    # "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    iget-object v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 350
    iget-boolean v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->isText:Z

    if-eqz v4, :cond_2

    .line 351
    iget-object v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/vivo/common/LinearView;->getTextLength(Landroid/widget/Button;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 352
    iget-object v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    iget-object v5, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->textSize:F

    invoke-direct {p0, v4, v5, v6}, Lcom/vivo/common/LinearView;->tryReduceFont(Landroid/widget/Button;IF)Z

    move-result v4

    iput-boolean v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->isReduce:Z

    goto :goto_1

    .line 359
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "maxHeight":I
    iget-object v4, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    .line 364
    .restart local v1    # "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    iget-object v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_4

    .line 367
    iget-object v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    .line 368
    :cond_5
    goto :goto_2

    .line 371
    .end local v1    # "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    :cond_6
    iget-object v4, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    .line 372
    .restart local v1    # "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    iget-object v4, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    iget-object v5, v1, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->measure(II)V

    goto :goto_3

    .line 377
    .end local v1    # "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    :cond_7
    return-void
.end method

.method public removeItem(I)V
    .locals 3
    .param p1, "order"    # I

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/vivo/common/LinearView;->translateOrderIfNeed(I)I

    move-result v0

    .line 225
    .local v0, "position":I
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mLineInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 226
    if-nez v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mLineInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/vivo/common/LinearView;->removeViewAt(I)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/vivo/common/LinearView;->removeViewAt(I)V

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 242
    invoke-direct {p0}, Lcom/vivo/common/LinearView;->adjustItemSpace()V

    .line 243
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mLineInfo:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 233
    invoke-direct {p0, v0}, Lcom/vivo/common/LinearView;->indexOfItem(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/common/LinearView;->removeViewAt(I)V

    .line 234
    invoke-direct {p0, v0}, Lcom/vivo/common/LinearView;->indexOfLine(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/common/LinearView;->removeViewAt(I)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0, v0}, Lcom/vivo/common/LinearView;->removeViewAt(I)V

    goto :goto_0
.end method

.method public setAutoPadding(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/vivo/common/LinearView;->mAutoPadding:Z

    .line 127
    iget-boolean v0, p0, Lcom/vivo/common/LinearView;->mAutoPadding:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/vivo/common/LinearView;->adjustItemSpace()V

    .line 129
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "order"    # I

    .prologue
    .line 298
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/vivo/common/LinearView;->translateOrderIfNeed(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    .line 300
    .local v0, "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    iget-object v1, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v1, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->isText:Z

    .line 303
    return-void
.end method

.method public setItemSpace([I)V
    .locals 2
    .param p1, "space"    # [I

    .prologue
    .line 144
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "setItemSpace receive null pointer or empty array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iput-object p1, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    .line 148
    iget-object v0, p0, Lcom/vivo/common/LinearView;->mItemSpace:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/vivo/common/LinearView;->mDefaultItemSpace:I

    .line 149
    invoke-direct {p0}, Lcom/vivo/common/LinearView;->adjustItemSpace()V

    .line 150
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "order"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/vivo/common/LinearView;->translateOrderIfNeed(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    iget-object v0, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "order"    # I

    .prologue
    .line 306
    iget-object v1, p0, Lcom/vivo/common/LinearView;->mItemInfo:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/vivo/common/LinearView;->translateOrderIfNeed(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;

    .line 308
    .local v0, "itemInfo":Lcom/vivo/common/LinearView$LinearViewItemInfo;
    iget-boolean v1, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->isText:Z

    if-nez v1, :cond_0

    .line 309
    iget-object v1, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/vivo/common/LinearView;->mItemTextBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v1, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/vivo/common/LinearView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 313
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->isText:Z

    .line 314
    iget-object v1, v0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method
