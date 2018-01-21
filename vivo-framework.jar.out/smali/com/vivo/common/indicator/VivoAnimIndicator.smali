.class public Lcom/vivo/common/indicator/VivoAnimIndicator;
.super Landroid/widget/RelativeLayout;
.source "VivoAnimIndicator.java"

# interfaces
.implements Lcom/vivo/common/indicator/PageIndicator;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoAnimIndicator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

.field private mIndicatorAnim:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    .line 24
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    .line 29
    invoke-direct {p0, p1}, Lcom/vivo/common/indicator/VivoAnimIndicator;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    .line 24
    iput-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    .line 35
    invoke-direct {p0, p1}, Lcom/vivo/common/indicator/VivoAnimIndicator;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public isIndicatorScrolling()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    const v0, 0x30d0022

    invoke-virtual {p0, v0}, Lcom/vivo/common/indicator/VivoAnimIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/indicator/VivoCountIndicator;

    iput-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    .line 40
    const v0, 0x30d0023

    invoke-virtual {p0, v0}, Lcom/vivo/common/indicator/VivoAnimIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    iget-object v1, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mIndicatorAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/vivo/common/indicator/VivoCountIndicator;->setIndicatorAnim(Landroid/widget/ImageView;)V

    .line 42
    return-void
.end method

.method public setActiveIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->setActiveIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "nomal"    # Landroid/graphics/drawable/Drawable;
    .param p2, "active"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->setNomalIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p2}, Lcom/vivo/common/indicator/VivoCountIndicator;->setActiveIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p3}, Lcom/vivo/common/indicator/VivoCountIndicator;->setIndicatorArray(I)V

    .line 67
    return-void
.end method

.method public setLevel(I)V
    .locals 1
    .param p1, "currentLevel"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->setLevel(I)V

    .line 77
    return-void
.end method

.method public setLevel(II)Z
    .locals 1
    .param p1, "totalLevel"    # I
    .param p2, "currentLevel"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/indicator/VivoCountIndicator;->setLevel(II)Z

    move-result v0

    return v0
.end method

.method public setMaxAnalogCount(I)V
    .locals 1
    .param p1, "maxAnalogCount"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->setMaxAnalogCount(I)V

    .line 51
    return-void
.end method

.method public setNomalIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->setNomalIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public setTotalLevel(I)V
    .locals 1
    .param p1, "totalLevel"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->setTotalLevel(I)V

    .line 72
    return-void
.end method

.method public showIndicatorsAnim(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1}, Lcom/vivo/common/indicator/VivoCountIndicator;->showIndicatorsAnim(Landroid/os/Handler;)V

    .line 81
    return-void
.end method

.method public updateIndicator(II)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "width"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoAnimIndicator;->mCountIndicator:Lcom/vivo/common/indicator/VivoCountIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/indicator/VivoCountIndicator;->updateIndicator(II)V

    .line 96
    return-void
.end method
