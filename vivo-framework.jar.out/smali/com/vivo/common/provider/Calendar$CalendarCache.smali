.class public Lcom/vivo/common/provider/Calendar$CalendarCache;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/vivo/common/provider/Calendar$CalendarCacheColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarCache"
.end annotation


# static fields
.field public static final POJECTION:[Ljava/lang/String;

.field public static final TIMEZONE_KEY_INSTANCES:Ljava/lang/String; = "timezoneInstances"

.field public static final TIMEZONE_KEY_INSTANCES_PREVIOUS:Ljava/lang/String; = "timezoneInstancesPrevious"

.field public static final TIMEZONE_KEY_TYPE:Ljava/lang/String; = "timezoneType"

.field public static final TIMEZONE_TYPE_AUTO:Ljava/lang/String; = "auto"

.field public static final TIMEZONE_TYPE_HOME:Ljava/lang/String; = "home"

.field public static final URI:Landroid/net/Uri;

.field public static final WHERE:Ljava/lang/String; = "key=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1000
    const-string v0, "content://com.android.bbk.calendar/properties"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    .line 1002
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Calendar$CalendarCache;->POJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
