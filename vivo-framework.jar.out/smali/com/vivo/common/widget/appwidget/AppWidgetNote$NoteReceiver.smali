.class public Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mQueryTaskStatues:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I
    invoke-static {v3}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Ljava/lang/String;)V

    .line 283
    const-string v1, "android.intent.action.CLEAR_PACKAGE_DATA.com.android.notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    move-result-object v1

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->clear()V
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->access$400(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)V

    .line 289
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/16 v2, 0x1001

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->trigerNoteUpdate(I)V
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v1, "android.widget.action.WIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/16 v2, 0x1004

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->updateNotesData(I)V
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)V

    goto :goto_0

    .line 296
    :cond_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 301
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/16 v2, 0x1002

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->trigerNoteUpdate(I)V
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)V

    goto :goto_0

    .line 304
    :cond_3
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 309
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    const/16 v2, 0x1003

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->trigerNoteUpdate(I)V
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)V

    goto :goto_0
.end method
