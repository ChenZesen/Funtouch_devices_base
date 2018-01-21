.class final Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VivoSmartMultiWindowAms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VivoSmartMultiWindowAms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SplitModeSettingsObserver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final mAllowSplitAppsUri:Landroid/net/Uri;

.field private final mAllowSplitUri:Landroid/net/Uri;

.field private final mDragToFullScreenUri:Landroid/net/Uri;

.field private final mFullHorizontalStackBoundsUri:Landroid/net/Uri;

.field private final mFullVerticalStackBoundsUri:Landroid/net/Uri;

.field private final mSourceRecordPkgOneUri:Landroid/net/Uri;

.field private final mSourceRecordPkgTwoUri:Landroid/net/Uri;

.field private final mSplitBottomStackBoundsUri:Landroid/net/Uri;

.field private final mSplitLeftStackBoundsUri:Landroid/net/Uri;

.field private final mSplitModeUri:Landroid/net/Uri;

.field private final mSplitRightStackBoundsUri:Landroid/net/Uri;

.field private final mSplitTopStackBoundsUri:Landroid/net/Uri;

.field private final mStackPositionUri:Landroid/net/Uri;

.field private final mSwitchWindowKeyUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;


# direct methods
.method constructor <init>(Lcom/android/server/am/VivoSmartMultiWindowAms;Landroid/content/Context;)V
    .locals 4
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 253
    iput-object p1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    .line 254
    # getter for: Lcom/android/server/am/VivoSmartMultiWindowAms;->mAms:Lcom/android/server/am/ActivityManagerService;
    invoke-static {p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$000(Lcom/android/server/am/VivoSmartMultiWindowAms;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "floatmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitModeUri:Landroid/net/Uri;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "smartmultiwindow_drag_to_fullscreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mDragToFullScreenUri:Landroid/net/Uri;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vivo_smartmulitwindow_switch_window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSwitchWindowKeyUri:Landroid/net/Uri;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source_record_packagename_one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSourceRecordPkgOneUri:Landroid/net/Uri;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source_record_packagename_two"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSourceRecordPkgTwoUri:Landroid/net/Uri;

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stack_position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mStackPositionUri:Landroid/net/Uri;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/VivoSmartMultiWindowAms;->VIVO_SMARTMULTIWINDOW_LEFT_BOUNDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitLeftStackBoundsUri:Landroid/net/Uri;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/VivoSmartMultiWindowAms;->VIVO_SMARTMULTIWINDOW_RIGHT_BOUNDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitRightStackBoundsUri:Landroid/net/Uri;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/VivoSmartMultiWindowAms;->VIVO_SMARTMULTIWINDOW_TOP_BOUNDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitTopStackBoundsUri:Landroid/net/Uri;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/VivoSmartMultiWindowAms;->VIVO_SMARTMULTIWINDOW_BOTTOM_BOUNDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitBottomStackBoundsUri:Landroid/net/Uri;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/VivoSmartMultiWindowAms;->VIVO_SMARTMULTIWINDOW_FULL_VERTIAL_BOUNDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mFullVerticalStackBoundsUri:Landroid/net/Uri;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/VivoSmartMultiWindowAms;->VIVO_SMARTMULTIWINDOW_FULL_HORIZONTAL_BOUNDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mFullHorizontalStackBoundsUri:Landroid/net/Uri;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vivo_smartmulitwindow_is_allowed_split"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mAllowSplitUri:Landroid/net/Uri;

    .line 249
    const-string v1, "content://com.vivo.smartmultiwindow/appsconfig"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mAllowSplitAppsUri:Landroid/net/Uri;

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    .line 256
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitModeUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 259
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mDragToFullScreenUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSwitchWindowKeyUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSourceRecordPkgOneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSourceRecordPkgTwoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mStackPositionUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitLeftStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitRightStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitTopStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 267
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitBottomStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mFullVerticalStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mFullHorizontalStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mAllowSplitUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mAllowSplitAppsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 278
    if-nez p2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitModeUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoSplitModeChanged(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$100(Lcom/android/server/am/VivoSmartMultiWindowAms;Landroid/content/Context;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mDragToFullScreenUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoDragToFullScreenChanged(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$200(Lcom/android/server/am/VivoSmartMultiWindowAms;Landroid/content/Context;)V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSwitchWindowKeyUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoSwitchWindowKeyChanged(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$300(Lcom/android/server/am/VivoSmartMultiWindowAms;Landroid/content/Context;)V

    goto :goto_0

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSourceRecordPkgOneUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoSourceRecordOneChanged(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$400(Lcom/android/server/am/VivoSmartMultiWindowAms;Landroid/content/Context;)V

    goto :goto_0

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSourceRecordPkgTwoUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoSourceRecordTwoChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mStackPositionUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 293
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoFocusedWindowChanged(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$500(Lcom/android/server/am/VivoSmartMultiWindowAms;Landroid/content/Context;)V

    goto :goto_0

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitLeftStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getSplitLeftStackBoundsLocked()V

    goto :goto_0

    .line 298
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitRightStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 299
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getSplitRightStackBoundsLocked()V

    goto :goto_0

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitTopStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getSplitTopStackBoundsLocked()V

    goto/16 :goto_0

    .line 302
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mSplitBottomStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 303
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getSplitBottomStackBoundsLocked()V

    goto/16 :goto_0

    .line 304
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mFullVerticalStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 305
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getFullVerticalStackBoundsLocked()V

    goto/16 :goto_0

    .line 306
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mFullHorizontalStackBoundsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 307
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getFullHorizontalStackBoundsLocked()V

    goto/16 :goto_0

    .line 308
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mAllowSplitUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 309
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoAllowSplitChanged(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$600(Lcom/android/server/am/VivoSmartMultiWindowAms;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 310
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->mAllowSplitAppsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoAllowSplitAppsChanged(Landroid/content/Context;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$SplitModeSettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoMustFullScreenActivitysChanged(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
