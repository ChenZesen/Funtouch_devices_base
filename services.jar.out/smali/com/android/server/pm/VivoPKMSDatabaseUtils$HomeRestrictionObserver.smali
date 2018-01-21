.class Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;
.super Landroid/database/ContentObserver;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeRestrictionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    .line 1711
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1712
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$100(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "desktop_usage_rights_enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1718
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$600(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->updatemLockSystemHomeState(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$700(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/content/Context;)V

    .line 1719
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$600(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->updatemLockSystemHomeState(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$700(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/content/Context;)V

    .line 1724
    return-void
.end method
