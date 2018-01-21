.class public Lcom/vivo/provider/VivoCallLog$Calls;
.super Landroid/provider/CallLog$Calls;
.source "VivoCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/provider/VivoCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CONF_CALLID:Ljava/lang/String; = "conf_callid"

.field public static final ENCRYPT:Ljava/lang/String; = "encrypt"

.field public static final IS_CHILD:Ljava/lang/String; = "is_child"

.field public static final IS_MULTI:Ljava/lang/String; = "is_multi"

.field public static final IS_SECRET:Ljava/lang/String; = "is_secret"

.field public static final NUMBE_RMARK_LABLE:Ljava/lang/String; = "number_mark_lable"

.field public static final RECENT:Ljava/lang/String; = "recent"

.field public static final RECORD_DURATION:Ljava/lang/String; = "record_duration"

.field public static final RECORD_PATH:Ljava/lang/String; = "record_path"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SUBSCRIPTION:Ljava/lang/String; = "subscription"

.field public static final TYPE_MARKED:Ljava/lang/String; = "type_marked"

.field public static final VTCALL:Ljava/lang/String; = "vtcall"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/provider/CallLog$Calls;-><init>()V

    return-void
.end method
