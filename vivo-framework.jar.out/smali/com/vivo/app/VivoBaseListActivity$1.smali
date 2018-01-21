.class Lcom/vivo/app/VivoBaseListActivity$1;
.super Ljava/lang/Object;
.source "VivoBaseListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/app/VivoBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/app/VivoBaseListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/app/VivoBaseListActivity;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/vivo/app/VivoBaseListActivity$1;->this$0:Lcom/vivo/app/VivoBaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity$1;->this$0:Lcom/vivo/app/VivoBaseListActivity;

    # getter for: Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/vivo/app/VivoBaseListActivity;->access$000(Lcom/vivo/app/VivoBaseListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/app/VivoBaseListActivity$1;->this$0:Lcom/vivo/app/VivoBaseListActivity;

    # getter for: Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/vivo/app/VivoBaseListActivity;->access$000(Lcom/vivo/app/VivoBaseListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 30
    return-void
.end method
