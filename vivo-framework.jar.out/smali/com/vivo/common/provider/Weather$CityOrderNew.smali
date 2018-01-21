.class public final Lcom/vivo/common/provider/Weather$CityOrderNew;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/vivo/common/provider/Weather$WeathersColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/provider/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CityOrderNew"
.end annotation


# static fields
.field public static final ADD:Ljava/lang/String; = "added"

.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final BACKGROUND:Ljava/lang/String; = "background"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONDITION_REAL:Ljava/lang/String; = "condition_real"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CURRENTDATE:Ljava/lang/String; = "currentdate"

.field public static final HIGH:Ljava/lang/String; = "high"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final INTERVAL:Ljava/lang/String; = "interval"

.field public static final INVALID:Ljava/lang/String; = "invalid"

.field public static final LOCAL:Ljava/lang/String; = "local"

.field public static final LOW:Ljava/lang/String; = "low"

.field public static final ORDERID:Ljava/lang/String; = "orderid"

.field public static final RECOMMEND:Ljava/lang/String; = "recommend"

.field public static final RELEASETIME:Ljava/lang/String; = "releasetime"

.field public static final TABLENAME:Ljava/lang/String; = "cityorder"

.field public static final TEMP:Ljava/lang/String; = "temp"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final UPDATETIME:Ljava/lang/String; = "updatetime"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const-string v0, "content://com.vivo.weather.provider/cityorder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$CityOrderNew;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
