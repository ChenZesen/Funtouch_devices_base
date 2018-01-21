.class public Landroid/telephony/FtTelephony$SmsStorageStatus;
.super Ljava/lang/Object;
.source "FtTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/FtTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsStorageStatus"
.end annotation


# instance fields
.field public mTotal:I

.field public mUsed:I

.field final synthetic this$0:Landroid/telephony/FtTelephony;


# direct methods
.method public constructor <init>(Landroid/telephony/FtTelephony;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/telephony/FtTelephony$SmsStorageStatus;->this$0:Landroid/telephony/FtTelephony;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
