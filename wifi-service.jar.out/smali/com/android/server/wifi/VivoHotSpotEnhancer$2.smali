.class Lcom/android/server/wifi/VivoHotSpotEnhancer$2;
.super Landroid/database/ContentObserver;
.source "VivoHotSpotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$2;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$2;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$2;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "statusbar_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->statusBarStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$302(Lcom/android/server/wifi/VivoHotSpotEnhancer;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$2;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->statusBarStatus:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$300(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$2;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$2;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    goto :goto_0
.end method
