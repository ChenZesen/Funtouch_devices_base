.class Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;
.super Lcom/android/internal/util/State;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateCmdParamsReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/RilMessageDecoder$1;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$600(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$700(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$800(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "there is exception. may because it is disposed"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateCmdParamsReady expecting CMD_PARAMS_READY=2 got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # invokes: Lcom/android/internal/telephony/cat/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$900(Lcom/android/internal/telephony/cat/RilMessageDecoder;Landroid/os/Message;)V

    goto :goto_0
.end method
