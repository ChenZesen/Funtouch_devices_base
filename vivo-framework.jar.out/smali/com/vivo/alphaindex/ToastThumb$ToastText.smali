.class Lcom/vivo/alphaindex/ToastThumb$ToastText;
.super Landroid/widget/TextView;
.source "ToastThumb.java"

# interfaces
.implements Lcom/vivo/alphaindex/ToastThumb$OnToastShow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/alphaindex/ToastThumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastText"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/alphaindex/ToastThumb;


# direct methods
.method constructor <init>(Lcom/vivo/alphaindex/ToastThumb;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/vivo/alphaindex/ToastThumb$ToastText;->this$0:Lcom/vivo/alphaindex/ToastThumb;

    .line 258
    const/4 v0, 0x0

    const v1, 0x3010026

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method


# virtual methods
.method public getView(Lcom/vivo/alphaindex/ToastThumb;I)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Lcom/vivo/alphaindex/ToastThumb;
    .param p2, "pos"    # I

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/vivo/alphaindex/ToastThumb;->getHeader()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/vivo/alphaindex/ToastThumb;->getAlphabet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/vivo/alphaindex/ToastThumb;->getHeader()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/vivo/alphaindex/ToastThumb;->getAlphabet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/alphaindex/ToastThumb;->getHeader()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/vivo/alphaindex/ToastThumb$ToastText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .end local p0    # "this":Lcom/vivo/alphaindex/ToastThumb$ToastText;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/vivo/alphaindex/ToastThumb$ToastText;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
