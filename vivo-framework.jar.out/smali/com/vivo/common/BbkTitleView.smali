.class public Lcom/vivo/common/BbkTitleView;
.super Lcom/vivo/common/widget/TitleView;
.source "BbkTitleView.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/BbkTitleView$TitleTextProxy;
    }
.end annotation


# static fields
.field private static final ICON_LEFT_BUTTON:I = 0x2

.field private static final ICON_RIGHT_BUTTON:I = 0x5

.field public static final LEFT_LABEL_BUTTON:I = 0xa

.field private static final NORMAL_BG_ID:I = 0x30200e8

.field public static final RIGHT_ICON_FIRST:I = 0x7

.field public static final RIGHT_ICON_SEC:I = 0x9

.field public static final TITLE_BTN_BACK:I = 0x2

.field public static final TITLE_BTN_CREATE:I = 0x3

.field public static final TITLE_BTN_NEW:I = 0x4

.field public static final TITLE_BTN_NORMAL:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private MAIN_TITLE_OFFSET:I

.field private SUB_TITLE_OFFSET:I

.field private final TAG:Ljava/lang/String;

.field private labelButtonTextOffset:I

.field private mIsDefaultBackImage:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mMainTitleView:Landroid/widget/TextView;

.field private mRightButton:Landroid/widget/Button;

.field private mRightIconFirst:Landroid/widget/TextView;

.field private mRightIconSec:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mSubTitleView:Landroid/widget/TextView;

.field private mTitleClickListView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/BbkTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v1, "BbkTitltView"

    iput-object v1, p0, Lcom/vivo/common/BbkTitleView;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v2, p0, Lcom/vivo/common/BbkTitleView;->DEBUG:Z

    .line 58
    iput v2, p0, Lcom/vivo/common/BbkTitleView;->labelButtonTextOffset:I

    .line 60
    const/4 v1, -0x3

    iput v1, p0, Lcom/vivo/common/BbkTitleView;->MAIN_TITLE_OFFSET:I

    .line 61
    const/4 v1, 0x3

    iput v1, p0, Lcom/vivo/common/BbkTitleView;->SUB_TITLE_OFFSET:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 79
    .local v0, "density":F
    iget v1, p0, Lcom/vivo/common/BbkTitleView;->MAIN_TITLE_OFFSET:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/vivo/common/BbkTitleView;->MAIN_TITLE_OFFSET:I

    .line 80
    iget v1, p0, Lcom/vivo/common/BbkTitleView;->SUB_TITLE_OFFSET:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/vivo/common/BbkTitleView;->SUB_TITLE_OFFSET:I

    .line 82
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/BbkTitleView;->labelButtonTextOffset:I

    .line 84
    invoke-direct {p0}, Lcom/vivo/common/BbkTitleView;->initDefaultLayout()V

    .line 85
    invoke-virtual {p0}, Lcom/vivo/common/BbkTitleView;->setOnTitleClickListener()V

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/BbkTitleView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkTitleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/BbkTitleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkTitleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/BbkTitleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkTitleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkTitleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/BbkTitleView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/BbkTitleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getBtnBgResId(I)I
    .locals 11
    .param p1, "drawableId"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v2, 0x30200e8

    .line 402
    iget-object v3, p0, Lcom/vivo/common/BbkTitleView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/vivo/internal/R$styleable;->TitleBtnIcon:[I

    const v6, 0x3010007

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 405
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 406
    .local v1, "resultBtnBg":I
    if-ge p1, v7, :cond_0

    .line 431
    :goto_0
    return v2

    .line 408
    :cond_0
    if-ne v7, p1, :cond_3

    .line 409
    invoke-virtual {v0, v10, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 425
    :cond_1
    :goto_1
    const/high16 v2, 0x1000000

    if-lt p1, v2, :cond_2

    .line 427
    move v1, p1

    .line 429
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v1

    .line 431
    goto :goto_0

    .line 412
    :cond_3
    if-ne v9, p1, :cond_4

    .line 413
    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_1

    .line 416
    :cond_4
    if-ne v10, p1, :cond_5

    .line 417
    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_1

    .line 420
    :cond_5
    const/4 v3, 0x4

    if-ne v3, p1, :cond_1

    .line 421
    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_1
.end method

.method private initDefaultLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 90
    invoke-virtual {p0, v0}, Lcom/vivo/common/BbkTitleView;->addIconViewWidthId(I)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/vivo/common/BbkTitleView;->addIconViewWidthId(I)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/common/BbkTitleView;->mLeftButton:Landroid/widget/Button;

    .line 94
    invoke-virtual {p0, v1}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightButton:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    return-void
.end method

.method private isROM3_0()Z
    .locals 2

    .prologue
    .line 177
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

.method private setButton(ILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "drawableId"    # I
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, 0x1

    .line 381
    invoke-virtual {p0, p1}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 383
    .local v0, "view":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 386
    :cond_0
    if-nez p2, :cond_1

    if-ge p3, v2, :cond_1

    if-nez p4, :cond_1

    .line 387
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/vivo/common/BbkTitleView;->setIconViewVisible(IZ)V

    goto :goto_0

    .line 390
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 391
    :cond_2
    invoke-direct {p0, p3}, Lcom/vivo/common/BbkTitleView;->getBtnBgResId(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/vivo/common/BbkTitleView;->setIconViewDrawableRes(II)V

    .line 395
    :goto_1
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    invoke-virtual {p0, p1, v2}, Lcom/vivo/common/BbkTitleView;->setIconViewVisible(IZ)V

    goto :goto_0

    .line 393
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/vivo/common/BbkTitleView;->setIconViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getCenterView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method public hideLeftButton()V
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/BbkTitleView;->setIconViewVisible(IZ)V

    .line 208
    return-void
.end method

.method public hideRightButton()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/BbkTitleView;->setIconViewVisible(IZ)V

    .line 213
    return-void
.end method

.method protected initCenterView()Lcom/vivo/common/widget/TitleView$ViewProxy;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 102
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mCenterView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x3030037

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/BbkTitleView;->mRootView:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mRootView:Landroid/view/View;

    const v2, 0x30d007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mRootView:Landroid/view/View;

    const v2, 0x30d0079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mCenterView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vivo/common/BbkTitleView;->mRootView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no find TextView identified : main"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    new-instance v1, Lcom/vivo/common/BbkTitleView$TitleTextProxy;

    invoke-direct {v1, p0, v5}, Lcom/vivo/common/BbkTitleView$TitleTextProxy;-><init>(Lcom/vivo/common/BbkTitleView;Lcom/vivo/common/BbkTitleView$1;)V

    return-object v1
.end method

.method protected initIconView(I)Landroid/widget/Button;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 120
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x3010001

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    .local v0, "view":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/vivo/common/BbkTitleView;->isROM3_0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    if-nez p1, :cond_0

    .line 124
    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const v1, 0x800015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_0

    .line 129
    :cond_1
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_0
.end method

.method public initLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 228
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/vivo/common/BbkTitleView;->setButton(ILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method public initLeftLabelButton(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 164
    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkTitleView;->addIconViewWidthId(I)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    .local v0, "view":Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/vivo/common/BbkTitleView;->getBtnBgResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget v1, p0, Lcom/vivo/common/BbkTitleView;->labelButtonTextOffset:I

    iget v2, p0, Lcom/vivo/common/BbkTitleView;->imagePaddingOuter:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_0
.end method

.method public initRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 234
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/vivo/common/BbkTitleView;->setButton(ILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method

.method public initRightIconButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x9

    const/4 v1, 0x7

    .line 149
    invoke-virtual {p0, v1}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Lcom/vivo/common/BbkTitleView;->addIconViewWidthId(I)V

    .line 152
    :cond_0
    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkTitleView;->addIconViewWidthId(I)V

    .line 155
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightIconFirst:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightIconSec:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightIconFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightIconSec:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 436
    invoke-super {p0, p1, p2}, Lcom/vivo/common/widget/TitleView;->onMeasure(II)V

    .line 438
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 440
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/vivo/common/BbkTitleView;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/vivo/common/BbkTitleView;->MAIN_TITLE_OFFSET:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 445
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/common/BbkTitleView;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/vivo/common/BbkTitleView;->SUB_TITLE_OFFSET:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 457
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 452
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setCenterSubText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {p0}, Lcom/vivo/common/BbkTitleView;->adjustLayoutByUser()V

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "BbkTitltView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterSubText ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCenterSubViewVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 324
    iget-object v1, p0, Lcom/vivo/common/BbkTitleView;->mSubTitleView:Landroid/widget/TextView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :goto_1
    return-void

    .line 324
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 326
    :cond_1
    const-string v0, "BbkTitltView"

    const-string v1, "setCenterSubViewVisible failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setCenterText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p0}, Lcom/vivo/common/BbkTitleView;->adjustLayoutByUser()V

    .line 261
    return-void
.end method

.method public setIconViewOnClickListner(ILandroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    const-string v1, "BbkTitltView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIconViewOnClickListener ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIconViewText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 289
    :goto_0
    :pswitch_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 287
    :pswitch_1
    const v1, 0x30200e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setIconViewVisible(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 220
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :goto_1
    return-void

    .line 220
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 222
    :cond_1
    const-string v1, "BbkTitltView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIconViewVisible failed id["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-void
.end method

.method public setLeftButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    return-void
.end method

.method public setLeftButtonIcon(I)V
    .locals 2
    .param p1, "drawableId"    # I

    .prologue
    .line 293
    const/4 v0, 0x2

    invoke-direct {p0, p1}, Lcom/vivo/common/BbkTitleView;->getBtnBgResId(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/BbkTitleView;->setIconViewDrawableRes(II)V

    .line 294
    return-void
.end method

.method public setLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 249
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/vivo/common/BbkTitleView;->setIconViewText(ILjava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method public setOnTitleClickListener()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/common/BbkTitleView$2;

    invoke-direct {v1, p0}, Lcom/vivo/common/BbkTitleView$2;-><init>(Lcom/vivo/common/BbkTitleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_0
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/vivo/common/BbkTitleView;->mTitleClickListView:Landroid/view/View;

    .line 339
    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mMainTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/common/BbkTitleView$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/BbkTitleView$1;-><init>(Lcom/vivo/common/BbkTitleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    :cond_0
    return-void
.end method

.method public setRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method

.method public setRightButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vivo/common/BbkTitleView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    return-void
.end method

.method public setRightButtonIcon(I)V
    .locals 2
    .param p1, "drawableId"    # I

    .prologue
    .line 298
    const/4 v0, 0x5

    invoke-direct {p0, p1}, Lcom/vivo/common/BbkTitleView;->getBtnBgResId(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/BbkTitleView;->setIconViewDrawableRes(II)V

    .line 299
    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 254
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/vivo/common/BbkTitleView;->setIconViewText(ILjava/lang/CharSequence;)V

    .line 255
    return-void
.end method

.method public showLeftButton()V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/BbkTitleView;->setIconViewVisible(IZ)V

    .line 198
    return-void
.end method

.method public showRightButton()V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/BbkTitleView;->setIconViewVisible(IZ)V

    .line 203
    return-void
.end method

.method protected updateIconViewGapByUser(Lcom/vivo/common/widget/TitleView$IconViewInformation;ZI)V
    .locals 3
    .param p1, "info"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;
    .param p2, "visible"    # Z
    .param p3, "position"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 139
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/vivo/common/BbkTitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 141
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/vivo/common/BbkTitleView;->imagePaddingOuter:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 142
    iget-object v1, p1, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_0
    return-void
.end method
