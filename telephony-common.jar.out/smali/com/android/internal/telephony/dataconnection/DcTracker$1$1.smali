.class Lcom/android/internal/telephony/dataconnection/DcTracker$1$1;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$1;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$1;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkChildrenModeDataEnable()V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method
