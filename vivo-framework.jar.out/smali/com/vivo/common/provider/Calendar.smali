.class public final Lcom/vivo/common/provider/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/provider/Calendar$SyncState;,
        Lcom/vivo/common/provider/Calendar$ExtendedProperties;,
        Lcom/vivo/common/provider/Calendar$ExtendedPropertiesColumns;,
        Lcom/vivo/common/provider/Calendar$CalendarAlerts;,
        Lcom/vivo/common/provider/Calendar$CalendarAlertsColumns;,
        Lcom/vivo/common/provider/Calendar$Reminders;,
        Lcom/vivo/common/provider/Calendar$RemindersColumns;,
        Lcom/vivo/common/provider/Calendar$EventDays;,
        Lcom/vivo/common/provider/Calendar$EventDaysColumns;,
        Lcom/vivo/common/provider/Calendar$CalendarMetaData;,
        Lcom/vivo/common/provider/Calendar$CalendarMetaDataColumns;,
        Lcom/vivo/common/provider/Calendar$CalendarCache;,
        Lcom/vivo/common/provider/Calendar$CalendarCacheColumns;,
        Lcom/vivo/common/provider/Calendar$Instances;,
        Lcom/vivo/common/provider/Calendar$Events;,
        Lcom/vivo/common/provider/Calendar$EventsEntity;,
        Lcom/vivo/common/provider/Calendar$EventsColumns;,
        Lcom/vivo/common/provider/Calendar$Attendees;,
        Lcom/vivo/common/provider/Calendar$AttendeesColumns;,
        Lcom/vivo/common/provider/Calendar$Calendars;,
        Lcom/vivo/common/provider/Calendar$CalendarsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.bbk.calendar"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field public static final EVENT_REMINDER_ACTION:Ljava/lang/String; = "android.intent.action.EVENT_REMINDER"

.field public static final TAG:Ljava/lang/String; = "Calendar"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "content://com.android.bbk.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1473
    return-void
.end method
