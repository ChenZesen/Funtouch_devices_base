.class Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver$1;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->checkChildrenMode()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method
