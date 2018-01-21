.class Lcom/vivo/common/widget/VivoListView$1;
.super Ljava/lang/Object;
.source "VivoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/VivoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/VivoListView;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/VivoListView;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vivo/common/widget/VivoListView$1;->this$0:Lcom/vivo/common/widget/VivoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$1;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$000(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/vivo/common/widget/VivoListView$1;->this$0:Lcom/vivo/common/widget/VivoListView;

    # getter for: Lcom/vivo/common/widget/VivoListView;->mSearchEditTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/vivo/common/widget/VivoListView;->access$000(Lcom/vivo/common/widget/VivoListView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    return-void
.end method
