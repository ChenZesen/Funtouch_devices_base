.class final Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;
.super Landroid/database/ContentObserver;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataBaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    .line 375
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 376
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$100(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$000(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 380
    return-void
.end method

.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 384
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 385
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db onchange selfChange:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;
    invoke-static {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$300(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    move-result-object v0

    const/16 v1, 0x66

    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$000(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/net/Uri;

    move-result-object v3

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->QUERY_SELECTION_ARGS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$200()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method
