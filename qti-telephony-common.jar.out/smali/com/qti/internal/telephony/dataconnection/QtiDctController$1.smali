.class Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiDctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/dataconnection/QtiDctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->access$000(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "subscription"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "subId":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->access$100(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 165
    .local v0, "phoneId":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataSubscription:I
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->access$200(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataPhoneId:I
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->access$300(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 167
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    invoke-virtual {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->onSettingsChanged()V

    .line 170
    .end local v0    # "phoneId":I
    .end local v1    # "subId":I
    :cond_0
    return-void
.end method
