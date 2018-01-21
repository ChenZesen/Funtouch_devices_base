.class Lcom/vivo/services/motion/GestureService$GestureServiceHandler;
.super Landroid/os/Handler;
.source "GestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/GestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/GestureService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/GestureService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vivo/services/motion/GestureService$GestureServiceHandler;->this$0:Lcom/vivo/services/motion/GestureService;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 144
    .local v1, "smsg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 146
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x54

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 175
    .local v0, "IntegerGestureType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    # getter for: Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$500()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    # getter for: Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    :cond_0
    const-string v2, "GestureService"

    const-string v3, "GESTURE_TYPE_ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 149
    .end local v0    # "IntegerGestureType":Ljava/lang/Integer;
    :pswitch_0
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x51

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 150
    .restart local v0    # "IntegerGestureType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    # getter for: Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$500()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 152
    # getter for: Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :cond_1
    const-string v2, "GestureService"

    const-string v3, "GESTIRE_TYPE_M"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    .end local v0    # "IntegerGestureType":Ljava/lang/Integer;
    :pswitch_1
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x52

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 158
    .restart local v0    # "IntegerGestureType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    # getter for: Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$500()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 160
    # getter for: Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    :cond_2
    const-string v2, "GestureService"

    const-string v3, "GESTIRE_TYPE_S"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v0    # "IntegerGestureType":Ljava/lang/Integer;
    :pswitch_2
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x53

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 166
    .restart local v0    # "IntegerGestureType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    # getter for: Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$500()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 168
    # getter for: Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    :cond_3
    const-string v2, "GestureService"

    const-string v3, "GESTIRE_TYPE_V"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
