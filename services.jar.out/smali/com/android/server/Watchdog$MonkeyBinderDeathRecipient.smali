.class Lcom/android/server/Watchdog$MonkeyBinderDeathRecipient;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonkeyBinderDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 2

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/Watchdog$MonkeyBinderDeathRecipient;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const-string v0, "Watchdog"

    const-string v1, " MonkeyBinderDeathRecipient  init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 432
    const-string v0, "Watchdog"

    const-string v1, "monkey binder died!  set to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/server/Watchdog$MonkeyBinderDeathRecipient;->this$0:Lcom/android/server/Watchdog;

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "vivo_monkey_test"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    return-void
.end method
