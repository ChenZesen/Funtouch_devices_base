.class Lcom/vivo/app/VivoTitleImpl$1;
.super Ljava/lang/Object;
.source "VivoTitleImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/app/VivoTitleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/app/VivoTitleImpl;


# direct methods
.method constructor <init>(Lcom/vivo/app/VivoTitleImpl;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vivo/app/VivoTitleImpl$1;->this$0:Lcom/vivo/app/VivoTitleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl$1;->this$0:Lcom/vivo/app/VivoTitleImpl;

    # getter for: Lcom/vivo/app/VivoTitleImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/vivo/app/VivoTitleImpl;->access$000(Lcom/vivo/app/VivoTitleImpl;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl$1;->this$0:Lcom/vivo/app/VivoTitleImpl;

    # getter for: Lcom/vivo/app/VivoTitleImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/vivo/app/VivoTitleImpl;->access$000(Lcom/vivo/app/VivoTitleImpl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 28
    :cond_0
    return-void
.end method
