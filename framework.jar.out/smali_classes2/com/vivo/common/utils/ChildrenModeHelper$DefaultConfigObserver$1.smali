.class Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver$1;
.super Ljava/lang/Object;
.source "ChildrenModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;


# direct methods
.method constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver$1;->this$1:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver$1;->this$1:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

    iget-object v0, v0, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver$1;->this$1:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

    iget-object v1, v1, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$000(Lcom/vivo/common/utils/ChildrenModeHelper;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/vivo/common/utils/ChildrenModeHelper;->loadDefaultConfigList(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$200(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V

    .line 672
    return-void
.end method
