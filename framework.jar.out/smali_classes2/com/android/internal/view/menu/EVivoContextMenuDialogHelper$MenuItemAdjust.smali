.class Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;
.super Ljava/lang/Object;
.source "EVivoContextMenuDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuItemAdjust"
.end annotation


# instance fields
.field private final FONT_ADJUST_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mGroup:Landroid/widget/LinearLayout;

.field private originalTextSize:F

.field final synthetic this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 417
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->FONT_ADJUST_SIZE:I

    .line 411
    iput v6, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->originalTextSize:F

    .line 414
    iput-object v5, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mGroup:Landroid/widget/LinearLayout;

    .line 415
    iput-object v5, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mContext:Landroid/content/Context;

    .line 418
    iput-object p2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mContext:Landroid/content/Context;

    .line 420
    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010095

    aput v3, v2, v4

    const v3, 0x301002c

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 422
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->originalTextSize:F

    .line 423
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 424
    return-void
.end method

.method private getAvailableWidth()I
    .locals 4

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, "mParam":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 474
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 476
    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "mParam":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 478
    .restart local v0    # "mParam":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 482
    :cond_0
    return v1
.end method

.method private tryAdjustTextSize(Landroid/widget/TextView;I)Z
    .locals 11
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "availableLength"    # I

    .prologue
    const/4 v6, 0x0

    .line 494
    const/4 v4, 0x0

    .line 496
    .local v4, "retval":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 513
    :goto_0
    return v6

    .line 499
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 500
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, "textStr":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->originalTextSize:F

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v10, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    sub-float v0, v7, v8

    .line 504
    .local v0, "adjustTextSize":F
    invoke-virtual {p1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 505
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int v1, v7, v8

    .line 506
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

    .line 508
    .local v2, "offset":I
    :goto_1
    add-int v7, v1, v2

    if-lt v7, p2, :cond_2

    .line 509
    iget v7, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->originalTextSize:F

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    move v6, v4

    .line 513
    goto :goto_0

    .end local v2    # "offset":I
    :cond_1
    move v2, v6

    .line 506
    goto :goto_1

    .line 511
    .restart local v2    # "offset":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method adjust(Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 433
    instance-of v8, p1, Landroid/widget/LinearLayout;

    if-nez v8, :cond_1

    .line 463
    .end local p1    # "view":Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 436
    .restart local p1    # "view":Landroid/view/ViewGroup;
    :cond_1
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1    # "view":Landroid/view/ViewGroup;
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mGroup:Landroid/widget/LinearLayout;

    .line 438
    invoke-direct {p0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->getAvailableWidth()I

    move-result v7

    .line 439
    .local v7, "usableWidth":I
    iget-object v8, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 441
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 444
    div-int v2, v7, v0

    .line 446
    .local v2, "itemMaxWidth":I
    const/4 v5, 0x0

    .line 447
    .local v5, "textView":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 448
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x0

    .line 449
    .local v6, "totalWidth":I
    const/4 v3, 0x0

    .line 451
    .local v3, "mParam":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 452
    iget-object v8, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->mGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "textView":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 453
    .restart local v5    # "textView":Landroid/widget/TextView;
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->originalTextSize:F

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 455
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "mParam":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 456
    .restart local v3    # "mParam":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 458
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int v6, v8, v9

    .line 460
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v2, v8

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_2

    .line 461
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v2, v8

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v5, v8}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$MenuItemAdjust;->tryAdjustTextSize(Landroid/widget/TextView;I)Z

    .line 451
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
