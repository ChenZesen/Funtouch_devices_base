.class public final Lcom/vivo/common/provider/Weather$City;
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
    name = "City"
.end annotation


# static fields
.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CITYID:Ljava/lang/String; = "cityid"

.field public static final CITYNAME:Ljava/lang/String; = "cityname"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROVINCE:Ljava/lang/String; = "province"

.field public static final PROVINCEID:Ljava/lang/String; = "provinceid"

.field public static final PROVINCENAME:Ljava/lang/String; = "provincename"

.field public static final TABLENAME:Ljava/lang/String; = "city"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 550
    const-string v0, "content://com.vivo.weather.provider.city/city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/Weather$City;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
