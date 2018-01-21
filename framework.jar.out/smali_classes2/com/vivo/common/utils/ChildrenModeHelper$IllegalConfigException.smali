.class Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
.super Ljava/lang/RuntimeException;
.source "ChildrenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/utils/ChildrenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IllegalConfigException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/utils/ChildrenModeHelper;


# direct methods
.method public constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 701
    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;)V
    .locals 0
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    .line 704
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    .line 708
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    .line 712
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    return-void

    .line 712
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
