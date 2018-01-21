.class Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;
.super Ljava/lang/Object;
.source "VivoBringupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/firewall/VivoBringupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BringupItemRecord"
.end annotation


# instance fields
.field private mCallerPackageName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mPackageName:Ljava/lang/String;

    .line 271
    iput-object p2, p0, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mCallerPackageName:Ljava/lang/String;

    .line 272
    iput-wide p3, p0, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mTime:J

    .line 273
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method
