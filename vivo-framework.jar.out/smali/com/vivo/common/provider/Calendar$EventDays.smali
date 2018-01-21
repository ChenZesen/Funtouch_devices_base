.class public final Lcom/vivo/common/provider/Calendar$EventDays;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/vivo/common/provider/Calendar$EventDaysColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDays"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "selected=1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1104
    const-string v0, "content://com.android.bbk.calendar/instances/groupbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Calendar$EventDays;->CONTENT_URI:Landroid/net/Uri;

    .line 1107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "endDay"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Calendar$EventDays;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;II)Landroid/database/Cursor;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "startDay"    # I
    .param p2, "numDays"    # I

    .prologue
    const/4 v4, 0x0

    .line 1120
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 1127
    :goto_0
    return-object v4

    .line 1123
    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v7, v0, -0x1

    .line 1124
    .local v7, "endDay":I
    sget-object v0, Lcom/vivo/common/provider/Calendar$EventDays;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1125
    .local v6, "builder":Landroid/net/Uri$Builder;
    int-to-long v0, p1

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1126
    int-to-long v0, v7

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1127
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/vivo/common/provider/Calendar$EventDays;->PROJECTION:[Ljava/lang/String;

    const-string v3, "selected=1"

    const-string v5, "startDay"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method
