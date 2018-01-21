.class Lcom/vivo/common/LinearView$LinearViewItemInfo;
.super Ljava/lang/Object;
.source "LinearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/LinearView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearViewItemInfo"
.end annotation


# instance fields
.field isReduce:Z

.field isText:Z

.field textSize:F

.field final synthetic this$0:Lcom/vivo/common/LinearView;

.field view:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/vivo/common/LinearView;Landroid/widget/Button;ZZF)V
    .locals 0
    .param p2, "v"    # Landroid/widget/Button;
    .param p3, "t"    # Z
    .param p4, "r"    # Z
    .param p5, "s"    # F

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->this$0:Lcom/vivo/common/LinearView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->view:Landroid/widget/Button;

    .line 76
    iput-boolean p3, p0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->isText:Z

    .line 77
    iput-boolean p4, p0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->isReduce:Z

    .line 78
    iput p5, p0, Lcom/vivo/common/LinearView$LinearViewItemInfo;->textSize:F

    .line 79
    return-void
.end method
