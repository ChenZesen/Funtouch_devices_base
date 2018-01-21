.class public final Lcom/vivo/common/provider/Weather$CityOrder;
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
    name = "CityOrder"
.end annotation


# static fields
.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LOCAL:Ljava/lang/String; = "local"

.field public static final ORDERID:Ljava/lang/String; = "orderid"

.field public static final RELEASETIME:Ljava/lang/String; = "releasetime"

.field public static final TABLENAME:Ljava/lang/String; = "cityorder"

.field public static final UPDATETIME:Ljava/lang/String; = "updatetime"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    const-string v0, "content://com.vivo.weather.provider/cityorder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$CityOrder;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
