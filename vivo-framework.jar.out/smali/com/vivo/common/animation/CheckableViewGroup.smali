.class public Lcom/vivo/common/animation/CheckableViewGroup;
.super Landroid/view/ViewGroup;
.source "CheckableViewGroup.java"

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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/vivo/common/animation/CheckableViewGroup;->inital(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private inital(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Lcom/vivo/common/animation/ListEditControl;

    invoke-direct {v0, p1, p0}, Lcom/vivo/common/animation/ListEditControl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/animation/CheckableViewGroup;->setWillNotDraw(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public getEditControl()Lcom/vivo/common/animation/ListEditControl;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0}, Lcom/vivo/common/animation/ListEditControl;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/ListEditControl;->draw(Landroid/graphics/Canvas;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 46
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/ListEditControl;->setChecked(Z)V

    .line 41
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0}, Lcom/vivo/common/animation/ListEditControl;->toggle()V

    .line 52
    invoke-virtual {p0}, Lcom/vivo/common/animation/CheckableViewGroup;->invalidate()V

    .line 53
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/CheckableViewGroup;->mEditControl:Lcom/vivo/common/animation/ListEditControl;

    invoke-virtual {v0, p1}, Lcom/vivo/common/animation/ListEditControl;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/vivo/common/animation/CheckableViewGroup;->invalidate()V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
