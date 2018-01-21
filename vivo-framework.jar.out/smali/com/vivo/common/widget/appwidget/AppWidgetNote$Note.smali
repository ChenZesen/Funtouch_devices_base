.class public Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;
.super Ljava/lang/Object;
.source "AppWidgetNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Note"
.end annotation


# instance fields
.field public mDate:Ljava/lang/String;

.field public mDateLong:J

.field public mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;)V
    .locals 4
    .param p2, "note"    # Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iget-object v0, p2, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mText:Ljava/lang/String;

    .line 182
    iget-wide v0, p2, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mDateLong:J

    iput-wide v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mDateLong:J

    .line 183
    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetNote;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/vivo/common/widget/appwidget/AppWidgetNote;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetNote;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mDateLong:J

    const/16 v1, 0x10

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mDate:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetNote;Ljava/lang/String;J)V
    .locals 1
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    .line 188
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mText:Ljava/lang/String;

    .line 190
    iput-wide p3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mDateLong:J

    .line 191
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 197
    instance-of v2, p1, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 199
    check-cast v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;

    .line 200
    .local v0, "other":Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mText:Ljava/lang/String;

    iget-object v3, v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mDateLong:J

    iget-wide v4, v0, Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;->mDateLong:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 202
    .end local v0    # "other":Lcom/vivo/common/widget/appwidget/AppWidgetNote$Note;
    :cond_0
    return v1
.end method
