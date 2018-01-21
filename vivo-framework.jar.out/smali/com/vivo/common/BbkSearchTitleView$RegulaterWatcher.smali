.class Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;
.super Ljava/lang/Object;
.source "BbkSearchTitleView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/BbkSearchTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegulaterWatcher"
.end annotation


# instance fields
.field private final FONT_ADJUST_SIZE:I

.field private mMaxWidth:I

.field private mOriginTextSize:F

.field private mView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vivo/common/BbkSearchTitleView;


# direct methods
.method constructor <init>(Lcom/vivo/common/BbkSearchTitleView;Landroid/widget/TextView;I)V
    .locals 2
    .param p2, "view"    # Landroid/widget/TextView;
    .param p3, "maxWidth"    # I

    .prologue
    const/4 v0, 0x0

    .line 273
    iput-object p1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 v1, 0x2

    iput v1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->FONT_ADJUST_SIZE:I

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mView:Landroid/widget/TextView;

    .line 270
    const/4 v1, 0x0

    iput v1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mMaxWidth:I

    .line 271
    iput v0, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mOriginTextSize:F

    .line 274
    iput-object p2, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mView:Landroid/widget/TextView;

    .line 275
    iput p3, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mMaxWidth:I

    .line 277
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    :cond_0
    iput v0, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mOriginTextSize:F

    .line 278
    return-void
.end method

.method private getWrapWidth(Landroid/widget/TextView;)I
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 323
    :goto_0
    return v1

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    .line 319
    .local v0, "maxWidth":I
    const v2, 0x7fffffff

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 320
    invoke-virtual {p1, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 321
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 323
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_0
.end method

.method private tryAdjustTextSize(Landroid/widget/TextView;II)Z
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "totalWidth"    # I
    .param p3, "availableLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, "retval":Z
    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->this$0:Lcom/vivo/common/BbkSearchTitleView;

    # getter for: Lcom/vivo/common/BbkSearchTitleView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/vivo/common/BbkSearchTitleView;->access$300(Lcom/vivo/common/BbkSearchTitleView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 303
    .local v0, "adjustSize":F
    iget v2, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mOriginTextSize:F

    sub-float/2addr v2, v0

    invoke-virtual {p1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    invoke-direct {p0, p1}, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->getWrapWidth(Landroid/widget/TextView;)I

    move-result v2

    if-le v2, p3, :cond_0

    .line 306
    iget v2, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mOriginTextSize:F

    invoke-virtual {p1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    :goto_0
    return v1

    .line 308
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method adjust()V
    .locals 4

    .prologue
    .line 281
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->getWrapWidth(Landroid/widget/TextView;)I

    move-result v0

    .line 283
    .local v0, "totalWidth":I
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mMaxWidth:I

    if-le v0, v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mOriginTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 285
    iget-object v1, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mView:Landroid/widget/TextView;

    iget v2, p0, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->mMaxWidth:I

    invoke-direct {p0, v1, v0, v2}, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->tryAdjustTextSize(Landroid/widget/TextView;II)Z

    .line 287
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/vivo/common/BbkSearchTitleView$RegulaterWatcher;->adjust()V

    .line 292
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 295
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 297
    return-void
.end method
