.class Lcom/android/internal/telephony/RIL$4;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$4;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1127
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1133
    :goto_0
    return-void

    .line 1129
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$4;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/RIL;->mIccReportsFlag:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RIL;->access$2102(Lcom/android/internal/telephony/RIL;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1130
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$4;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v2, "auto_pin, SUPPLY_PIN_COMPLETE"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RIL;->access$1700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto :goto_0

    .line 1127
    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method
