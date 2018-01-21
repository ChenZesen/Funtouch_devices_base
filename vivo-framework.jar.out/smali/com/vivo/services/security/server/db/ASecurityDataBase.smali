.class public abstract Lcom/vivo/services/security/server/db/ASecurityDataBase;
.super Ljava/lang/Object;
.source "ASecurityDataBase.java"

# interfaces
.implements Lcom/vivo/services/security/server/db/ICursorDataExtractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vivo/services/security/server/db/ICursorDataExtractor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    .local p0, "this":Lcom/vivo/services/security/server/db/ASecurityDataBase;, "Lcom/vivo/services/security/server/db/ASecurityDataBase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/vivo/services/security/server/db/ASecurityDataBase;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getInstance(Landroid/content/Context;)Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/security/server/db/ASecurityDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    .line 31
    return-void
.end method

.method protected static isNull(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 36
    if-nez p0, :cond_1

    .line 49
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 41
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 43
    check-cast p0, Ljava/util/List;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "sd"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/vivo/services/security/server/db/ASecurityDataBase;, "Lcom/vivo/services/security/server/db/ASecurityDataBase<TT;>;"
    const/4 v0, 0x0

    .line 55
    .local v0, "localArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 56
    .local v1, "localCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 58
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "localArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .restart local v0    # "localArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/vivo/services/security/server/db/ASecurityDataBase;->extractData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "localObject":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    .end local v2    # "localObject":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_2
    return-object v0
.end method

.method public find(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/vivo/services/security/server/db/ASecurityDataBase;, "Lcom/vivo/services/security/server/db/ASecurityDataBase<TT;>;"
    iget-object v1, p0, Lcom/vivo/services/security/server/db/ASecurityDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    invoke-virtual {v1}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p1}, Lcom/vivo/services/security/server/db/ASecurityDataBase;->find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public find(Ljava/lang/String;II)Ljava/util/List;
    .locals 4
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/vivo/services/security/server/db/ASecurityDataBase;, "Lcom/vivo/services/security/server/db/ASecurityDataBase<TT;>;"
    add-int/lit8 v2, p2, -0x1

    mul-int v0, v2, p3

    .line 83
    .local v0, "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vivo/services/security/server/db/ASecurityDataBase;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/vivo/services/security/server/db/ASecurityDataBase;, "Lcom/vivo/services/security/server/db/ASecurityDataBase<TT;>;"
    const/4 v1, 0x0

    .line 90
    .local v1, "result":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 91
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/vivo/services/security/server/db/ASecurityDataBase;->extractData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    return-object v1
.end method

.method public query(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/vivo/services/security/server/db/ASecurityDataBase;, "Lcom/vivo/services/security/server/db/ASecurityDataBase<TT;>;"
    iget-object v1, p0, Lcom/vivo/services/security/server/db/ASecurityDataBase;->mDBHelper:Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;

    invoke-virtual {v1}, Lcom/vivo/services/security/server/db/VivoSecurityDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    .local v0, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p1}, Lcom/vivo/services/security/server/db/ASecurityDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
