.class Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;
.super Landroid/database/ContentObserver;
.source "ChildrenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/utils/ChildrenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildrenModeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/utils/ChildrenModeHelper;


# direct methods
.method public constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    .line 686
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 687
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 691
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 692
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$000(Lcom/vivo/common/utils/ChildrenModeHelper;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteList(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$600(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V

    .line 693
    return-void
.end method
