.class public Lcom/vivo/common/widget/TitleView$IconViewInformation;
.super Ljava/lang/Object;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IconViewInformation"
.end annotation


# instance fields
.field public left:Lcom/vivo/common/widget/TitleView$IconViewInformation;

.field public leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

.field public right:Lcom/vivo/common/widget/TitleView$IconViewInformation;

.field public rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

.field public self:Landroid/view/View;

.field final synthetic this$0:Lcom/vivo/common/widget/TitleView;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/TitleView;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-object p1, p0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->this$0:Lcom/vivo/common/widget/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->self:Landroid/view/View;

    .line 75
    iput-object v0, p0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->right:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    iput-object v0, p0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->left:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 76
    iput-object v0, p0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->rightVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    iput-object v0, p0, Lcom/vivo/common/widget/TitleView$IconViewInformation;->leftVisible:Lcom/vivo/common/widget/TitleView$IconViewInformation;

    .line 77
    return-void
.end method
