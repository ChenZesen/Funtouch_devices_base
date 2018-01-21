.class public final Lcom/vivo/common/provider/Utils$InterceptMode;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/provider/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InterceptMode"
.end annotation


# static fields
.field public static final accept_contacts_only:I = 0x2

.field public static final accept_whitelist_only:I = 0x3

.field public static final blacklist_only:I = 0x1

.field public static final reject_all:I = 0x4

.field public static final smart_intercept:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
