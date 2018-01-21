.class public Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowAppsModeMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    }
.end annotation


# static fields
.field public static final AUTHORITY_APPSCONFIGS:Ljava/lang/String; = "com.vivo.smartmultiwindow"

.field public static final CONTENT_APPSCONFIGS_URI:Landroid/net/Uri;

.field public static final CONTENT_APPSMODES_URI:Landroid/net/Uri;

.field static final CURRENTMODE:Ljava/lang/String; = "current_mode"

.field static final DEBUG_SMARTMULTIWINDOW_ALL:Z

.field static final DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

.field static final FULLMODE:Ljava/lang/String; = "full_mode"

.field static final INSTANCE:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

.field static final INSTANCEID:Ljava/lang/String; = "instance_id"

.field static final PKGNAME:Ljava/lang/String; = "pkg"

.field static final TABLE_APPSCONFIGS:Ljava/lang/String; = "appsconfig"

.field static final TABLE_APPS_MODE:Ljava/lang/String; = "appsmode"

.field private static final TAG_APPSMODE:Ljava/lang/String; = "vivo_debug_VivoSmartMultiWindowAppsModeMgr"


# instance fields
.field private mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadApps:Z

.field private mStartLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->DEBUG_SMARTMULTIWINDOW_ALL:Z

    .line 17
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    sput-boolean v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    .line 21
    new-instance v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

    invoke-direct {v0}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;-><init>()V

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->INSTANCE:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

    .line 26
    const-string v0, "content://com.vivo.smartmultiwindow/appsconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->CONTENT_APPSCONFIGS_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://com.vivo.smartmultiwindow/appsmode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->CONTENT_APPSMODES_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mStartLoad:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->startLoadAppsModes(Landroid/content/Context;)V

    return-void
.end method

.method private getAppsModeInDatabase(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;IZ)Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    .locals 7
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "instanceid"    # I
    .param p4, "findall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;",
            ">;",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v5, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z

    if-nez v5, :cond_1

    .line 63
    :cond_0
    const/4 v3, 0x0

    .line 87
    :goto_0
    return-object v3

    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    .local v0, "dstitem":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    if-ltz p3, :cond_2

    const/4 v5, 0x1

    if-le p3, v5, :cond_8

    :cond_2
    const/4 v2, 0x0

    .line 67
    .local v2, "instid":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;

    .line 68
    .local v3, "item":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    if-eqz v3, :cond_3

    iget-object v5, v3, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->mPackageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, "res":Z
    iget-object v5, v3, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->mPackageName:Ljava/lang/String;

    const-string v6, "com.tencent.mobileqq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v3, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->mPackageName:Ljava/lang/String;

    const-string v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 74
    :cond_4
    iget-object v5, v3, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "com.tencent.mobileqq/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.tencent.mm/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 75
    const/4 v4, 0x1

    .line 78
    :cond_5
    if-nez v4, :cond_6

    iget-object v5, v3, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    :cond_6
    if-eqz p4, :cond_7

    .line 80
    move-object v0, v3

    .line 82
    :cond_7
    iget v5, v3, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->mInstanceId:I

    if-ne v5, p3, :cond_3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instid":I
    .end local v3    # "item":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    .end local v4    # "res":Z
    :cond_8
    move v2, p3

    .line 66
    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "instid":I
    :cond_9
    move-object v3, v0

    .line 87
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->INSTANCE:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

    return-object v0
.end method

.method private saveAppCurrentMode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "currentmode"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->saveAppCurrentMode(Landroid/content/Context;Ljava/lang/String;II)V

    .line 149
    return-void
.end method

.method private saveAppCurrentMode(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "currentmode"    # I
    .param p4, "instanceid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 152
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    if-ltz p4, :cond_2

    if-le p4, v2, :cond_4

    :cond_2
    move v7, v0

    .line 161
    .local v7, "instid":I
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 163
    const-string v1, "pkg"

    invoke-virtual {v3, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v1, p2, v7, v2}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->getAppsModeInDatabase(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;IZ)Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;

    move-result-object v6

    .line 166
    .local v6, "cachemode":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    const-string v1, "full_mode"

    if-eqz v6, :cond_3

    iget v0, v6, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->fullMode:I

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v0, "current_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v0, "instance_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "str_instid":Ljava/lang/String;
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$1;-><init>(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v5    # "str_instid":Ljava/lang/String;
    .end local v6    # "cachemode":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    .end local v7    # "instid":I
    :cond_4
    move v7, p4

    .line 155
    goto :goto_1
.end method

.method private startLoadAppsModes(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    sget-object v1, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->CONTENT_APPSMODES_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 224
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 229
    const/4 v8, 0x0

    .line 230
    .local v8, "hasData":Z
    iget-object v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 232
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    const-string v1, "pkg"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "pkg":Ljava/lang/String;
    const-string v1, "full_mode"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 235
    .local v4, "fullmode":I
    const-string v1, "current_mode"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 236
    .local v5, "currentmode":I
    const-string v1, "instance_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 237
    .local v6, "instanceid":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 240
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 246
    iget-object v9, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;-><init>(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Ljava/lang/String;III)V

    invoke-virtual {v9, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const/4 v8, 0x1

    .line 248
    goto :goto_1

    .line 250
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "fullmode":I
    .end local v5    # "currentmode":I
    .end local v6    # "instanceid":I
    :cond_3
    if-eqz v7, :cond_4

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_4
    sget-boolean v1, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v1, :cond_5

    .line 256
    const-string v1, "vivo_debug_VivoSmartMultiWindowAppsModeMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vivoDisplayReady package size = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_5
    if-eqz v8, :cond_6

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z

    .line 261
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mStartLoad:Z

    goto/16 :goto_0

    .line 250
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_7

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method


# virtual methods
.method public getAppAllMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->getAppAllMode(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppAllMode(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "instanceid"    # I

    .prologue
    .line 95
    const/4 v1, -0x1

    .line 96
    .local v1, "mode":I
    if-nez p1, :cond_1

    .line 103
    .end local v1    # "mode":I
    :cond_0
    :goto_0
    return v1

    .line 99
    .restart local v1    # "mode":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->getAppsModeInDatabase(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;IZ)Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;

    move-result-object v0

    .line 100
    .local v0, "cachemode":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    if-eqz v0, :cond_0

    .line 103
    iget v1, v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->fullMode:I

    goto :goto_0
.end method

.method public getAppCurrentMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->getAppCurrentMode(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppCurrentMode(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "instanceid"    # I

    .prologue
    .line 112
    const/4 v1, -0x1

    .line 113
    .local v1, "mode":I
    if-nez p1, :cond_1

    .line 120
    .end local v1    # "mode":I
    :cond_0
    :goto_0
    return v1

    .line 116
    .restart local v1    # "mode":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->getAppsModeInDatabase(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;IZ)Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;

    move-result-object v0

    .line 117
    .local v0, "cachemode":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    if-eqz v0, :cond_0

    .line 120
    iget v1, v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->currMode:I

    goto :goto_0
.end method

.method public isAppsModeReady()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z

    return v0
.end method

.method public updateAppCurrentMode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "currentmode"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->updateAppCurrentMode(Landroid/content/Context;Ljava/lang/String;II)V

    .line 126
    return-void
.end method

.method public updateAppCurrentMode(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "currentmode"    # I
    .param p4, "instanceid"    # I

    .prologue
    const/4 v3, 0x0

    .line 129
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-boolean v1, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v1, :cond_2

    .line 133
    const-string v1, "vivo_debug_VivoSmartMultiWindowAppsModeMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppCurrentMode process pkg = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", currentmode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", instanceid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    if-ltz p4, :cond_3

    const/4 v1, 0x1

    if-le p4, v1, :cond_5

    :cond_3
    move v5, v3

    .line 136
    .local v5, "instid":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v1, p2, v5, v3}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->getAppsModeInDatabase(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;IZ)Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;

    move-result-object v0

    .line 138
    .local v0, "cachemode":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    if-nez v0, :cond_4

    .line 139
    new-instance v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;

    .end local v0    # "cachemode":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    move-object v1, p0

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;-><init>(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Ljava/lang/String;III)V

    .line 140
    .restart local v0    # "cachemode":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    iget-object v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mAppsModesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_4
    iput p3, v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;->currMode:I

    .line 143
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->saveAppCurrentMode(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .end local v0    # "cachemode":Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$AppModesItem;
    .end local v5    # "instid":I
    :cond_5
    move v5, p4

    .line 135
    goto :goto_1
.end method

.method public vivoDisplayReady(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    sget-boolean v0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "vivo_debug_VivoSmartMultiWindowAppsModeMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vivoDisplayReady context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStartLoad = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mStartLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLoadApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mStartLoad:Z

    if-eqz v0, :cond_1

    .line 216
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mStartLoad:Z

    .line 209
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$2;-><init>(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
