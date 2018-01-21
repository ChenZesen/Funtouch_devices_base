.class public Lcom/vivo/common/AbcThumbsSelect;
.super Landroid/widget/LinearLayout;
.source "AbcThumbsSelect.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/AbcThumbsSelect$1;,
        Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;
    }
.end annotation


# instance fields
.field private final ABC_HEIGHT:I

.field private final ABC_HEIGHT_FHD:I

.field private final ABC_HEIGHT_H:I

.field private final ABC_HEIGHT_HD:I

.field private final ABC_HEIGHT_QFHD:I

.field private final ABC_HEIGHT_QHD:I

.field private final ABC_STRING:[Ljava/lang/String;

.field private final ABC_WIDTH:I

.field private final ABC_WIDTH_FHD:I

.field private final ABC_WIDTH_HD:I

.field private final ABC_WIDTH_QFHD:I

.field private final ABC_WIDTH_QHD:I

.field private final TAG:Ljava/lang/String;

.field private addFlag:Z

.field private hasSearchSelect:Z

.field private hasStarredSelect:Z

.field location:[I

.field private mAbcThumbBg:Landroid/graphics/drawable/Drawable;

.field private mDensityDpi:I

.field private mDensityScale:F

.field private mFloatText:Landroid/widget/TextView;

.field private mPopupWin:Landroid/widget/PopupWindow;

.field private mPopupWinBg:Landroid/graphics/drawable/Drawable;

.field private mPopupWinHeight:I

.field private mPopupWinMoveFlag:Z

.field private mPopupWinStartY:I

.field private mPopupWinWidth:I

.field private mPopupWinX:I

.field private mPopupWinY:I

.field private mSelectTextColor:I

.field private mSelectTextView:Landroid/widget/TextView;

.field private mStartIndex:I

.field private mTextColor:I

.field private mTextSize:F

.field private mThumbsTextHeight:I

.field private mThumbsTextWidth:I

.field private mTouchListener:Landroid/view/View$OnClickListener;

.field private showPopupWin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/AbcThumbsSelect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/common/AbcThumbsSelect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/16 v7, 0x38

    const v6, -0x969697

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "~"

    aput-object v2, v1, v8

    const-string v2, "#"

    aput-object v2, v1, v10

    const/4 v2, 0x2

    const-string v3, "A"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "B"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "C"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "D"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "E"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "F"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "G"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "H"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "I"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "J"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "K"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "L"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "M"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "N"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "O"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "P"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Q"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "R"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "S"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "T"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "U"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "V"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "W"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "X"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "Y"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "Z"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_STRING:[Ljava/lang/String;

    .line 36
    const/16 v1, 0x1b

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_WIDTH:I

    .line 37
    const/16 v1, 0xc

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_HEIGHT:I

    .line 38
    const/16 v1, 0x15

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_HEIGHT_H:I

    .line 40
    const/16 v1, 0x22

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_WIDTH_QHD:I

    .line 41
    const/16 v1, 0x1a

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_HEIGHT_QHD:I

    .line 43
    iput v7, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_WIDTH_HD:I

    .line 44
    const/16 v1, 0x23

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_HEIGHT_HD:I

    .line 46
    iput v7, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_WIDTH_FHD:I

    .line 47
    const/16 v1, 0x32

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_HEIGHT_FHD:I

    .line 49
    iput v7, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_WIDTH_QFHD:I

    .line 50
    const/16 v1, 0x42

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_HEIGHT_QFHD:I

    .line 52
    const-string v1, "AbcThumbsSelect"

    iput-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->TAG:Ljava/lang/String;

    .line 55
    const/16 v1, 0x64

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinWidth:I

    .line 56
    const/16 v1, 0x64

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I

    .line 57
    const/16 v1, 0x78

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    .line 58
    const/16 v1, 0x64

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I

    .line 61
    iput v10, p0, Lcom/vivo/common/AbcThumbsSelect;->mStartIndex:I

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinStartY:I

    .line 63
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->location:[I

    .line 64
    const/high16 v1, 0x41900000    # 18.0f

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextSize:F

    .line 65
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    .line 66
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextColor:I

    .line 68
    iput-boolean v8, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinMoveFlag:Z

    .line 69
    iput-boolean v8, p0, Lcom/vivo/common/AbcThumbsSelect;->addFlag:Z

    .line 70
    iput-boolean v10, p0, Lcom/vivo/common/AbcThumbsSelect;->showPopupWin:Z

    .line 71
    iput-boolean v8, p0, Lcom/vivo/common/AbcThumbsSelect;->hasSearchSelect:Z

    .line 72
    iput-boolean v8, p0, Lcom/vivo/common/AbcThumbsSelect;->hasStarredSelect:Z

    .line 94
    invoke-virtual {p0, v10}, Lcom/vivo/common/AbcThumbsSelect;->setOrientation(I)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/common/AbcThumbsSelect;->setMinimumWidth(I)V

    .line 96
    new-instance v1, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;-><init>(Lcom/vivo/common/AbcThumbsSelect;Lcom/vivo/common/AbcThumbsSelect$1;)V

    invoke-virtual {p0, v1}, Lcom/vivo/common/AbcThumbsSelect;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/vivo/common/AbcThumbsSelect;->setGravity(I)V

    .line 99
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/vivo/internal/R$styleable;->AbcThumbSelect:[I

    const v4, 0x301001e

    const v5, 0x30f0113

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "abcThumbType":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mAbcThumbBg:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinBg:Landroid/graphics/drawable/Drawable;

    .line 104
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/high16 v2, 0x42480000    # 50.0f

    iget v3, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 107
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/high16 v2, 0x42480000    # 50.0f

    iget v3, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 108
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const v2, -0xe7e7e7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v9, v2, v9, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 112
    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    .line 115
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 116
    const/16 v1, 0x50

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    .line 144
    :goto_0
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_4

    .line 145
    const/16 v1, 0xc

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    .line 146
    const/16 v1, 0x1b

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextWidth:I

    .line 172
    :goto_1
    invoke-direct {p0}, Lcom/vivo/common/AbcThumbsSelect;->createPopupWindow()V

    .line 173
    invoke-direct {p0}, Lcom/vivo/common/AbcThumbsSelect;->initLayout()V

    .line 174
    return-void

    .line 117
    :cond_0
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_1

    .line 118
    const/16 v1, 0x53

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinWidth:I

    .line 119
    const/16 v1, 0x53

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I

    .line 120
    iput v9, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    .line 121
    const/16 v1, 0x64

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    .line 122
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 123
    :cond_1
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_2

    .line 124
    const/16 v1, 0x7a

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinWidth:I

    .line 125
    const/16 v1, 0x7a

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I

    .line 126
    iput v9, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    .line 127
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    .line 128
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextColor:I

    .line 129
    const/16 v1, 0x96

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    .line 130
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 131
    :cond_2
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_3

    .line 132
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    .line 133
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextColor:I

    .line 134
    const/16 v1, 0x12c

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    .line 135
    const/16 v1, 0xb9

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinWidth:I

    .line 136
    const/16 v1, 0xb9

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I

    .line 137
    iput v9, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    .line 138
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 141
    :cond_3
    const/16 v1, 0x78

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    goto :goto_0

    .line 147
    :cond_4
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_5

    .line 148
    const/16 v1, 0x15

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    .line 149
    const/16 v1, 0x1b

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextWidth:I

    goto :goto_1

    .line 150
    :cond_5
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_6

    .line 151
    const/16 v1, 0x1a

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    .line 152
    const/16 v1, 0x22

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextWidth:I

    goto/16 :goto_1

    .line 153
    :cond_6
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_7

    .line 154
    const/16 v1, 0x23

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    .line 155
    iput v7, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextWidth:I

    .line 156
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    goto/16 :goto_1

    .line 157
    :cond_7
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_8

    .line 158
    const/16 v1, 0x32

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    .line 159
    iput v7, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextWidth:I

    .line 160
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    goto/16 :goto_1

    .line 161
    :cond_8
    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v2, 0x280

    if-ne v1, v2, :cond_9

    .line 162
    const/16 v1, 0x42

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    .line 163
    iput v7, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextWidth:I

    .line 164
    iput v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    .line 165
    const/16 v1, 0x46

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinWidth:I

    .line 166
    const/16 v1, 0x190

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    goto/16 :goto_1

    .line 168
    :cond_9
    const/16 v1, 0x23

    iput v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    .line 169
    iput v7, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextWidth:I

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/vivo/common/AbcThumbsSelect;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mAbcThumbBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/common/AbcThumbsSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/vivo/common/AbcThumbsSelect;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    return v0
.end method

.method static synthetic access$1200(Lcom/vivo/common/AbcThumbsSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/common/AbcThumbsSelect;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mTouchListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vivo/common/AbcThumbsSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    return v0
.end method

.method static synthetic access$1600(Lcom/vivo/common/AbcThumbsSelect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vivo/common/AbcThumbsSelect;->setSelectTextViewTextColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/common/AbcThumbsSelect;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vivo/common/AbcThumbsSelect;->updateAbcBackground(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/vivo/common/AbcThumbsSelect;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinStartY:I

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/common/AbcThumbsSelect;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;
    .param p1, "x1"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vivo/common/AbcThumbsSelect;->findAbcTabChild(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/AbcThumbsSelect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vivo/common/AbcThumbsSelect;->showPopupWin:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/common/AbcThumbsSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    return v0
.end method

.method static synthetic access$900(Lcom/vivo/common/AbcThumbsSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/AbcThumbsSelect;

    .prologue
    .line 27
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I

    return v0
.end method

.method private createBackground()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 531
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 534
    .local v0, "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 535
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 536
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 537
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 538
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 539
    return-object v0

    .line 531
    :array_0
    .array-data 4
        -0xf2f2f30
        -0xf050506
        -0xf050506
    .end array-data
.end method

.method private createPopupWindow()V
    .locals 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    iget v2, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;

    .line 278
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void
.end method

.method private findAbcTabChild(F)Ljava/lang/String;
    .locals 7
    .param p1, "yy"    # F

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, "i":I
    float-to-int v5, p1

    .line 380
    .local v5, "y":I
    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getChildCount()I

    move-result v1

    .line 382
    .local v1, "count":I
    iget-object v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 383
    iget-object v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget-object v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 385
    iget-object v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    :goto_0
    return-object v6

    .line 389
    :cond_0
    iget v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    invoke-direct {p0, v6}, Lcom/vivo/common/AbcThumbsSelect;->setSelectTextViewTextColor(I)V

    .line 390
    if-lez v1, :cond_4

    .line 391
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/vivo/common/AbcThumbsSelect;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 392
    .local v4, "view":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 393
    invoke-direct {p0, v4}, Lcom/vivo/common/AbcThumbsSelect;->setSelectTextView(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 396
    :cond_1
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/vivo/common/AbcThumbsSelect;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "view":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 398
    .restart local v4    # "view":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 399
    invoke-direct {p0, v4}, Lcom/vivo/common/AbcThumbsSelect;->setSelectTextView(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 402
    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 403
    invoke-virtual {p0, v2}, Lcom/vivo/common/AbcThumbsSelect;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "view":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 404
    .restart local v4    # "view":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v3

    .line 405
    .local v3, "top":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    .line 407
    .local v0, "bottom":I
    if-lt v5, v3, :cond_3

    if-gt v5, v0, :cond_3

    .line 408
    invoke-direct {p0, v4}, Lcom/vivo/common/AbcThumbsSelect;->setSelectTextView(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 402
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    .end local v0    # "bottom":I
    .end local v3    # "top":I
    .end local v4    # "view":Landroid/widget/TextView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getFontHeight(F)I
    .locals 4
    .param p1, "fontSize"    # F

    .prologue
    .line 282
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 283
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 284
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 285
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    return v2
.end method

.method private initLayout()V
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 334
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    .local v1, "p":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mStartIndex:I

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_STRING:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 339
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 340
    .local v2, "text":Landroid/widget/TextView;
    const/4 v3, 0x1

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 341
    iget v3, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    iget-object v3, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_STRING:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 344
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 345
    invoke-virtual {p0, v2, v1}, Lcom/vivo/common/AbcThumbsSelect;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setSelectTextView(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    .line 364
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextColor:I

    invoke-direct {p0, v0}, Lcom/vivo/common/AbcThumbsSelect;->setSelectTextViewTextColor(I)V

    .line 365
    iget-boolean v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinMoveFlag:Z

    if-eqz v0, :cond_0

    .line 366
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinStartY:I

    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I

    .line 368
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I

    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinStartY:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 369
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinStartY:I

    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I

    .line 372
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setSelectTextViewTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 353
    iget-boolean v0, p0, Lcom/vivo/common/AbcThumbsSelect;->hasSearchSelect:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_STRING:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateAbcBackground(Z)V
    .locals 3
    .param p1, "touch"    # Z

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 322
    invoke-virtual {p0, v0}, Lcom/vivo/common/AbcThumbsSelect;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 323
    .local v1, "view":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 321
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "view":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private updateLayout(I)V
    .locals 10
    .param p1, "height"    # I

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 290
    iget-boolean v6, p0, Lcom/vivo/common/AbcThumbsSelect;->hasSearchSelect:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getChildCount()I

    move-result v6

    iget-object v7, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_STRING:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 291
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v4, "p":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 295
    .local v5, "text":Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/vivo/common/AbcThumbsSelect;->hasStarredSelect:Z

    if-eqz v6, :cond_1

    .line 296
    const v6, 0x3020039

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 300
    :goto_0
    const/4 v6, 0x1

    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 301
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget-object v6, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_STRING:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 304
    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 305
    invoke-virtual {p0, v5, v8, v4}, Lcom/vivo/common/AbcThumbsSelect;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .end local v4    # "p":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "text":Landroid/widget/TextView;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getChildCount()I

    move-result v2

    .line 310
    .local v2, "count":I
    const/4 v1, 0x0

    .line 311
    .local v1, "abcWidth":I
    const/4 v0, 0x0

    .line 312
    .local v0, "abcHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 313
    invoke-virtual {p0, v3}, Lcom/vivo/common/AbcThumbsSelect;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 314
    .restart local v5    # "text":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextWidth:I

    iget v7, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    .restart local v4    # "p":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v5, v4}, Lcom/vivo/common/AbcThumbsSelect;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 298
    .end local v0    # "abcHeight":I
    .end local v1    # "abcWidth":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    const v6, 0x3020038

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 306
    .end local v4    # "p":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "text":Landroid/widget/TextView;
    :cond_2
    iget-boolean v6, p0, Lcom/vivo/common/AbcThumbsSelect;->hasSearchSelect:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getChildCount()I

    move-result v6

    iget-object v7, p0, Lcom/vivo/common/AbcThumbsSelect;->ABC_STRING:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_0

    .line 307
    invoke-virtual {p0, v8}, Lcom/vivo/common/AbcThumbsSelect;->removeViewAt(I)V

    goto :goto_1

    .line 317
    .restart local v0    # "abcHeight":I
    .restart local v1    # "abcWidth":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getHasSearchSelect()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/vivo/common/AbcThumbsSelect;->hasSearchSelect:Z

    return v0
.end method

.method public getHasStarredSelect()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/vivo/common/AbcThumbsSelect;->hasStarredSelect:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->location:[I

    invoke-virtual {p0, v0}, Lcom/vivo/common/AbcThumbsSelect;->getLocationOnScreen([I)V

    .line 189
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->location:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I

    .line 190
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mDensityDpi:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_0

    .line 191
    const/16 v0, 0x190

    iput v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I

    .line 193
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 194
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 179
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getPaddingBottom()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getPaddingTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 180
    .local v1, "viewHeight":I
    if-lez v1, :cond_0

    .line 181
    invoke-direct {p0, v1}, Lcom/vivo/common/AbcThumbsSelect;->updateLayout(I)V

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 184
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I

    invoke-direct {p0, v0}, Lcom/vivo/common/AbcThumbsSelect;->setSelectTextViewTextColor(I)V

    .line 268
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 271
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setFloatTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    return-void
.end method

.method public setFloatTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 455
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 456
    return-void
.end method

.method public setHasSelectSearch(Z)V
    .locals 1
    .param p1, "has"    # Z

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/vivo/common/AbcThumbsSelect;->hasSearchSelect:Z

    .line 500
    if-eqz p1, :cond_0

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mStartIndex:I

    .line 503
    :cond_0
    return-void
.end method

.method public setHasSelectSearch(ZZ)V
    .locals 1
    .param p1, "has"    # Z
    .param p2, "star"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/vivo/common/AbcThumbsSelect;->hasSearchSelect:Z

    .line 509
    iput-boolean p2, p0, Lcom/vivo/common/AbcThumbsSelect;->hasStarredSelect:Z

    .line 510
    if-eqz p1, :cond_0

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mStartIndex:I

    .line 513
    :cond_0
    return-void
.end method

.method public setPopWinBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 425
    if-eqz p1, :cond_0

    .line 426
    iput-object p1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinBg:Landroid/graphics/drawable/Drawable;

    .line 427
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    :cond_0
    return-void
.end method

.method public setPopWinLayout(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 435
    iget-object v0, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 436
    return-void
.end method

.method public setPopWinLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I

    .line 442
    iput p2, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I

    .line 443
    return-void
.end method

.method public setPopWinMoveWithSelectText(Z)V
    .locals 0
    .param p1, "move"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/vivo/common/AbcThumbsSelect;->mPopupWinMoveFlag:Z

    .line 450
    return-void
.end method

.method public setPopWinShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/vivo/common/AbcThumbsSelect;->showPopupWin:Z

    .line 518
    return-void
.end method

.method public setSelectThumbTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/vivo/common/AbcThumbsSelect;->mSelectTextColor:I

    .line 468
    return-void
.end method

.method public setThumbsTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 475
    invoke-virtual {p0, v0}, Lcom/vivo/common/AbcThumbsSelect;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 476
    .local v1, "view":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "view":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setThumbsTextHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 492
    iput p1, p0, Lcom/vivo/common/AbcThumbsSelect;->mThumbsTextHeight:I

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/common/AbcThumbsSelect;->updateLayout(I)V

    .line 494
    return-void
.end method

.method public setThumbsTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/common/AbcThumbsSelect;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 484
    invoke-virtual {p0, v0}, Lcom/vivo/common/AbcThumbsSelect;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 485
    .local v1, "view":Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "view":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setThumbsTouchListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/vivo/common/AbcThumbsSelect;->mTouchListener:Landroid/view/View$OnClickListener;

    .line 420
    return-void
.end method
