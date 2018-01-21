.class public interface abstract Lcom/vivo/services/security/server/db/ICursorDataExtractor;
.super Ljava/lang/Object;
.source "ICursorDataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract extractData(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method
