.class Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;
.super Landroid/os/FileObserver;
.source "ChildrenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/utils/ChildrenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultConfigObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/utils/ChildrenModeHelper;


# direct methods
.method public constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    .line 656
    const/16 v0, 0x108

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 657
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 661
    if-nez p2, :cond_0

    .line 677
    :goto_0
    return-void

    .line 664
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 667
    :sswitch_0
    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->sWorker:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$500()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver$1;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 664
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method
