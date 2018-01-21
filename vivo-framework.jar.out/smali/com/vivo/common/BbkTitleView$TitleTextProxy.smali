.class final Lcom/vivo/common/BbkTitleView$TitleTextProxy;
.super Lcom/vivo/common/widget/TitleView$ViewProxy;
.source "BbkTitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/BbkTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TitleTextProxy"
.end annotation


# instance fields
.field private maxLettersInWord:I

.field final synthetic this$0:Lcom/vivo/common/BbkTitleView;


# direct methods
.method private constructor <init>(Lcom/vivo/common/BbkTitleView;)V
    .locals 1

    .prologue
    .line 460
    iput-object p1, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView$ViewProxy;-><init>(Lcom/vivo/common/widget/TitleView;)V

    .line 461
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->maxLettersInWord:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/BbkTitleView;Lcom/vivo/common/BbkTitleView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/BbkTitleView;
    .param p2, "x1"    # Lcom/vivo/common/BbkTitleView$1;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/vivo/common/BbkTitleView$TitleTextProxy;-><init>(Lcom/vivo/common/BbkTitleView;)V

    return-void
.end method

.method private getViewContentMinWidth(Landroid/widget/TextView;)I
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 506
    if-nez p1, :cond_0

    .line 518
    :goto_0
    return v2

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 510
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x0

    .line 512
    .local v0, "minStr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->maxLettersInWord:I

    if-lt v3, v4, :cond_1

    .line 513
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->maxLettersInWord:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 515
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getViewContentWidth(Landroid/widget/TextView;)I
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 492
    if-nez p1, :cond_1

    .line 493
    const/4 v1, 0x0

    .line 502
    :cond_0
    :goto_0
    return v1

    .line 495
    :cond_1
    const/4 v1, 0x0

    .line 497
    .local v1, "titleLen":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 498
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 499
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getContentMinWidth()I
    .locals 3

    .prologue
    .line 475
    const/4 v0, 0x0

    .local v0, "mainMinLen":I
    const/4 v1, 0x0

    .line 477
    .local v1, "subMinLen":I
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$400(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->getViewContentMinWidth(Landroid/widget/TextView;)I

    move-result v0

    .line 478
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$500(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->getViewContentMinWidth(Landroid/widget/TextView;)I

    move-result v1

    .line 480
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public getContentWidth()I
    .locals 3

    .prologue
    .line 465
    const/4 v0, 0x0

    .local v0, "mainTitleLen":I
    const/4 v1, 0x0

    .line 467
    .local v1, "subTitleLen":I
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$400(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->getViewContentWidth(Landroid/widget/TextView;)I

    move-result v0

    .line 468
    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$500(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->getViewContentWidth(Landroid/widget/TextView;)I

    move-result v1

    .line 470
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public setOffset(II)V
    .locals 3
    .param p1, "sOff"    # I
    .param p2, "eOff"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/vivo/common/BbkTitleView;->access$400(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/BbkTitleView;->access$400(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$400(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 487
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/vivo/common/BbkTitleView;->access$500(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/BbkTitleView;->access$500(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/common/BbkTitleView$TitleTextProxy;->this$0:Lcom/vivo/common/BbkTitleView;

    # getter for: Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/vivo/common/BbkTitleView;->access$500(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 489
    return-void
.end method
