.class public Lcom/vivo/common/widget/appwidget/AppWidgetNote;
.super Ljava/lang/Object;
.source "AppWidgetNote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;,
        Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;,
        Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;,
        Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;,
        Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;,
        Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTIVITY:Ljava/lang/String; = "com.android.notes.EditWidget"

.field private static final ADD_ACTION:Ljava/lang/String; = "WIDGET_ADD_NOTE"

.field private static final CLEAR_APPDATA_UPDATE:I = 0x1001

.field private static final CLEAR_APPNOTIFYDATA_ACTION:Ljava/lang/String; = "android.intent.action.CLEAR_PACKAGE_DATA.com.android.notes"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final FIRST_INITAL_UPDATE:I = 0x1005

.field private static final PACKAGE:Ljava/lang/String; = "com.android.notes"

.field private static final SELF_DEL_NOTE_UPDATE:I = 0x1000

.field private static final SYSTEM_TIME_CHANGE_UPDATE:I = 0x1002

.field private static final SYSTEM_TIME_ZONE_CHANGE_UPDATE:I = 0x1003

.field private static final SYSTEM_WIDGET_UPDATE:I = 0x1004

.field private static final TAG:Ljava/lang/String; = "AppWidgetNote"

.field private static final TASK_RUNNING:I = 0x0

.field private static final TASK_STOPED:I = 0x1

.field private static final VIEW_ACTION:Ljava/lang/String; = "WIDGET_VIEW_NOTE"

.field private static final WIDGET_UPDATE_ACTION:Ljava/lang/String; = "android.widget.action.WIDGET_UPDATE"

.field private static final _DATE:I = 0x2

.field private static final _ID:I = 0x0

.field private static final _TEXT:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNoteReceiver:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;

.field private mNoteUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;

.field private mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

.field private mQueryTask:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;

.field private mQueryTaskStatues:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://com.provider.notes/note"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNoteUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;

    .line 20
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTask:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;

    .line 21
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNoteReceiver:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;

    .line 22
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I

    .line 61
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;

    .line 63
    const/16 v0, 0x1005

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->updateNotesData(I)V

    .line 64
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "AppWidgetNote"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    .prologue
    .line 16
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I

    return v0
.end method

.method static synthetic access$102(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote;
    .param p1, "x1"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->trigerNoteUpdate(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/common/widget/appwidget/AppWidgetNote;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->updateNotesData(I)V

    return-void
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private trigerNoteUpdate(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 170
    const-string v0, "-----trigerNoteUpdate----"

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNoteUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNoteUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    invoke-interface {v0, p1, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;->onNoteUpdate(ILcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)V

    .line 173
    :cond_0
    return-void
.end method

.method private updateNotesData(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    const/4 v1, 0x1

    .line 68
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTaskStatues:I

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTask:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTask:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->cancel(Z)Z

    .line 72
    :cond_0
    const-string v0, "cacle the query task!"

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V

    .line 74
    :cond_1
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTask:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;

    .line 75
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mQueryTask:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method


# virtual methods
.method public addNote()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v1, "WIDGET_ADD_NOTE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "com.android.notes"

    const-string v2, "com.android.notes.EditWidget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public delNote(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "the notes data is not ready!"

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    invoke-virtual {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNotesCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the open note index is invalid,value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  the notes size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNotesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteDelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public moniterAppChange()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLEAR_PACKAGE_DATA.com.android.notes"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.widget.action.WIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNoteReceiver:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public setOnNoteUpdateListener(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNoteUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteUpdateListener;

    .line 152
    return-void
.end method

.method public unMoniterNoteAppChange()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNoteReceiver:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NoteReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    return-void
.end method

.method public viewNote(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 126
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    if-nez v2, :cond_0

    .line 128
    const-string v2, "the notes data is not ready!"

    invoke-direct {p0, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    invoke-virtual {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNotesCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    if-gez p1, :cond_2

    .line 133
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the open note index is invalid,value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  the notes size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mNotesInfo:Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    invoke-virtual {v3}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNotesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v1, "viewIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "position"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v2, "WIDGET_VIEW_NOTE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    const-string v2, "com.android.notes"

    const-string v3, "com.android.notes.EditWidget"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
