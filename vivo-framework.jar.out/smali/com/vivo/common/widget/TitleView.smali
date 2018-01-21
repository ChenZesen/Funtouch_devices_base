.class public abstract Lcom/vivo/common/widget/TitleView;
.super Landroid/widget/RelativeLayout;
.source "TitleView.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/TitleView$ViewProxy;,
        Lcom/vivo/common/widget/TitleView$AverageLinearLayout;,
        Lcom/vivo/common/widget/TitleView$IconViewInformation;
    }
.end annotation


# static fields
.field protected static final ICON_VIEW_LEFT:I = 0x0

.field protected static final ICON_VIEW_MASK:I = 0x1

.field protected static final ICON_VIEW_RIGHT:I = 0x1

.field protected static final ICON_VIEW_SHIFT:I = 0x1

.field protected static final ICON_VIEW_START_USE_ID:I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected imagePaddingOuter:I

.field protected mCenterView:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field protected mIconViewStartSysId:I

.field private mIconViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mLeftIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

.field protected mRightIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

.field private mTitleProxy:Lcom/vivo/common/widget/TitleView$ViewProxy;

.field protected textPaddingInner:I

.field protected textPaddingOuter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 85
    const v1, 0x301002a

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v1, "TitleView"

    iput-object v1, p0, Lcom/vivo/common/widget/TitleView;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v3, p0, Lcom/vivo/common/widget/TitleView;->DEBUG:Z

    .line 44
    const/16 v1, 0x100

    iput v1, p0, Lcom/vivo/common/widget/TitleView;->mIconViewStartSysId:I

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/widget/TitleView;->mIconViews:Ljava/util/Map;

    .line 56
    iput v3, p0, Lcom/vivo/common/widget/TitleView;->textPaddingInner:I

    .line 59
    iput v3, p0, Lcom/vivo/common/widget/TitleView;->textPaddingOuter:I

    .line 62
    iput v3, p0, Lcom/vivo/common/widget/TitleView;->imagePaddingOuter:I

    .line 86
    iput-object p1, p0, Lcom/vivo/common/widget/TitleView;->mContext:Landroid/content/Context;

    .line 88
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/TitleView;->setGravity(I)V

    .line 89
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100d4

    aput v2, v1, v3

    const v2, 0x101005c

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/TitleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-direct {p0}, Lcom/vivo/common/widget/TitleView;->initViewLayout()V

    .line 96
    return-void
.end method

.method private AutoAdjustViewPosition(I)[I
    .locals 12
    .param p1, "totalLen"    # I

    .prologue
    .line 279
    iget-object v10, p0, Lcom/vivo/common/widget/TitleView;->mLeftIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    invoke-virtual {v10}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 280
    .local v0, "leftLen":I
    iget-object v10, p0, Lcom/vivo/common/widget/TitleView;->mRightIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    invoke-virtual {v10}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->getMeasuredWidth()I

    move-result v7

    .line 281
    .local v7, "rightLen":I
    iget-object v10, p0, Lcom/vivo/common/widget/TitleView;->mTitleProxy:Lcom/vivo/common/widget/TitleView$ViewProxy;

    invoke-virtual {v10}, Lcom/vivo/common/widget/TitleView$ViewProxy;->getContentWidth()I

    move-result v9

    .line 290
    .local v9, "titleLen":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 291
    .local v2, "maxLen":I
    sub-int v10, p1, v7

    sub-int v6, v10, v0

    .line 292
    .local v6, "restLen":I
    iget-object v10, p0, Lcom/vivo/common/widget/TitleView;->mTitleProxy:Lcom/vivo/common/widget/TitleView$ViewProxy;

    invoke-virtual {v10}, Lcom/vivo/common/widget/TitleView$ViewProxy;->getContentMinWidth()I

    move-result v10

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 294
    .local v5, "rTitleLen":I
    sub-int v4, p1, v5

    .line 295
    .local v4, "rBtnLen":I
    add-int v10, v0, v7

    add-int v3, v10, v5

    .line 296
    .local v3, "needLen":I
    const/4 v1, 0x0

    .local v1, "leftOffset":I
    const/4 v8, 0x0

    .line 298
    .local v8, "rightOffset":I
    if-gt v3, p1, :cond_2

    .line 299
    div-int/lit8 v10, v4, 0x2

    if-gt v2, v10, :cond_0

    .line 300
    move v8, v2

    move v1, v2

    .line 323
    :goto_0
    iget v10, p0, Lcom/vivo/common/widget/TitleView;->textPaddingOuter:I

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 324
    iget v10, p0, Lcom/vivo/common/widget/TitleView;->textPaddingOuter:I

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 326
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v11, 0x1

    aput v8, v10, v11

    return-object v10

    .line 301
    :cond_0
    div-int/lit8 v10, v4, 0x2

    if-le v0, v10, :cond_1

    .line 302
    move v1, v0

    .line 303
    sub-int v8, v4, v1

    goto :goto_0

    .line 306
    :cond_1
    move v8, v7

    .line 307
    sub-int v1, v4, v8

    goto :goto_0

    .line 311
    :cond_2
    div-int/lit8 v10, v4, 0x2

    if-gt v0, v10, :cond_3

    .line 312
    move v1, v0

    .line 313
    sub-int v8, v4, v1

    goto :goto_0

    .line 315
    :cond_3
    div-int/lit8 v10, v4, 0x2

    if-gt v7, v10, :cond_4

    .line 316
    move v8, v7

    .line 317
    sub-int v1, v4, v8

    goto :goto_0

    .line 320
    :cond_4
    div-int/lit8 v8, v4, 0x2

    move v1, v8

    goto :goto_0
.end method

.method private getParentLayout(I)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "parent":Landroid/view/ViewGroup;
    and-int/lit8 v1, p1, 0x1

    .line 167
    .local v1, "pos":I
    if-nez v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/vivo/common/widget/TitleView;->mLeftIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    .line 174
    :goto_0
    return-object v0

    .line 169
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/vivo/common/widget/TitleView;->mRightIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    goto :goto_0

    .line 172
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal Postion ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initViewLayout()V
    .locals 13

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x1

    const/16 v10, 0xf

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 99
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/vivo/internal/R$styleable;->TitleView:[I

    const v7, 0x301002a

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 101
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 102
    .local v0, "defaultHeight":I
    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/TitleView;->textPaddingInner:I

    .line 103
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/TitleView;->textPaddingOuter:I

    .line 104
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/common/widget/TitleView;->imagePaddingOuter:I

    .line 107
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/vivo/common/widget/TitleView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vivo/common/widget/TitleView;->mCenterView:Landroid/widget/LinearLayout;

    .line 108
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v1, "pCenterTitle":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mCenterView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v1}, Lcom/vivo/common/widget/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView;->initCenterView()Lcom/vivo/common/widget/TitleView$ViewProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/common/widget/TitleView;->mTitleProxy:Lcom/vivo/common/widget/TitleView$ViewProxy;

    .line 116
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v2, "rParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    new-instance v4, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    iget-object v5, p0, Lcom/vivo/common/widget/TitleView;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v8}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;-><init>(Lcom/vivo/common/widget/TitleView;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/vivo/common/widget/TitleView;->mLeftIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    .line 121
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mLeftIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    invoke-virtual {p0, v4, v2}, Lcom/vivo/common/widget/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "rParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .restart local v2    # "rParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    new-instance v4, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    iget-object v5, p0, Lcom/vivo/common/widget/TitleView;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v11}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;-><init>(Lcom/vivo/common/widget/TitleView;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/vivo/common/widget/TitleView;->mRightIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    .line 129
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mRightIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    invoke-virtual {p0, v4, v2}, Lcom/vivo/common/widget/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
.end method


# virtual methods
.method protected addIconView(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 186
    const/4 p1, 0x0

    .line 187
    const-string v1, "TitleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIconView illegalArgument position["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :pswitch_0
    iget v1, p0, Lcom/vivo/common/widget/TitleView;->mIconViewStartSysId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/common/widget/TitleView;->mIconViewStartSysId:I

    shl-int/lit8 v1, v1, 0x1

    or-int v0, v1, p1

    .line 192
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/vivo/common/widget/TitleView;->addIconViewWidthId(I)V

    .line 194
    return v0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected addIconViewWidthId(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, -0x2

    .line 210
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mIconViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 211
    const-string v4, "TitleView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IconView ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] has exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 215
    :cond_0
    and-int/lit8 v2, p1, 0x1

    .line 217
    .local v2, "position":I
    invoke-virtual {p0, v2}, Lcom/vivo/common/widget/TitleView;->initIconView(I)Landroid/widget/Button;

    move-result-object v3

    .line 218
    .local v3, "view":Landroid/widget/Button;
    if-nez v3, :cond_1

    .line 219
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "initIconView return null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v0, "lParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 226
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView;->getParentLayout(I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 227
    .local v1, "parentLayout":Landroid/view/ViewGroup;
    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mIconViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected adjustLayoutByUser()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 157
    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/TitleView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/widget/TitleView;->measure(II)V

    .line 161
    return-void
.end method

.method protected getIconViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vivo/common/widget/TitleView;->mIconViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected abstract initCenterView()Lcom/vivo/common/widget/TitleView$ViewProxy;
.end method

.method protected abstract initIconView(I)Landroid/widget/Button;
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v5, 0x7fffffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 245
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 246
    .local v3, "widthSize":I
    const/4 v1, 0x0

    .line 248
    .local v1, "toalWidth":I
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mLeftIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    invoke-virtual {v4, v5}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMaxWidth(I)V

    .line 249
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mRightIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    invoke-virtual {v4, v5}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMaxWidth(I)V

    .line 251
    if-eqz v2, :cond_0

    .line 252
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, v4, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 257
    invoke-direct {p0, v3}, Lcom/vivo/common/widget/TitleView;->AutoAdjustViewPosition(I)[I

    move-result-object v0

    .line 261
    .local v0, "padding":[I
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mLeftIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMaxWidth(I)V

    .line 262
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mLeftIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    invoke-virtual {v4}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->forceLayout()V

    .line 264
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mRightIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->setMaxWidth(I)V

    .line 265
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mRightIconLayout:Lcom/vivo/common/widget/TitleView$AverageLinearLayout;

    invoke-virtual {v4}, Lcom/vivo/common/widget/TitleView$AverageLinearLayout;->forceLayout()V

    .line 268
    .end local v0    # "padding":[I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 270
    invoke-direct {p0, v3}, Lcom/vivo/common/widget/TitleView;->AutoAdjustViewPosition(I)[I

    move-result-object v0

    .line 274
    .restart local v0    # "padding":[I
    iget-object v4, p0, Lcom/vivo/common/widget/TitleView;->mTitleProxy:Lcom/vivo/common/widget/TitleView$ViewProxy;

    aget v5, v0, v6

    aget v6, v0, v7

    invoke-virtual {v4, v5, v6}, Lcom/vivo/common/widget/TitleView$ViewProxy;->setOffset(II)V

    .line 275
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 276
    return-void
.end method

.method protected removeIconView(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/TitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/TitleView;->getParentLayout(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 201
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    iget-object v2, p0, Lcom/vivo/common/widget/TitleView;->mIconViews:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v2, "TitleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeIconView id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] failed, not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIconViewDrawableRes(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "resId"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/TitleView;->getIconViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 234
    .local v0, "view":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 236
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v1, "TitleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIconViewDrawableRes failed view["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateIconViewGapByUser(Lcom/vivo/common/widget/TitleView$IconViewInformation;ZI)V
    .locals 0
    .param p1, "info"    # Lcom/vivo/common/widget/TitleView$IconViewInformation;
    .param p2, "visible"    # Z
    .param p3, "position"    # I

    .prologue
    .line 153
    return-void
.end method
