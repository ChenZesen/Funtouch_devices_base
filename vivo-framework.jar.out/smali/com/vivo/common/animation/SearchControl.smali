.class public Lcom/vivo/common/animation/SearchControl;
.super Ljava/lang/Object;
.source "SearchControl.java"

# interfaces
.implements Lcom/vivo/common/animation/SearchView$SearchViewListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/animation/SearchControl$AnimationListener;
    }
.end annotation


# static fields
.field public static final IN_CONTENTVIEW:I = 0x1

.field public static final OUT_OF_CONTENTVIEW:I = 0x0

.field public static final SEARCH_STATE_NORMAOL:I = 0x1000

.field public static final SEARCH_STATE_SEARCH:I = 0x1001

.field public static final SEARCH_STATE_SWITCHING_NORMAOL:I = 0x1002

.field public static final SEARCH_STATE_SWITCHING_SEARCH:I = 0x1003

.field private static final SYSTEM_BGK_COLOR:I = -0xb0b0c

.field private static final TAG:Ljava/lang/String; = "SearchControl"


# instance fields
.field private SHADOW_ALPHA:I

.field private mAlphaChnageViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

.field private mContext:Landroid/content/Context;

.field private mMovingContainer:Landroid/view/View;

.field private mSearchBarType:I

.field private mSearchList:Landroid/widget/ListView;

.field private mSearchState:I

.field private mSearchView:Lcom/vivo/common/animation/SearchView;

.field private mShaowTitleView:Landroid/view/View;

.field private mTitleHeight:I

.field private mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAlphaChnageViewList:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchBarType:I

    .line 29
    const/16 v0, 0x1000

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchState:I

    .line 44
    const/16 v0, 0x23

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->SHADOW_ALPHA:I

    .line 51
    iput-object p1, p0, Lcom/vivo/common/animation/SearchControl;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "SearchControl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method private changeAlphaView(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 223
    iget-object v2, p0, Lcom/vivo/common/animation/SearchControl;->mAlphaChnageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 224
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 226
    iget-object v2, p0, Lcom/vivo/common/animation/SearchControl;->mAlphaChnageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method private hidenAlphaView()V
    .locals 4

    .prologue
    .line 232
    iget-object v2, p0, Lcom/vivo/common/animation/SearchControl;->mAlphaChnageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 233
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/vivo/common/animation/SearchControl;->mAlphaChnageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method private requestLayout()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mTitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 145
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView;->requestLayout()V

    .line 146
    return-void
.end method

.method private showAlphaView()V
    .locals 4

    .prologue
    .line 241
    iget-object v2, p0, Lcom/vivo/common/animation/SearchControl;->mAlphaChnageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 242
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/vivo/common/animation/SearchControl;->mAlphaChnageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method public addAlphaChageView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAlphaChnageViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public getSearchState()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchState:I

    return v0
.end method

.method public onSearchTextChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "onSearchTextChanged"

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchControl;->Log(Ljava/lang/String;)V

    .line 102
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    iget v1, p0, Lcom/vivo/common/animation/SearchControl;->SHADOW_ALPHA:I

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 105
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView;->getSearchResoultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView;->getSearchResoultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v1}, Lcom/vivo/common/animation/SearchView;->getSearchResoultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSwitchToNormalStateEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 185
    const-string v0, "onSwitchToNormalStateEnd"

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchControl;->Log(Ljava/lang/String;)V

    .line 187
    iget v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchBarType:I

    if-ne v0, v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    iget-object v0, v0, Lcom/vivo/common/animation/SearchView;->mIScrollLock:Lcom/vivo/common/animation/SearchView$IScrollLock;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    iget-object v0, v0, Lcom/vivo/common/animation/SearchView;->mIScrollLock:Lcom/vivo/common/animation/SearchView$IScrollLock;

    invoke-interface {v0}, Lcom/vivo/common/animation/SearchView$IScrollLock;->unLockScroll()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mTitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 194
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchControl;->requestLayout()V

    .line 195
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mMovingContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 196
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mShaowTitleView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    invoke-interface {v0, v2}, Lcom/vivo/common/animation/SearchControl$AnimationListener;->onAnimationEnd(Z)V

    .line 202
    :cond_1
    const/16 v0, 0x1000

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchState:I

    .line 203
    return-void
.end method

.method public onSwitchToNormalStateStart()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "onSwitchToNormalStateStart"

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchControl;->Log(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchControl;->showAlphaView()V

    .line 176
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vivo/common/animation/SearchControl$AnimationListener;->onAnimationStart(Z)V

    .line 179
    :cond_0
    const/16 v0, 0x1002

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchState:I

    .line 180
    return-void
.end method

.method public onSwitchToSearchStateEnd()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "onSwitchToSearchStateEnd"

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchControl;->Log(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchControl;->hidenAlphaView()V

    .line 154
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/common/animation/SearchControl$AnimationListener;->onAnimationEnd(Z)V

    .line 157
    :cond_0
    const/16 v0, 0x1001

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchState:I

    .line 158
    return-void
.end method

.method public onSwitchToSearchStateStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v0, "onSwitchToSearchStateStart"

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchControl;->Log(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 119
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 121
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mTitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mTitleHeight:I

    .line 125
    iget v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchBarType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    iget-object v0, v0, Lcom/vivo/common/animation/SearchView;->mIScrollLock:Lcom/vivo/common/animation/SearchView$IScrollLock;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    iget-object v0, v0, Lcom/vivo/common/animation/SearchView;->mIScrollLock:Lcom/vivo/common/animation/SearchView$IScrollLock;

    invoke-interface {v0}, Lcom/vivo/common/animation/SearchView$IScrollLock;->lockScroll()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v1}, Lcom/vivo/common/animation/SearchView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 131
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mTitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/vivo/common/animation/SearchControl;->mTitleHeight:I

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 133
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mShaowTitleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-direct {p0}, Lcom/vivo/common/animation/SearchControl;->requestLayout()V

    .line 136
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    invoke-interface {v0, v2}, Lcom/vivo/common/animation/SearchControl$AnimationListener;->onAnimationStart(Z)V

    .line 139
    :cond_1
    const/16 v0, 0x1003

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchState:I

    .line 140
    return-void
.end method

.method public onSwitchingToNormal(F)V
    .locals 4
    .param p1, "p"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 208
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mMovingContainer:Landroid/view/View;

    iget v1, p0, Lcom/vivo/common/animation/SearchControl;->mTitleHeight:I

    int-to-float v1, v1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 209
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mShaowTitleView:Landroid/view/View;

    iget v1, p0, Lcom/vivo/common/animation/SearchControl;->mTitleHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 210
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 211
    sub-float v0, v3, p1

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchControl;->changeAlphaView(F)V

    .line 212
    return-void
.end method

.method public onSwitchingToSearch(F)V
    .locals 4
    .param p1, "p"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 163
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mMovingContainer:Landroid/view/View;

    iget v1, p0, Lcom/vivo/common/animation/SearchControl;->mTitleHeight:I

    int-to-float v1, v1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 164
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    iget v1, p0, Lcom/vivo/common/animation/SearchControl;->SHADOW_ALPHA:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 165
    sub-float v0, v3, p1

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/SearchControl;->changeAlphaView(F)V

    .line 167
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mShaowTitleView:Landroid/view/View;

    iget v1, p0, Lcom/vivo/common/animation/SearchControl;->mTitleHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 168
    return-void
.end method

.method public setAnimationListener(Lcom/vivo/common/animation/SearchControl$AnimationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vivo/common/animation/SearchControl$AnimationListener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/vivo/common/animation/SearchControl;->mAnimationListener:Lcom/vivo/common/animation/SearchControl$AnimationListener;

    .line 298
    return-void
.end method

.method public setFakeTitleView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/vivo/common/animation/SearchControl;->mShaowTitleView:Landroid/view/View;

    .line 258
    return-void
.end method

.method public setMovingContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/vivo/common/animation/SearchControl;->mMovingContainer:Landroid/view/View;

    .line 218
    return-void
.end method

.method public setSearchBarType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchBarType:I

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchBarType:I

    goto :goto_0
.end method

.method public setSearchList(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "searchList"    # Landroid/widget/ListView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vivo/common/animation/SearchControl;->mSearchList:Landroid/widget/ListView;

    .line 63
    instance-of v0, p1, Lcom/vivo/common/animation/LKListView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 65
    check-cast v0, Lcom/vivo/common/animation/LKListView;

    invoke-virtual {v0, p0}, Lcom/vivo/common/animation/LKListView;->setSearchControl(Lcom/vivo/common/animation/SearchControl;)V

    .line 66
    check-cast p1, Lcom/vivo/common/animation/LKListView;

    .end local p1    # "searchList":Landroid/widget/ListView;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vivo/common/animation/LKListView;->setClickWillBack(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method setSearchView(Lcom/vivo/common/animation/SearchView;)V
    .locals 1
    .param p1, "searchView"    # Lcom/vivo/common/animation/SearchView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    .line 94
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v0, p0}, Lcom/vivo/common/animation/SearchView;->setAnimatorProgressListener(Lcom/vivo/common/animation/SearchView$SearchViewListener;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setShadowAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/vivo/common/animation/SearchControl;->SHADOW_ALPHA:I

    .line 252
    return-void
.end method

.method public setSwitchWithAnimate(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/SearchView;->setSwitchWithAnimate(Z)V

    .line 292
    :cond_0
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vivo/common/animation/SearchControl;->mTitleView:Landroid/view/View;

    .line 83
    return-void
.end method

.method public switchToNormal()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/vivo/common/animation/SearchControl;->mSearchView:Lcom/vivo/common/animation/SearchView;

    invoke-virtual {v0}, Lcom/vivo/common/animation/SearchView;->hidenSearch()V

    .line 279
    :cond_0
    return-void
.end method

.method switchToNormalDirectlyEnd()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchControl;->onSwitchToNormalStateStart()V

    .line 263
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/vivo/common/animation/SearchControl;->onSwitchingToNormal(F)V

    .line 264
    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchControl;->onSwitchToNormalStateEnd()V

    .line 265
    return-void
.end method

.method switchToSearchModleDirectlyEnd()V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchControl;->onSwitchToSearchStateStart()V

    .line 270
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/vivo/common/animation/SearchControl;->onSwitchingToSearch(F)V

    .line 271
    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchControl;->onSwitchToSearchStateEnd()V

    .line 272
    return-void
.end method
