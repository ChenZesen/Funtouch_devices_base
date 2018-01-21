.class Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
.super Ljava/lang/Object;
.source "VivoTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/vivotransition/VivoTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewInfo"
.end annotation


# instance fields
.field alpha:F

.field fraction:F

.field index:I

.field isOverScrollFirst:Z

.field isOverScrollLast:Z

.field final layerType:I

.field shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    .line 187
    iput-object p1, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->layerType:I

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->layerType:I

    goto :goto_0
.end method


# virtual methods
.method clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    invoke-virtual {v0}, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->clearBitmap()V

    .line 179
    iput-object v1, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    .line 181
    :cond_0
    iput-object v1, p0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    .line 182
    return-void
.end method
