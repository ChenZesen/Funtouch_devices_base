.class public Lcom/vivo/services/security/server/db/VivoPermissionDataBase;
.super Lcom/vivo/services/security/server/db/ASecurityDataBase;
.source "VivoPermissionDataBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vivo/services/security/server/db/ASecurityDataBase",
        "<",
        "Lcom/vivo/services/security/client/VivoPermissionInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final GET_DENIED:I = 0x2

.field public static final GET_GRANTED:I = 0x4

.field public static final GET_MASK:I = 0xf

.field public static final GET_UNKNOWN:I = 0x1

.field public static final GET_WARNING:I = 0x8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/db/ASecurityDataBase;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public batchSave(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    invoke-static {p1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    invoke-virtual {v3}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 79
    .local v1, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 82
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    .local v0, "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 86
    .local v2, "localUser":Lcom/vivo/services/security/client/VivoPermissionInfo;
    invoke-virtual {p0, v1, v2}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 92
    .end local v0    # "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    .end local v2    # "localUser":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 88
    .restart local v0    # "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public delete(Lcom/vivo/services/security/client/VivoPermissionInfo;)I
    .locals 1
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 117
    const/4 v0, -0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->delete(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 100
    :cond_0
    const/4 v2, -0x1

    .line 110
    :goto_0
    return v2

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, "deleteSql":Ljava/lang/StringBuffer;
    const-string v3, "PACKAGE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const/4 v2, -0x1

    .line 107
    .local v2, "result":I
    iget-object v3, p0, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    invoke-virtual {v3}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 108
    .local v1, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "PERMISSION"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 110
    goto :goto_0
.end method

.method public extractData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 11
    .param p1, "sqlDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v10, 0x1e

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 35
    const/4 v0, -0x1

    .line 36
    .local v0, "columnIndex":I
    const/4 v4, -0x1

    .line 38
    .local v4, "value":I
    const-string v6, "PACKAGE"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 39
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "packageName":Ljava/lang/String;
    new-instance v5, Lcom/vivo/services/security/client/VivoPermissionInfo;

    invoke-direct {v5, v3}, Lcom/vivo/services/security/client/VivoPermissionInfo;-><init>(Ljava/lang/String;)V

    .line 42
    .local v5, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    const-string v6, "IS_WHITELIST"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 43
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 44
    if-ne v4, v7, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setWhiteListApp(Z)V

    .line 46
    const-string v6, "IS_BLACKLIST"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 47
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 48
    if-ne v4, v7, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setBlackListApp(Z)V

    .line 50
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    if-ge v2, v10, :cond_2

    .line 52
    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vivo/services/security/client/VivoPermissionType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 53
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 54
    invoke-virtual {v5, v2, v4}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setAllPermission(II)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "index":I
    :cond_0
    move v6, v8

    .line 44
    goto :goto_0

    :cond_1
    move v6, v8

    .line 48
    goto :goto_1

    .line 57
    .restart local v2    # "index":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "ftimeIndex":I
    :goto_3
    if-ge v1, v10, :cond_3

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FTime"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/services/security/client/VivoPermissionType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 61
    invoke-virtual {v5, v1, v4}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setAllPermissionBackup(II)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 64
    :cond_3
    const-string v6, "IS_CONFIGURED"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 65
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 66
    if-ne v4, v7, :cond_4

    :goto_4
    invoke-virtual {v5, v7}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setConfigured(Z)V

    .line 68
    return-object v5

    :cond_4
    move v7, v8

    .line 66
    goto :goto_4
.end method

.method public bridge synthetic extractData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->extractData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAllVPIs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v0, "findSql":Ljava/lang/StringBuffer;
    const-string v2, "select * from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v2, "PERMISSION"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "sql":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findAllVPIs:sql="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected findById(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 3
    .param p1, "sd"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v0, "findSql":Ljava/lang/StringBuffer;
    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "PACKAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/security/client/VivoPermissionInfo;

    return-object v1
.end method

.method public findById(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 143
    :goto_0
    return-object v1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    invoke-virtual {v1}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 143
    .local v0, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->findById(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public findVPIsByBlackList(Z)Ljava/util/List;
    .locals 3
    .param p1, "inBlackList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v0, "findSql":Ljava/lang/StringBuffer;
    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, "PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v1, "IS_BLACKLIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 163
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findVPIsByWhiteList(Z)Ljava/util/List;
    .locals 3
    .param p1, "inWhiteList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, "findSql":Ljava/lang/StringBuffer;
    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "IS_WHITELIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected save(Landroid/database/sqlite/SQLiteDatabase;Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 6
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    const/16 v5, 0x1e

    .line 230
    if-nez p2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v2, "localContentValues":Landroid/content/ContentValues;
    const-string v3, "PACKAGE"

    invoke-virtual {p2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v3, "IS_WHITELIST"

    invoke-virtual {p2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    const-string v3, "IS_BLACKLIST"

    invoke-virtual {p2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isBlackListApp()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 241
    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/services/security/client/VivoPermissionType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getAllPermission(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :cond_1
    const/4 v0, 0x0

    .local v0, "ftimeIndex":I
    :goto_2
    if-ge v0, v5, :cond_2

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/services/security/client/VivoPermissionType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getAllPermissionBackup(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 249
    :cond_2
    const-string v3, "IS_CONFIGURED"

    invoke-virtual {p2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isConfigured()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    const-string v3, "PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method public save(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 2
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    invoke-virtual {v1}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 261
    .local v0, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;II)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permTypeId"    # I
    .param p3, "result"    # I

    .prologue
    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    invoke-virtual {v2}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 272
    .local v1, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v0, "localContentValues":Landroid/content/ContentValues;
    const-string v2, "PACKAGE"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v2, "PERMISSION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public save(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isWhiteList"    # Z
    .param p3, "isBlackList"    # Z

    .prologue
    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    invoke-virtual {v2}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 286
    .local v1, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v0, "localContentValues":Landroid/content/ContentValues;
    const-string v2, "PACKAGE"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "IS_WHITELIST"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 289
    const-string v2, "IS_BLACKLIST"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    const-string v2, "PERMISSION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method
