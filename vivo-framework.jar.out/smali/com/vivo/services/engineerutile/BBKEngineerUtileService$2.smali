.class Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;
.super Ljava/lang/Object;
.source "BBKEngineerUtileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->sendBroadcastFromAtcid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

.field final synthetic val$_action:Ljava/lang/String;

.field final synthetic val$_extra:Ljava/lang/String;

.field final synthetic val$_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    iput-object p2, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->val$_action:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->val$_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->val$_extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 92
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->val$_action:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->val$_name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->val$_name:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "strings":[Ljava/lang/String;
    aget-object v3, v2, v7

    if-eqz v3, :cond_1

    aget-object v3, v2, v6

    if-eqz v3, :cond_1

    .line 96
    aget-object v3, v2, v6

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 99
    :cond_0
    const-string v3, "BBKEngineerUtileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    aget-object v3, v2, v7

    aget-object v4, v2, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .end local v2    # "strings":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->val$_extra:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "i":I
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->val$_extra:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "strings":[Ljava/lang/String;
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 107
    aget-object v3, v2, v0

    const-string v4, "-e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v2, v0

    const-string v4, "--es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    :cond_2
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    add-int/lit8 v4, v0, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 109
    :cond_4
    aget-object v3, v2, v0

    const-string v4, "--ez"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    add-int/lit8 v4, v0, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 111
    :cond_5
    aget-object v3, v2, v0

    const-string v4, "--ei"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    add-int/lit8 v4, v0, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 117
    .end local v0    # "i":I
    .end local v2    # "strings":[Ljava/lang/String;
    :cond_6
    const-string v3, "BBKEngineerUtileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcastFromAtcid intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->access$100(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 119
    return-void
.end method
