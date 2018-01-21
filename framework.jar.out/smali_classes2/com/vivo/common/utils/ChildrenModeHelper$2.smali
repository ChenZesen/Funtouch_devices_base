.class Lcom/vivo/common/utils/ChildrenModeHelper$2;
.super Ljava/lang/Object;
.source "ChildrenModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/utils/ChildrenModeHelper;->loadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$2;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iput-object p2, p0, Lcom/vivo/common/utils/ChildrenModeHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$2;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/vivo/common/utils/ChildrenModeHelper;->loadDefaultConfigList(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$200(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V

    .line 198
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$2;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteListFromFile(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$300(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V

    .line 199
    return-void
.end method
