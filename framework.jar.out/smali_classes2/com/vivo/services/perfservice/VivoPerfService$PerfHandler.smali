.class final Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;
.super Landroid/os/Handler;
.source "VivoPerfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/perfservice/VivoPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PerfHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/perfservice/VivoPerfService;


# direct methods
.method constructor <init>(Lcom/vivo/services/perfservice/VivoPerfService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    .line 142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 149
    :sswitch_0
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    invoke-virtual {v3}, Lcom/vivo/services/perfservice/VivoPerfService;->isOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "pkg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pauseTime"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    const-string v4, "1030_6"

    const-string v5, "pause"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/vivo/services/perfservice/VivoPerfService;->access$100(Lcom/vivo/services/perfservice/VivoPerfService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :sswitch_1
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    invoke-virtual {v3}, Lcom/vivo/services/perfservice/VivoPerfService;->isOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .restart local v0    # "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "systemBootTime"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    const-string v4, "1030_1"

    const-string v5, "sys-boot"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/vivo/services/perfservice/VivoPerfService;->access$100(Lcom/vivo/services/perfservice/VivoPerfService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :sswitch_2
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    # getter for: Lcom/vivo/services/perfservice/VivoPerfService;->mMCOn:Z
    invoke-static {v3}, Lcom/vivo/services/perfservice/VivoPerfService;->access$000(Lcom/vivo/services/perfservice/VivoPerfService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .restart local v0    # "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 178
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    const/4 v4, 0x2

    const-string v5, "procName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "background"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/vivo/services/perfservice/VivoPerfService;->sendMCIntent(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 183
    .end local v0    # "data":Landroid/os/Bundle;
    :sswitch_3
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    # getter for: Lcom/vivo/services/perfservice/VivoPerfService;->mMCOn:Z
    invoke-static {v3}, Lcom/vivo/services/perfservice/VivoPerfService;->access$000(Lcom/vivo/services/perfservice/VivoPerfService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 186
    .restart local v0    # "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 187
    const-string v3, "dex"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 188
    .local v1, "dex":Z
    if-eqz v1, :cond_1

    .line 189
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    const/4 v4, 0x4

    const-string v5, "procName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "background"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/vivo/services/perfservice/VivoPerfService;->sendMCIntent(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$PerfHandler;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    const/4 v4, 0x3

    const-string v5, "procName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "background"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/vivo/services/perfservice/VivoPerfService;->sendMCIntent(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
    .end sparse-switch
.end method
