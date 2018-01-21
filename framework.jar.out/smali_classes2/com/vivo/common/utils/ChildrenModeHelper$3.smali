.class Lcom/vivo/common/utils/ChildrenModeHelper$3;
.super Ljava/lang/Object;
.source "ChildrenModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/utils/ChildrenModeHelper;->makeToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/utils/ChildrenModeHelper;


# direct methods
.method constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$3;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z
    invoke-static {}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "ChildrenModeHelper"

    const-string v1, "Tost show : fun disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$3;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$000(Lcom/vivo/common/utils/ChildrenModeHelper;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x30e016f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method
