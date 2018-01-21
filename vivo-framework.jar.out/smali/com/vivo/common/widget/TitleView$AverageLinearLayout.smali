.class public Lcom/vivo/common/widget/TitleView$AverageLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AverageLinearLayout"
.end annotation


# static fields
.field static final POSITION_LEFT:I = 0x0

.field static final POSITION_RIGHT:I = 0x1


# instance fields
.field private mIconViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/vivo/common/widget/TitleView$IconViewInformation;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMaxWidth:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWidth:I

.field private mPosition:I

.field final synthetic this$0:Lcom/vivo/common/widget/TitleView;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/TitleView;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I

    .prologue
    .line 340
    iput-object p1, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    .line 341
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mPosition:I

    .line 334
    const v0, 0x7fffffff

    iput v0, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mMaxWidth:I

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mLastMaxWidth:Ljava/util/Map;

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mIconViewMap:Ljava/util/Map;

    .line 342
    iput p3, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mPosition:I

    .line 343
    return-void
.end method

.method private addToList(Lcom/vivo/common/widget/TitleView$IconViewInformation;)V
    .locals 4
    .param p1, "viewInfo"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .prologue
    .line 387
    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mIconViewMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 398
    .local v0, "endView":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    iput-object p1, v0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->right:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 399
    iput-object v0, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->left:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    goto :goto_0
.end method

.method private deleteViewInfo(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mIconViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 381
    .local v0, "viewInfo":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    invoke-direct {p0, v0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->removeFromList(Lcom/vivo/common/widget/TitleView$IconViewInformation;)V

    .line 382
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->updateViewList(Landroid/view/View;Z)V

    .line 383
    iget-object v1, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mIconViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-void
.end method

.method private insertViewInfo(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 363
    new-instance v0, Lcom/vivo/common/widget/TitleView$IconViewInformation;

    iget-object v1, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    invoke-direct {v0, v1, p1}, Lcom/vivo/common/widget/TitleView$IconViewInformation;-><init>(Lcom/vivo/common/widget/TitleView;Landroid/view/View;)V

    .line 368
    .local v0, "viewInfo":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    const-string v1, "TitleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertViewInfo Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, v0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->addToList(Lcom/vivo/common/widget/TitleView$IconViewInformation;)V

    .line 371
    iget-object v1, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mIconViewMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->updateViewList(Landroid/view/View;Z)V

    .line 373
    return-void
.end method

.method private isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z
    .locals 4
    .param p1, "info"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .prologue
    const/4 v2, 0x0

    .line 508
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 512
    :goto_0
    return v1

    .line 511
    :cond_1
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 512
    .local v0, "str":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isDisplayText(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z
    .locals 4
    .param p1, "info"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .prologue
    const/4 v2, 0x0

    .line 500
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 504
    :goto_0
    return v1

    .line 503
    :cond_1
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 504
    .local v0, "str":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private measureWidthByUser()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildCount()I

    move-result v0

    .line 641
    .local v0, "childCount":I
    const/4 v4, 0x0

    .line 643
    .local v4, "widthByUser":I
    const/4 v3, 0x0

    .line 644
    .local v3, "v":Landroid/view/View;
    const/4 v2, 0x0

    .line 645
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 646
    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 647
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 652
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 654
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 655
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_0
    return v4
.end method

.method private removeFromList(Lcom/vivo/common/widget/TitleView$IconViewInformation;)V
    .locals 2
    .param p1, "viewInfo"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .prologue
    .line 404
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->right:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 409
    .local v0, "next":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->left:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 411
    .local v1, "prev":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    if-eqz v1, :cond_2

    .line 412
    iput-object v0, v1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->right:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 414
    :cond_2
    if-eqz v0, :cond_0

    .line 415
    iput-object v1, v0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->left:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    goto :goto_0
.end method

.method private resetChildMaxWidth()V
    .locals 5

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildCount()I

    move-result v0

    .line 631
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 632
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 633
    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 634
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 635
    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 632
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    :cond_1
    return-void
.end method

.method private restoreChildMaxWidth()V
    .locals 5

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildCount()I

    move-result v0

    .line 620
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 621
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 622
    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 623
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 624
    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mLastMaxWidth:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const v4, 0x7fffffff

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 621
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_1
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mLastMaxWidth:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 626
    :cond_2
    return-void
.end method

.method private setMarginEnd(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;
    .param p2, "margin"    # I

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 533
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mPosition:I

    if-nez v1, :cond_1

    .line 534
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 538
    :goto_1
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1
.end method

.method private setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;
    .param p2, "margin"    # I

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 520
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mPosition:I

    if-nez v1, :cond_1

    .line 521
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 525
    :goto_1
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1
.end method

.method private updateIconViewGap(Lcom/vivo/common/widget/TitleView$IconViewInformation;Z)V
    .locals 4
    .param p1, "info"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;
    .param p2, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 461
    iget v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mPosition:I

    if-nez v2, :cond_1

    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 462
    .local v1, "prev":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    :goto_0
    iget v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mPosition:I

    if-nez v2, :cond_2

    iget-object v0, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 464
    .local v0, "next":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    :goto_1
    if-nez p2, :cond_7

    .line 465
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v2, v2, Lcom/vivo/common/widget/TitleView;->textPaddingInner:I

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginEnd(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    .line 467
    invoke-direct {p0, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 468
    :cond_0
    if-nez v1, :cond_4

    .line 469
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v2, v2, Lcom/vivo/common/widget/TitleView;->imagePaddingOuter:I

    invoke-direct {p0, v0, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    .line 496
    :goto_3
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v3, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mPosition:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/vivo/common/widget/TitleView;->updateIconViewGapByUser(Lcom/vivo/common/widget/TitleView$IconViewInformation;ZI)V

    .line 497
    return-void

    .line 461
    .end local v0    # "next":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    .end local v1    # "prev":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    :cond_1
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    goto :goto_0

    .line 462
    .restart local v1    # "prev":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    :cond_2
    iget-object v0, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    goto :goto_1

    .restart local v0    # "next":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    :cond_3
    move v2, v3

    .line 465
    goto :goto_2

    .line 471
    :cond_4
    invoke-direct {p0, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    invoke-direct {p0, v0, v3}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v3, v2, Lcom/vivo/common/widget/TitleView;->textPaddingInner:I

    goto :goto_4

    .line 474
    :cond_6
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v2, v2, Lcom/vivo/common/widget/TitleView;->textPaddingOuter:I

    invoke-direct {p0, v0, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    goto :goto_3

    .line 477
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginEnd(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    .line 479
    if-nez v0, :cond_a

    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v2, v2, Lcom/vivo/common/widget/TitleView;->textPaddingInner:I

    :goto_5
    invoke-direct {p0, p1, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginEnd(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    .line 480
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 481
    :cond_8
    if-nez v1, :cond_b

    .line 482
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v2, v2, Lcom/vivo/common/widget/TitleView;->imagePaddingOuter:I

    invoke-direct {p0, p1, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    .line 489
    :goto_6
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 490
    :cond_9
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_e

    :goto_7
    invoke-direct {p0, v0, v3}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    goto :goto_3

    :cond_a
    move v2, v3

    .line 479
    goto :goto_5

    .line 484
    :cond_b
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0, v1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayImage(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_8
    invoke-direct {p0, p1, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v2, v2, Lcom/vivo/common/widget/TitleView;->textPaddingInner:I

    goto :goto_8

    .line 487
    :cond_d
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v2, v2, Lcom/vivo/common/widget/TitleView;->textPaddingOuter:I

    invoke-direct {p0, p1, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    goto :goto_6

    .line 490
    :cond_e
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v3, v2, Lcom/vivo/common/widget/TitleView;->textPaddingInner:I

    goto :goto_7

    .line 492
    :cond_f
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->this$0:Lcom/vivo/common/widget/TitleView;

    iget v2, v2, Lcom/vivo/common/widget/TitleView;->textPaddingOuter:I

    invoke-direct {p0, v0, v2}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMarginStart(Lcom/vivo/common/widget/TitleView$IconViewInformation;I)V

    goto/16 :goto_3
.end method

.method private updateViewList(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hide"    # Z

    .prologue
    .line 419
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mIconViewMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 422
    .local v3, "viewInfo":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    if-nez v3, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    if-nez p2, :cond_5

    .line 426
    iget-object v1, v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;->left:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 427
    .local v1, "prev":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    iget-object v0, v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;->right:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 429
    .local v0, "next":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    move-object v2, v1

    .local v2, "tmp":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    :goto_1
    if-eqz v2, :cond_2

    .line 430
    iget-object v4, v2, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 431
    iput-object v2, v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 432
    iget-object v4, v2, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    iput-object v4, v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 433
    iput-object v3, v2, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 438
    :cond_2
    move-object v2, v0

    :goto_2
    if-eqz v0, :cond_0

    .line 439
    iget-object v4, v2, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 440
    iput-object v2, v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 441
    iget-object v4, v2, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    iput-object v4, v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 442
    iput-object v3, v2, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    goto :goto_0

    .line 429
    :cond_3
    iget-object v2, v2, Lcom/vivo/common/widget/TitleView$IconViewInformation;->left:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    goto :goto_1

    .line 438
    :cond_4
    iget-object v2, v2, Lcom/vivo/common/widget/TitleView$IconViewInformation;->right:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    goto :goto_2

    .line 448
    .end local v0    # "next":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    .end local v1    # "prev":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    .end local v2    # "tmp":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    :cond_5
    iget-object v1, v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 449
    .restart local v1    # "prev":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    iget-object v0, v3, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 451
    .restart local v0    # "next":Lcom/vivo/common/widget/TitleView$IconViewInformation;
    if-eqz v1, :cond_6

    .line 452
    iput-object v0, v1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 454
    :cond_6
    if-eqz v0, :cond_0

    .line 455
    iput-object v1, v0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 352
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 353
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->insertViewInfo(Landroid/view/View;)V

    .line 354
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildCount()I

    move-result v1

    .line 544
    .local v1, "childCount":I
    const/4 v6, 0x0

    .line 545
    .local v6, "visibleCount":I
    const/4 v4, 0x0

    .line 547
    .local v4, "imageWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 548
    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 551
    .local v5, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mIconViewMap:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vivo/common/widget/TitleView$IconViewInformation;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    :goto_1
    invoke-direct {p0, v10, v11}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->updateIconViewGap(Lcom/vivo/common/widget/TitleView$IconViewInformation;Z)V

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v11, v12

    .line 551
    goto :goto_1

    .line 554
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->resetChildMaxWidth()V

    .line 555
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 557
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    .line 558
    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 560
    .restart local v5    # "v":Landroid/view/View;
    iget-object v10, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mIconViewMap:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vivo/common/widget/TitleView$IconViewInformation;

    invoke-direct {p0, v10}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->isDisplayText(Lcom/vivo/common/widget/TitleView$IconViewInformation;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 561
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    .line 557
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 563
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    goto :goto_3

    .line 566
    .end local v5    # "v":Landroid/view/View;
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 567
    .local v9, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 577
    .local v8, "widthMode":I
    iget v10, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mMaxWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 578
    if-eqz v8, :cond_9

    .line 579
    if-lez v6, :cond_8

    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getMeasuredWidth()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 580
    sub-int v10, v9, v4

    div-int/2addr v10, v6

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 585
    .local v0, "aveLen":I
    const/4 v2, 0x0

    .line 586
    .local v2, "extraLen":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_7

    .line 587
    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/TextView;

    if-nez v10, :cond_5

    .line 586
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 590
    :cond_5
    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 591
    .local v5, "v":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    if-ge v10, v0, :cond_6

    .line 592
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v0, v10

    add-int/2addr v2, v10

    goto :goto_5

    .line 595
    :cond_6
    iget-object v10, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mLastMaxWidth:Ljava/util/Map;

    add-int v11, v0, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    add-int v10, v0, v2

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 597
    const/4 v2, 0x0

    goto :goto_5

    .line 601
    .end local v5    # "v":Landroid/widget/TextView;
    :cond_7
    invoke-direct {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->measureWidthByUser()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 602
    .local v7, "width":I
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-super {p0, v10, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 615
    .end local v0    # "aveLen":I
    .end local v2    # "extraLen":I
    .end local v7    # "width":I
    :goto_6
    return-void

    .line 608
    :cond_8
    invoke-direct {p0}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->restoreChildMaxWidth()V

    .line 609
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_6

    .line 613
    :cond_9
    iget-object v10, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mLastMaxWidth:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    goto :goto_6
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->deleteViewInfo(Landroid/view/View;)V

    .line 359
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 360
    return-void
.end method

.method setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->mMaxWidth:I

    .line 348
    return-void
.end method
