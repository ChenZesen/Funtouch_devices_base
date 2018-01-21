.class Lcom/android/server/pm/PackageManagerService$PackageParserInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageParserInfo"
.end annotation


# instance fields
.field public mPackage:Landroid/content/pm/PackageParser$Package;

.field public mPackageParser:Landroid/content/pm/PackageParser;

.field public mPackageParserException:Landroid/content/pm/PackageParser$PackageParserException;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .prologue
    .line 20580
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20581
    return-void
.end method
