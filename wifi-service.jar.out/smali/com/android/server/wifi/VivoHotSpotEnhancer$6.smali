.class Lcom/android/server/wifi/VivoHotSpotEnhancer$6;
.super Ljava/lang/Object;
.source "VivoHotSpotEnhancer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;->showAlertDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isDialogClicked:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 719
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$002(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J

    .line 720
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->enableNat()Z
    invoke-static {v0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4300(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    .line 721
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->setDateSpeedLimit(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3000(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)V

    .line 722
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v0, v0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v1, v1, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 723
    return-void
.end method
