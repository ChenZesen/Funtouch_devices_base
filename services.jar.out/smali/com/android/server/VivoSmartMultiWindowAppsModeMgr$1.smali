.class Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowAppsModeMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->saveAppCurrentMode(Landroid/content/Context;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$str_instid:Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->this$0:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

    iput-object p2, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$str_instid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 174
    iget-object v7, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$context:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v7, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    sget-boolean v7, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v7, :cond_2

    .line 183
    iget-object v7, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$values:Landroid/content/ContentValues;

    const-string v8, "pkg"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$values:Landroid/content/ContentValues;

    const-string v8, "full_mode"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 185
    .local v3, "fullmode":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$values:Landroid/content/ContentValues;

    const-string v8, "current_mode"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 186
    .local v1, "currentmode":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$values:Landroid/content/ContentValues;

    const-string v8, "instance_id"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 187
    .local v4, "instid":Ljava/lang/Integer;
    const-string v7, "vivo_debug_VivoSmartMultiWindowAppsModeMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppCurrentMode packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", currentmode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", str_instid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$str_instid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", instid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v1    # "currentmode":Ljava/lang/Integer;
    .end local v3    # "fullmode":Ljava/lang/Integer;
    .end local v4    # "instid":Ljava/lang/Integer;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->CONTENT_APPSMODES_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$values:Landroid/content/ContentValues;

    const-string v9, "pkg=? AND instance_id=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$packageName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$str_instid:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 191
    .local v5, "num":I
    if-gtz v5, :cond_0

    .line 192
    sget-object v7, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->CONTENT_APPSMODES_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 194
    .end local v5    # "num":I
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
