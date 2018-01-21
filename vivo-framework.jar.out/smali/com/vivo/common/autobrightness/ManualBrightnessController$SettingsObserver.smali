.class final Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ManualBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/ManualBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/ManualBrightnessController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .line 462
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 463
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/ManualBrightnessController;

    # invokes: Lcom/vivo/common/autobrightness/ManualBrightnessController;->handleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->access$2900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)V

    .line 468
    return-void
.end method
