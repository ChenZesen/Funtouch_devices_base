.class public Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;
.super Landroid/os/AsyncTask;
.source "AppWidgetNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoteDelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 398
    aget-object v0, p1, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 399
    .local v7, "index":I
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$700()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 400
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 402
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$700()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 404
    .local v8, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 406
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 412
    .end local v8    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const-string v1, "del note failed! the cursor return null"

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 393
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->delNote(I)V
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->access$900(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;I)V

    .line 421
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/16 v1, 0x1000

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->trigerNoteUpdate(I)V
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)V

    .line 423
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 393
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
