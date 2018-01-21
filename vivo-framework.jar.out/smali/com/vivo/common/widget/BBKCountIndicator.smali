.class public Lcom/vivo/common/widget/BBKCountIndicator;
.super Landroid/widget/LinearLayout;
.source "BBKCountIndicator.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/BBKCountIndicator$OnIndicatorClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ScreenIndicator"


# instance fields
.field private MAX_ANALOG_COUNT:I

.field private mActiveIndicator:Landroid/graphics/drawable/Drawable;

.field private mAnalogIndicator:Z

.field private mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentLevel:I

.field private mDigitalIndicator:Landroid/widget/TextView;

.field private mNormalIndicator:Landroid/graphics/drawable/Drawable;

.field private mTotalLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mContext:Landroid/content/Context;

    .line 34
    iput v0, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    .line 36
    iput v0, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    .line 38
    iput-object v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/common/widget/BBKCountIndicator;->MAX_ANALOG_COUNT:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    .line 45
    iput-object v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    .line 51
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/BBKCountIndicator;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v2, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mContext:Landroid/content/Context;

    .line 34
    iput v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    .line 36
    iput v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    .line 38
    iput-object v2, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object v2, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    .line 42
    const/16 v1, 0xa

    iput v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->MAX_ANALOG_COUNT:I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    .line 45
    iput-object v2, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    .line 46
    iput-object v2, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x3020256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    .line 77
    const v1, 0x3020257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/BBKCountIndicator;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x2

    const/high16 v9, 0x3fc00000    # 1.5f

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 82
    iput-object p1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mContext:Landroid/content/Context;

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    .line 86
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKCountIndicator;->getOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v3}, Lcom/vivo/common/widget/BBKCountIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    .line 92
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v9, v5, v9, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 94
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lcom/vivo/common/widget/BBKCountIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    if-lt v4, v5, :cond_0

    .line 100
    iget v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    .line 103
    :cond_0
    iget v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    if-gez v4, :cond_1

    .line 104
    iput v8, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    .line 107
    :cond_1
    iget v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->MAX_ANALOG_COUNT:I

    if-gt v4, v5, :cond_5

    .line 108
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "indicator":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    if-ge v1, v4, :cond_2

    .line 114
    new-instance v2, Landroid/widget/ImageView;

    .end local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 120
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 121
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_2
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "indicator":Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 125
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 126
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v4, :cond_3

    .line 127
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 129
    :cond_3
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    .end local v1    # "i":I
    .end local v2    # "indicator":Landroid/widget/ImageView;
    :cond_4
    :goto_1
    return-void

    .line 132
    :cond_5
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iput-boolean v8, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "digitalString":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public setActiveIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    .line 155
    return-void
.end method

.method public setLevel(I)V
    .locals 6
    .param p1, "currentLevel"    # I

    .prologue
    .line 206
    iget v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    if-lt p1, v4, :cond_0

    .line 207
    iget v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    add-int/lit8 p1, v4, -0x1

    .line 210
    :cond_0
    if-gez p1, :cond_1

    .line 211
    const/4 p1, 0x0

    .line 214
    :cond_1
    iget-boolean v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    if-eqz v4, :cond_4

    .line 215
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 216
    .local v0, "childCount":I
    const/4 v3, 0x0

    .line 217
    .local v3, "imageView":Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 218
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "imageView":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 219
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    if-ne v2, p1, :cond_3

    .line 220
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v4, :cond_2

    .line 221
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 223
    :cond_2
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mActiveIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_3
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 229
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_4
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

    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "digitalString":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .end local v1    # "digitalString":Ljava/lang/String;
    :cond_5
    iput p1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    .line 233
    return-void
.end method

.method public setLevel(II)Z
    .locals 12
    .param p1, "totalLevel"    # I
    .param p2, "currentLevel"    # I

    .prologue
    const/16 v11, 0x8

    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v5, 0x0

    .line 238
    const-string v7, "ScreenIndicatorView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set level new totalLevel"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new  currentLevel "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " old mTotalLevel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " old mCurrentLevel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-gez p1, :cond_0

    .line 290
    :goto_0
    return v5

    .line 246
    :cond_0
    if-lt p2, p1, :cond_1

    .line 247
    add-int/lit8 p2, p1, -0x1

    .line 250
    :cond_1
    if-gez p2, :cond_2

    .line 251
    const/4 p2, 0x0

    .line 254
    :cond_2
    iget v7, p0, Lcom/vivo/common/widget/BBKCountIndicator;->MAX_ANALOG_COUNT:I

    if-gt p1, v7, :cond_5

    .line 255
    iget-object v7, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iput-boolean v6, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 261
    .local v3, "indicatorCount":I
    sub-int v5, v3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 262
    .local v0, "gap":I
    if-eqz v0, :cond_4

    .line 263
    if-ge v3, p1, :cond_3

    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 266
    new-instance v2, Landroid/widget/ImageView;

    .end local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 267
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 272
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 274
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v1    # "i":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 286
    .end local v0    # "gap":I
    .end local v2    # "indicator":Landroid/widget/ImageView;
    .end local v3    # "indicatorCount":I
    :cond_4
    :goto_2
    iput p1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    .line 287
    invoke-virtual {p0, p2}, Lcom/vivo/common/widget/BBKCountIndicator;->setLevel(I)V

    .line 288
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKCountIndicator;->requestLayout()V

    move v5, v6

    .line 290
    goto :goto_0

    .line 281
    :cond_5
    iget-object v7, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object v7, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iput-boolean v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    goto :goto_2
.end method

.method public setMaxAnalogCount(I)V
    .locals 0
    .param p1, "maxAnalogCount"    # I

    .prologue
    .line 143
    if-gtz p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iput p1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->MAX_ANALOG_COUNT:I

    goto :goto_0
.end method

.method public setNomalIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    .line 163
    return-void
.end method

.method public setTotalLevel(I)V
    .locals 9
    .param p1, "totalLevel"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 167
    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    if-ne p1, v5, :cond_0

    .line 202
    :goto_0
    return-void

    .line 171
    :cond_0
    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->MAX_ANALOG_COUNT:I

    if-gt p1, v5, :cond_3

    .line 172
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 178
    .local v3, "indicatorCount":I
    sub-int v5, v3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 179
    .local v0, "gap":I
    if-ge v3, p1, :cond_1

    .line 180
    const/4 v4, 0x0

    .line 181
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 182
    new-instance v2, Landroid/widget/ImageView;

    .end local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 183
    .restart local v2    # "indicator":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mNormalIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 188
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 189
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    .end local v1    # "i":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 200
    .end local v0    # "gap":I
    .end local v2    # "indicator":Landroid/widget/ImageView;
    .end local v3    # "indicatorCount":I
    :cond_2
    :goto_2
    iput p1, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mTotalLevel:I

    .line 201
    iget v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mCurrentLevel:I

    invoke-virtual {p0, v5}, Lcom/vivo/common/widget/BBKCountIndicator;->setLevel(I)V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v5, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mDigitalIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iput-boolean v6, p0, Lcom/vivo/common/widget/BBKCountIndicator;->mAnalogIndicator:Z

    goto :goto_2
.end method
