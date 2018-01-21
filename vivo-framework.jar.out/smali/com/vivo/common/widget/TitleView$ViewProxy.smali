.class public abstract Lcom/vivo/common/widget/TitleView$ViewProxy;
.super Ljava/lang/Object;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ViewProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/TitleView;


# direct methods
.method protected constructor <init>(Lcom/vivo/common/widget/TitleView;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/vivo/common/widget/TitleView$ViewProxy;->this$0:Lcom/vivo/common/widget/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentMinWidth()I
.end method

.method public abstract getContentWidth()I
.end method

.method public setOffset(II)V
    .locals 3
    .param p1, "sOff"    # I
    .param p2, "eOff"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/vivo/common/widget/TitleView$ViewProxy;->this$0:Lcom/vivo/common/widget/TitleView;

    iget-object v0, v0, Lcom/vivo/common/widget/TitleView;->mCenterView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vivo/common/widget/TitleView$ViewProxy;->this$0:Lcom/vivo/common/widget/TitleView;

    iget-object v1, v1, Lcom/vivo/common/widget/TitleView;->mCenterView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/common/widget/TitleView$ViewProxy;->this$0:Lcom/vivo/common/widget/TitleView;

    iget-object v2, v2, Lcom/vivo/common/widget/TitleView;->mCenterView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 671
    return-void
.end method
