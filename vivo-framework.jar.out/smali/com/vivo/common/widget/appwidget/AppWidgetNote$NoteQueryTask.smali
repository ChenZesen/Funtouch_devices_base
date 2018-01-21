.class public Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;
.super Landroid/os/AsyncTask;
.source "AppWidgetNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoteQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAction:I

.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private needUpdate(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)Z
    .locals 2
    .param p1, "newNotesInfo"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .prologue
    const/4 v0, 0x1

    .line 386
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 323
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->mAction:I

    .line 325
    new-instance v7, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    invoke-direct {v7, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)V

    .line 327
    .local v7, "notesInfo":Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

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

    .line 328
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->addNote(Ljava/lang/String;J)V
    invoke-static {v7, v0, v2, v3}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->access$800(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;Ljava/lang/String;J)V

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 344
    .end local v7    # "notesInfo":Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    :goto_0
    return-object v7

    .line 342
    .restart local v7    # "notesInfo":Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const-string v1, "query noteinfo failed! the cursor return null"

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Ljava/lang/String;)V

    move-object v7, v2

    .line 344
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->doInBackground([Ljava/lang/Integer;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 351
    return-void
.end method

.method protected onCancelled(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)V
    .locals 2
    .param p1, "result"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/4 v1, 0x1

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$102(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)I

    .line 357
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const-string v1, "the query task is cancled!"

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->onCancelled(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)V

    return-void
.end method

.method protected onPostExecute(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)V
    .locals 2
    .param p1, "result"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->needUpdate(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/4 v1, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$302(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .line 373
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$302(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .line 374
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->mAction:I

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->trigerNoteUpdate(I)V
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)V

    .line 380
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/4 v1, 0x1

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$102(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)I

    .line 382
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const-string v1, "the data is the same,no need update!"

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->onPostExecute(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/4 v1, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$102(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)I

    .line 364
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 365
    return-void
.end method
