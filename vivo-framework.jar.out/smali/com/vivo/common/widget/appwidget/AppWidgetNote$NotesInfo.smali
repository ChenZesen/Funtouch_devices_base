.class public Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
.super Ljava/lang/Object;
.source "AppWidgetNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotesInfo"
.end annotation


# instance fields
.field private mNotesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->mNotesList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->clear()V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->addNote(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    .param p1, "x1"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->delNote(I)V

    return-void
.end method

.method private addNote(Ljava/lang/String;J)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->mNotesList:Ljava/util/ArrayList;

    new-instance v1, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->mNotesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    return-void
.end method

.method private delNote(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->mNotesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 252
    instance-of v4, p1, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 254
    check-cast v1, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;

    .line 255
    .local v1, "other":Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNotesCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNotesCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNotesCount()I

    move-result v2

    .line 258
    .local v2, "size":I
    const/4 v0, 0x0

    .line 259
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 261
    invoke-virtual {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNote(I)Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->getNote(I)Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 264
    :cond_0
    if-lt v0, v2, :cond_1

    .line 265
    const/4 v3, 0x1

    .line 269
    .end local v0    # "i":I
    .end local v1    # "other":Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    .end local v2    # "size":I
    :cond_1
    return v3

    .line 259
    .restart local v0    # "i":I
    .restart local v1    # "other":Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;
    .restart local v2    # "size":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNote(I)Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->mNotesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 244
    :cond_0
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->mNotesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;

    invoke-direct {v0, v2, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;)V

    .line 245
    .local v0, "note":Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;
    goto :goto_0
.end method

.method public getNotesCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$NotesInfo;->mNotesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
