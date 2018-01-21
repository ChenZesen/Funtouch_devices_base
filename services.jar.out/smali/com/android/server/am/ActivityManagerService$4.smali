.class Lcom/android/server/am/ActivityManagerService$4;
.super Ljava/util/ArrayList;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1504
    const-string v0, "com.igexin.sdk.PushService"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$4;->add(Ljava/lang/Object;)Z

    .line 1505
    const-string v0, "com.baidu.sapi2.share.ShareService"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$4;->add(Ljava/lang/Object;)Z

    .line 1506
    const-string v0, "com.youku.pushsdk.service.PushService"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$4;->add(Ljava/lang/Object;)Z

    .line 1507
    const-string v0, "com.taobao.accs.ChannelService"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$4;->add(Ljava/lang/Object;)Z

    .line 1508
    const-string v0, "com.baidu.hello.MoPlusService"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$4;->add(Ljava/lang/Object;)Z

    .line 1509
    return-void
.end method
