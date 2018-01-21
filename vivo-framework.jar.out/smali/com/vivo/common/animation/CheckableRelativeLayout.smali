.class public Lcom/vivo/common/animation/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/vivo/common/animation/IListEditControl;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mEditControl:Lcom/vivo/common/animation/ListEditControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/CheckableRelativeLayout;->inital(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/CheckableRelativeLayout;->inital(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private inital(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/animation/CheckableRelativeLayout;->setWillNotDraw(Z)V

    .line 36
    new-instance v0, Lcom/vivo/common/animation/ListEditControl;

    invoke-direct {v0, p1, p0}, Lcom/vivo/common/animation/ListEditControl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    .line 37
    return-void
.end method


# virtual methods
.method public getEditControl()Lcom/vivo/common/animation/ListEditControl;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0}, Lcom/vivo/common/animation/ListEditControl;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/ListEditControl;->draw(Landroid/graphics/Canvas;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/ListEditControl;->setChecked(Z)V

    .line 49
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0}, Lcom/vivo/common/animation/ListEditControl;->toggle()V

    .line 55
    invoke-virtual {p0}, Lcom/vivo/common/animation/CheckableRelativeLayout;->invalidate()V

    .line 56
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/CheckableRelativeLayout;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/ListEditControl;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/vivo/common/animation/CheckableRelativeLayout;->invalidate()V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
