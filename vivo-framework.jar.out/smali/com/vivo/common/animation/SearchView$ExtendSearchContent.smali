.class Lcom/vivo/common/animation/SearchView$ExtendSearchContent;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/animation/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtendSearchContent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/animation/SearchView;


# direct methods
.method constructor <init>(Lcom/vivo/common/animation/SearchView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->this$0:Lcom/vivo/common/animation/SearchView;

    .line 747
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 748
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 752
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 754
    invoke-virtual {p0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mShadowRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1300(Lcom/vivo/common/animation/SearchView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 756
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1400(Lcom/vivo/common/animation/SearchView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mShadowRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/vivo/common/animation/SearchView;->access$1300(Lcom/vivo/common/animation/SearchView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 757
    iget-object v0, p0, Lcom/vivo/common/animation/SearchView$ExtendSearchContent;->this$0:Lcom/vivo/common/animation/SearchView;

    # getter for: Lcom/vivo/common/animation/SearchView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/vivo/common/animation/SearchView;->access$1400(Lcom/vivo/common/animation/SearchView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 759
    :cond_0
    return-void
.end method
