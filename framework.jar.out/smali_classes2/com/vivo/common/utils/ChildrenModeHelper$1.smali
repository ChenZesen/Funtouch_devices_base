.class Lcom/vivo/common/utils/ChildrenModeHelper$1;
.super Landroid/database/ContentObserver;
.source "ChildrenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/utils/ChildrenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/utils/ChildrenModeHelper;


# direct methods
.method constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$1;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 142
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$1;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$1;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$000(Lcom/vivo/common/utils/ChildrenModeHelper;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/vivo/common/utils/ChildrenModeHelper;->checkChildrenMode(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$100(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V

    .line 143
    return-void
.end method
