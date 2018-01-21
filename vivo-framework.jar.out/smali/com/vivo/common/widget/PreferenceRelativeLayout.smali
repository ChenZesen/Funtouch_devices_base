.class public Lcom/vivo/common/widget/PreferenceRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "PreferenceRelativeLayout.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final TITLE_MAX_LENGTH_PRECENT:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "PreferenceRelativeLayout"

    iput-object v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->DEBUG:Z

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->TITLE_MAX_LENGTH_PRECENT:F

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "PreferenceRelativeLayout"

    iput-object v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->DEBUG:Z

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->TITLE_MAX_LENGTH_PRECENT:F

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const-string v0, "PreferenceRelativeLayout"

    iput-object v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->DEBUG:Z

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/vivo/common/widget/PreferenceRelativeLayout;->TITLE_MAX_LENGTH_PRECENT:F

    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 40
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 42
    const/4 v9, 0x0

    .local v9, "titleView":Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 43
    .local v7, "summaryView":Landroid/widget/TextView;
    const/4 v6, 0x1

    .line 46
    .local v6, "needResize":Z
    const v12, 0x1020016

    :try_start_0
    invoke-virtual {p0, v12}, Lcom/vivo/common/widget/PreferenceRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/widget/TextView;

    move-object v9, v0

    .line 47
    const v12, 0x1020010

    invoke-virtual {p0, v12}, Lcom/vivo/common/widget/PreferenceRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    .line 49
    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    .line 50
    const/4 v6, 0x1

    .line 52
    const v12, 0x7fffffff

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 53
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 58
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/widget/TextView;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    const/4 v12, 0x1

    if-ne v6, v12, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/vivo/common/widget/PreferenceRelativeLayout;->getMeasuredWidth()I

    move-result v11

    .line 70
    .local v11, "totalWidth":I
    invoke-virtual {p0}, Lcom/vivo/common/widget/PreferenceRelativeLayout;->getPaddingLeft()I

    move-result v12

    invoke-virtual {p0}, Lcom/vivo/common/widget/PreferenceRelativeLayout;->getPaddingRight()I

    move-result v13

    add-int v3, v12, v13

    .line 71
    .local v3, "extPadding":I
    const/4 v2, 0x0

    .line 73
    .local v2, "extMargin":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    .line 76
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .restart local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    .line 79
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    .line 80
    .local v10, "titleWidth":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 87
    .local v8, "summaryWidth":I
    add-int v12, v10, v8

    add-int/2addr v12, v3

    add-int/2addr v12, v2

    if-le v12, v11, :cond_1

    .line 88
    sub-int v12, v11, v8

    sub-int/2addr v12, v3

    sub-int v5, v12, v2

    .line 89
    .local v5, "maxWidth":I
    int-to-float v12, v11

    const v13, 0x3f333333    # 0.7f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 91
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 95
    .end local v2    # "extMargin":I
    .end local v3    # "extPadding":I
    .end local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "maxWidth":I
    .end local v8    # "summaryWidth":I
    .end local v10    # "titleWidth":I
    .end local v11    # "totalWidth":I
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 96
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "PreferenceRelativeLayout"

    const-string v13, "measure title or summary in preference failed"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
