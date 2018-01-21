.class Landroid/widget/FtPopupToolbar$PopupToolLayout;
.super Landroid/view/ViewGroup;
.source "FtPopupToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FtPopupToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopupToolLayout"
.end annotation


# static fields
.field private static final MAX_ITEM_COUNT:I = 0x6


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mWindowWidth:I

.field final synthetic this$0:Landroid/widget/FtPopupToolbar;


# direct methods
.method public constructor <init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;-><init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;-><init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 567
    return-void
.end method

.method public constructor <init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .prologue
    .line 570
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/FtPopupToolbar$PopupToolLayout;-><init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 571
    return-void
.end method

.method public constructor <init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 574
    iput-object p1, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->this$0:Landroid/widget/FtPopupToolbar;

    .line 575
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 577
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->setWillNotDraw(Z)V

    .line 579
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 580
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 581
    .local v0, "size":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 582
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mWindowWidth:I

    .line 584
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30203a8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 586
    iget-object v2, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDividerWidth:I

    .line 587
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 640
    iget-object v0, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 641
    iget-object v0, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 642
    return-void
.end method

.method private hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 623
    if-nez p1, :cond_1

    .line 624
    const/4 v0, 0x0

    .line 635
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 626
    const/4 v0, 0x1

    goto :goto_0

    .line 628
    :cond_2
    const/4 v0, 0x0

    .line 629
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 630
    invoke-virtual {p0, v1}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 631
    const/4 v0, 0x1

    .line 632
    goto :goto_0

    .line 629
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private isShowDivider()Z
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 591
    iget-object v5, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->isShowDivider()Z

    move-result v5

    if-nez v5, :cond_1

    .line 611
    :cond_0
    return-void

    .line 594
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildCount()I

    move-result v1

    .line 595
    .local v1, "count":I
    iget-object v5, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->this$0:Landroid/widget/FtPopupToolbar;

    # invokes: Landroid/widget/FtPopupToolbar;->isRtl()Z
    invoke-static {v5}, Landroid/widget/FtPopupToolbar;->access$000(Landroid/widget/FtPopupToolbar;)Z

    move-result v3

    .line 596
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 597
    invoke-virtual {p0, v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 600
    invoke-direct {p0, v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 602
    if-eqz v3, :cond_3

    .line 603
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 607
    .local v4, "position":I
    :goto_1
    invoke-direct {p0, p1, v4}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->drawDivider(Landroid/graphics/Canvas;I)V

    .line 596
    .end local v4    # "position":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDividerWidth:I

    sub-int v4, v5, v6

    .restart local v4    # "position":I
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v8, 0x0

    .line 680
    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildCount()I

    move-result v2

    .line 681
    .local v2, "count":I
    const/4 v5, 0x0

    .line 682
    .local v5, "left":I
    const/4 v6, 0x0

    .line 683
    .local v6, "start":I
    const/4 v3, 0x1

    .line 684
    .local v3, "dir":I
    iget-object v7, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->this$0:Landroid/widget/FtPopupToolbar;

    # invokes: Landroid/widget/FtPopupToolbar;->isRtl()Z
    invoke-static {v7}, Landroid/widget/FtPopupToolbar;->access$000(Landroid/widget/FtPopupToolbar;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 685
    add-int/lit8 v6, v2, -0x1

    .line 686
    const/4 v3, -0x1

    .line 689
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 690
    mul-int v7, v3, v4

    add-int v1, v6, v7

    .line 691
    .local v1, "childIndex":I
    invoke-virtual {p0, v1}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 693
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v0, v5, v8, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 695
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-direct {p0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->isShowDivider()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDividerWidth:I

    :goto_1
    add-int/2addr v7, v9

    add-int/2addr v5, v7

    .line 689
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v7, v8

    .line 695
    goto :goto_1

    .line 698
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildCount()I

    move-result v1

    .line 647
    .local v1, "count":I
    const/4 v7, 0x0

    .line 649
    .local v7, "visibleCount":I
    const/4 v5, 0x0

    .line 650
    .local v5, "needRemeasure":Z
    const/4 v4, 0x0

    .local v4, "measuredWidth":I
    const/4 v3, 0x0

    .line 651
    .local v3, "measuredHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 652
    invoke-virtual {p0, v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 653
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 654
    add-int/lit8 v7, v7, 0x1

    .line 655
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 657
    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-eq v3, v8, :cond_0

    .line 658
    const/4 v5, 0x1

    .line 660
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v4, v8

    .line 661
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 651
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-eqz v5, :cond_4

    .line 666
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 667
    invoke-virtual {p0, v2}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 668
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 669
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 666
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 673
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->isShowDivider()Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v8, v7, -0x1

    iget v9, p0, Landroid/widget/FtPopupToolbar$PopupToolLayout;->mDividerWidth:I

    mul-int/2addr v8, v9

    :goto_2
    add-int/2addr v4, v8

    .line 675
    invoke-virtual {p0, v4, v3}, Landroid/widget/FtPopupToolbar$PopupToolLayout;->setMeasuredDimension(II)V

    .line 676
    return-void

    .line 673
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method
