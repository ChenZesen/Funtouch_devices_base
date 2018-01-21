.class public Lcom/vivo/common/indicator/VivoCountIndicator;
.super Landroid/widget/LinearLayout;
.source "VivoCountIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/indicator/VivoCountIndicator$OnIndicatorClickListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x320

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoCountIndicator"


# instance fields
.field private MAX_ANALOG_COUNT:I

.field private mActiveIndicator:Landroid/graphics/drawable/Drawable;

.field private mAnalogIndicator:Z

.field private mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentLevel:I

.field private mDigitalIndicator:Landroid/widget/TextView;

.field private mIndicatorAnim:Landroid/widget/ImageView;

.field private mIndicatorArray:Landroid/content/res/TypedArray;

.field private mNormalIndicator:Landroid/graphics/drawable/Drawable;

.field private mTotalLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mContext:Landroid/content/Context;

    .line 39
    iput v1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    .line 40
    iput v1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    .line 42
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    .line 43
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorArray:Landroid/content/res/TypedArray;

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->MAX_ANALOG_COUNT:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    .line 55
    invoke-direct {p0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mContext:Landroid/content/Context;

    .line 39
    iput v1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    .line 40
    iput v1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    .line 42
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    .line 43
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorArray:Landroid/content/res/TypedArray;

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->MAX_ANALOG_COUNT:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mContext:Landroid/content/Context;

    .line 67
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x3010074

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    invoke-virtual {p0}, Lcom/vivo/common/indicator/VivoCountIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorArray:Landroid/content/res/TypedArray;

    .line 70
    const-string v6, "yang"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIndicatorArray.length() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorArray:Landroid/content/res/TypedArray;

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    sget-object v8, Lcom/vivo/internal/R$styleable;->IndicatorAnim:[I

    const v9, 0x301001f

    const v10, 0x30f0116

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 74
    .local v3, "indicatorType":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    .line 75
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    .line 77
    const/4 v4, 0x0

    .line 78
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    .line 79
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/common/indicator/VivoCountIndicator;->getOrientation()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v4}, Lcom/vivo/common/indicator/VivoCountIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    .line 85
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v8, 0x0

    const/high16 v9, 0x3fc00000    # 1.5f

    const/high16 v10, -0x1000000

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 87
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v4}, Lcom/vivo/common/indicator/VivoCountIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    iget v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    if-lt v6, v7, :cond_0

    .line 93
    iget v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    .line 96
    :cond_0
    iget v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    if-gez v6, :cond_1

    .line 97
    const/4 v6, 0x0

    iput v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    .line 100
    :cond_1
    iget v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    iget v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->MAX_ANALOG_COUNT:I

    if-gt v6, v7, :cond_5

    .line 101
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "indicator":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    if-ge v1, v6, :cond_2

    .line 107
    new-instance v2, Landroid/widget/ImageView;

    .end local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 108
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 114
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "indicator":Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 118
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 119
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    instance-of v6, v6, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v6, :cond_3

    .line 120
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 122
    :cond_3
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .end local v1    # "i":I
    .end local v2    # "indicator":Landroid/widget/ImageView;
    :cond_4
    :goto_1
    return-void

    .line 125
    :cond_5
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "digitalString":Ljava/lang/String;
    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showIndicatorAnim(Landroid/view/View;ILjava/lang/Boolean;Landroid/os/Handler;I)V
    .locals 6
    .param p1, "indicator"    # Landroid/view/View;
    .param p2, "startDelay"    # I
    .param p3, "isLastIndicator"    # Ljava/lang/Boolean;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "duraiotn"    # I

    .prologue
    const/4 v5, 0x2

    .line 270
    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 271
    .local v1, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 272
    .local v2, "scaleY":Landroid/animation/PropertyValuesHolder;
    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 273
    .local v0, "scale":Landroid/animation/ObjectAnimator;
    div-int/lit8 v3, p5, 0x2

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 275
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    new-instance v3, Lcom/vivo/common/indicator/VivoCountIndicator$1;

    invoke-direct {v3, p0, p1, p3, p4}, Lcom/vivo/common/indicator/VivoCountIndicator$1;-><init>(Lcom/vivo/common/indicator/VivoCountIndicator;Landroid/view/View;Ljava/lang/Boolean;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 292
    return-void

    .line 270
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 271
    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public hideIndicatorAnim()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public setActiveIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    .line 153
    return-void
.end method

.method public setIndicatorAnim(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "mIndicatorAnim"    # Landroid/widget/ImageView;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorArray:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    return-void
.end method

.method public setIndicatorArray(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 165
    return-void
.end method

.method public setLevel(I)V
    .locals 7
    .param p1, "currentLevel"    # I

    .prologue
    const/16 v6, 0x8

    .line 208
    iget v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    if-lt p1, v4, :cond_0

    .line 209
    iget v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    add-int/lit8 p1, v4, -0x1

    .line 212
    :cond_0
    if-gez p1, :cond_1

    .line 213
    const/4 p1, 0x0

    .line 216
    :cond_1
    iget-boolean v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    if-eqz v4, :cond_5

    .line 217
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 218
    .local v0, "childCount":I
    const/4 v3, 0x0

    .line 219
    .local v3, "imageView":Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 220
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "imageView":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 221
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    if-ne v2, p1, :cond_4

    .line 222
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v4, :cond_2

    .line 223
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 225
    :cond_2
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 227
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_4
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 234
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "digitalString":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    .line 237
    iget-object v4, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    .end local v1    # "digitalString":Ljava/lang/String;
    :cond_6
    iput p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    .line 241
    return-void
.end method

.method public setLevel(II)Z
    .locals 10
    .param p1, "totalLevel"    # I
    .param p2, "currentLevel"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v8, -0x2

    const/4 v5, 0x0

    .line 301
    if-gez p1, :cond_0

    .line 347
    :goto_0
    return v5

    .line 305
    :cond_0
    if-lt p2, p1, :cond_1

    .line 306
    add-int/lit8 p2, p1, -0x1

    .line 309
    :cond_1
    if-gez p2, :cond_2

    .line 310
    const/4 p2, 0x0

    .line 313
    :cond_2
    iget v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->MAX_ANALOG_COUNT:I

    if-gt p1, v7, :cond_5

    .line 314
    iget-object v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iput-boolean v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 320
    .local v3, "indicatorCount":I
    sub-int v5, v3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 321
    .local v0, "gap":I
    if-eqz v0, :cond_4

    .line 322
    if-ge v3, p1, :cond_3

    .line 323
    const/4 v4, 0x0

    .line 324
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 325
    new-instance v2, Landroid/widget/ImageView;

    .end local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 326
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 330
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 331
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    .end local v1    # "i":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 343
    .end local v0    # "gap":I
    .end local v2    # "indicator":Landroid/widget/ImageView;
    .end local v3    # "indicatorCount":I
    :cond_4
    :goto_2
    iput p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    .line 344
    invoke-virtual {p0, p2}, Lcom/vivo/common/indicator/VivoCountIndicator;->setLevel(I)V

    move v5, v6

    .line 347
    goto :goto_0

    .line 338
    :cond_5
    iget-object v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v7, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iput-boolean v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    goto :goto_2
.end method

.method public setMaxAnalogCount(I)V
    .locals 0
    .param p1, "maxAnalogCount"    # I

    .prologue
    .line 141
    if-gtz p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    iput p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->MAX_ANALOG_COUNT:I

    goto :goto_0
.end method

.method public setNomalIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    .line 161
    return-void
.end method

.method public setTotalLevel(I)V
    .locals 9
    .param p1, "totalLevel"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 169
    iget v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    if-ne p1, v5, :cond_0

    .line 204
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->MAX_ANALOG_COUNT:I

    if-gt p1, v5, :cond_3

    .line 174
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 180
    .local v3, "indicatorCount":I
    sub-int v5, v3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 181
    .local v0, "gap":I
    if-ge v3, p1, :cond_1

    .line 182
    const/4 v4, 0x0

    .line 183
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 184
    new-instance v2, Landroid/widget/ImageView;

    .end local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 185
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 190
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 191
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    .end local v1    # "i":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 202
    .end local v0    # "gap":I
    .end local v2    # "indicator":Landroid/widget/ImageView;
    .end local v3    # "indicatorCount":I
    :cond_2
    :goto_2
    iput p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    .line 203
    iget v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    invoke-virtual {p0, v5}, Lcom/vivo/common/indicator/VivoCountIndicator;->setLevel(I)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v5, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iput-boolean v6, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicator:Z

    goto :goto_2
.end method

.method public showIndicatorsAnim(Landroid/os/Handler;)V
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 246
    iget v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    iget v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->MAX_ANALOG_COUNT:I

    if-le v0, v2, :cond_1

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    .line 254
    .local v6, "childCount":I
    const/16 v11, 0x32

    .line 255
    .local v11, "startDelay":I
    const/4 v1, 0x0

    .line 256
    .local v1, "imageView":Landroid/widget/ImageView;
    const/4 v8, 0x0

    .line 257
    .local v8, "isLastIndicator":Z
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    move v10, v9

    .end local v9    # "j":I
    .local v10, "j":I
    :goto_0
    if-ltz v7, :cond_0

    .line 258
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "imageView":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 259
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    if-nez v7, :cond_2

    .line 261
    const/4 v8, 0x1

    .line 263
    :cond_2
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    mul-int v2, v11, v10

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v5, 0x320

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/indicator/VivoCountIndicator;->showIndicatorAnim(Landroid/view/View;ILjava/lang/Boolean;Landroid/os/Handler;I)V

    .line 257
    add-int/lit8 v7, v7, -0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_0
.end method

.method public updateIndicator(II)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "width"    # I

    .prologue
    .line 356
    if-lez p1, :cond_0

    iget v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p2

    if-lt p1, v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mTotalLevel:I

    iget v3, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->MAX_ANALOG_COUNT:I

    if-gt v2, v3, :cond_0

    .line 363
    iget-object v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 366
    if-eqz p2, :cond_0

    .line 369
    div-int v1, p1, p2

    .line 370
    .local v1, "position":I
    rem-int v2, p1, p2

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mCurrentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, p1

    mul-float/2addr v2, v3

    int-to-float v3, p2

    rem-float/2addr v2, v3

    int-to-float v3, p2

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorArray:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 375
    .local v0, "id":I
    iget-object v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 376
    iget-object v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorArray:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/vivo/common/indicator/VivoCountIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
