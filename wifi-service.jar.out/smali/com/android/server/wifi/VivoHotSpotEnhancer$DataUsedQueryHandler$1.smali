.class Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler$1;
.super Ljava/lang/Object;
.source "VivoHotSpotEnhancer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler$1;->this$1:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler$1;->this$1:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    iget-object v0, v0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler$1;->this$1:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    iget-object v1, v1, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->showAlertDialog(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2900(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/content/Context;)V

    .line 890
    return-void
.end method
