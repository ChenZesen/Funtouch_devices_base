.class public Landroid/app/SmartMultWindowSharedPreferences;
.super Ljava/lang/Object;
.source "SmartMultWindowSharedPreferences.java"


# static fields
.field private static ACTIVITY_INPUTMETHOD_BACKUP:Ljava/lang/String; = null

.field private static ACTIVITY_INPUTMETHOD_DEFAULT_PKGNAME:Ljava/lang/String; = null

.field private static ACTIVITY_SPLITMODE_DEFAULT_INPUTMETHOD:Ljava/lang/String; = null

.field public static final ANOTHER_WINDOW_NEED_PAUSED_KEY:Ljava/lang/String; = "another_window_need_paused"

.field public static final BOTTOM_RUNNING_PACKAGE_KEY:Ljava/lang/String; = "bottom_running_package"

.field public static final DEBUG:Z = true

.field public static final FLOAT_MODE:I = 0x1

.field public static final NORMAL_MODE:I = 0x0

.field public static final SMARTMULTIWINDOW_CURRENT_APP_MODE_KEY:Ljava/lang/String; = "vivo_smartmulitwindow_current_app_mode"

.field public static final SMARTMULTIWINDOW_DRAG_TO_FULLSCREEN_KEY:Ljava/lang/String; = "smartmultiwindow_drag_to_fullscreen"

.field public static final SMARTMULTIWINDOW_FIRST_PKG_KEY:Ljava/lang/String; = "float_first_pkg"

.field public static final SMARTMULTIWINDOW_MODE_KEY:Ljava/lang/String; = "floatmode"

.field public static final SMARTMULTIWINDOW_ORIENTATION_KEY:Ljava/lang/String; = "vivo_smartmulitwindow_orientation"

.field public static final SMARTMULTIWINDOW_SCREEN_DIVIDER_KEY:Ljava/lang/String; = "smartmultiwindow_screen_horizontal_divider"

.field public static final SMARTMULTIWINDOW_SECOND_PKG_KEY:Ljava/lang/String; = "float_second_pkg"

.field public static final SMARTMULTIWINDOW_SWITCH_WINDOW_KEY:Ljava/lang/String; = "vivo_smartmulitwindow_switch_window"

.field public static final SOURCE_RECORD_PACKAGENAME_ONE_KEY:Ljava/lang/String; = "source_record_packagename_one"

.field public static final SOURCE_RECORD_PACKAGENAME_TWO_KEY:Ljava/lang/String; = "source_record_packagename_two"

.field public static final SPLIT_MODE:I = 0x2

.field public static final STACK_POSITION_BOTTOM_LEFT:I = 0x1

.field public static final STACK_POSITION_DEFAULT:I = -0x1

.field public static final STACK_POSITION_KEY:Ljava/lang/String; = "stack_position"

.field public static final STACK_POSITION_TOP_RIGHT:I = 0x0

.field public static final STACK_SIZE_FITSCREEN:I = 0x1

.field public static final STACK_SIZE_FUllSCREEN:I = 0x0

.field public static final STACK_SIZE_SCALE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "android.app.SmartMultWindowSharedPreferences"

.field public static final TASK_STACK_POSITION_SPILT_BOTTOM:I = 0x2

.field public static final TASK_STACK_POSITION_SPILT_TOP:I = 0x1

.field public static final TOP_RUNNING_PACKAGE_KEY:Ljava/lang/String; = "top_running_package"

.field private static final VIVO_SMART_MULTI_WINDOW_TAG:Ljava/lang/String; = "vivo_smart_multi_window"

.field public static final WINDOW_FULLSCREEN_KEY:Ljava/lang/String; = "window_fullscreen"

.field public static final WINDOW_SCALE_KEY:Ljava/lang/String; = "window_scale"

.field private static mTopStackPackageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static screenSizePoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/SmartMultWindowSharedPreferences;->mTopStackPackageArray:Ljava/util/ArrayList;

    .line 78
    const-string v0, "com.vivo.smartmultiwindow.inputmethod.backup"

    sput-object v0, Landroid/app/SmartMultWindowSharedPreferences;->ACTIVITY_INPUTMETHOD_BACKUP:Ljava/lang/String;

    .line 79
    const-string v0, "com.baidu.input_bbk.service/.PinyinIME"

    sput-object v0, Landroid/app/SmartMultWindowSharedPreferences;->ACTIVITY_SPLITMODE_DEFAULT_INPUTMETHOD:Ljava/lang/String;

    .line 80
    const-string v0, "com.baidu.input_bbk.service"

    sput-object v0, Landroid/app/SmartMultWindowSharedPreferences;->ACTIVITY_INPUTMETHOD_DEFAULT_PKGNAME:Ljava/lang/String;

    .line 703
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Landroid/app/SmartMultWindowSharedPreferences;->screenSizePoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static VivoLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 568
    const-string/jumbo v0, "vivo_smart_multi_window"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method public static getAllowSplitApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 573
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v6, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 575
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    move-object v6, v2

    .line 604
    .end local v6    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 578
    .restart local v6    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v2, "content://com.vivo.smartmultiwindow/appsconfig"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 579
    .local v1, "uri":Landroid/net/Uri;
    sget-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    if-eqz v2, :cond_2

    .line 580
    const-string v2, "android.app.SmartMultWindowSharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_2
    const/4 v7, 0x0

    .line 584
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 585
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 586
    sget-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    if-eqz v2, :cond_3

    .line 587
    const-string v2, "android.app.SmartMultWindowSharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_3
    :goto_1
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 590
    const-string/jumbo v2, "pkg"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 591
    .local v9, "pkg":Ljava/lang/String;
    sget-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    if-eqz v2, :cond_4

    .line 592
    const-string v2, "android.app.SmartMultWindowSharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllowSplitApps = pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_4
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 596
    .end local v9    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 597
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "android.app.SmartMultWindowSharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    if-eqz v7, :cond_0

    .line 601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 600
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v7, :cond_0

    .line 601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 600
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    .line 601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public static getAnotherWindowNeedPaused(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "need":I
    if-nez p0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v3

    .line 262
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 263
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 266
    const-string v3, "another_window_need_paused"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :goto_1
    move v3, v1

    .line 270
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCurrentAppDisplayMode(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 625
    const/4 v1, -0x1

    .line 626
    .local v1, "mode":I
    if-nez p0, :cond_0

    move v2, v1

    .line 641
    .end local v1    # "mode":I
    .local v2, "mode":I
    :goto_0
    return v2

    .line 630
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 631
    .local v3, "rsv":Landroid/content/ContentResolver;
    if-nez v3, :cond_1

    move v2, v1

    .line 632
    .end local v1    # "mode":I
    .restart local v2    # "mode":I
    goto :goto_0

    .line 634
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :cond_1
    const-string/jumbo v4, "vivo_smartmulitwindow_current_app_mode"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 635
    sget-boolean v4, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    if-eqz v4, :cond_2

    .line 636
    const-string v4, "android.app.SmartMultWindowSharedPreferences"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "rsv":Landroid/content/ContentResolver;
    :cond_2
    :goto_1
    move v2, v1

    .line 641
    .end local v1    # "mode":I
    .restart local v2    # "mode":I
    goto :goto_0

    .line 638
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCurrentRunningPkgName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 561
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 562
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 563
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDividerPosition(Landroid/content/Context;)F
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 684
    invoke-static {p0}, Landroid/app/SmartMultWindowSharedPreferences;->getWindowHeight(Landroid/content/Context;)I

    move-result v4

    .line 685
    .local v4, "screenHeight":I
    invoke-static {p0}, Landroid/app/SmartMultWindowSharedPreferences;->getWindowWidth(Landroid/content/Context;)I

    move-result v5

    .line 686
    .local v5, "screenWidth":I
    if-le v4, v5, :cond_1

    div-int/lit8 v6, v4, 0x2

    int-to-float v0, v6

    .line 687
    .local v0, "defaultDivierPosition":F
    :goto_0
    move v1, v0

    .line 688
    .local v1, "divierPosition":F
    if-nez p0, :cond_2

    .line 700
    .end local v0    # "defaultDivierPosition":F
    :cond_0
    :goto_1
    return v0

    .line 686
    .end local v1    # "divierPosition":F
    :cond_1
    div-int/lit8 v6, v5, 0x2

    int-to-float v0, v6

    goto :goto_0

    .line 692
    .restart local v0    # "defaultDivierPosition":F
    .restart local v1    # "divierPosition":F
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 693
    .local v3, "rsv":Landroid/content/ContentResolver;
    if-eqz v3, :cond_0

    .line 696
    const-string/jumbo v6, "smartmultiwindow_screen_horizontal_divider"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v3    # "rsv":Landroid/content/ContentResolver;
    :goto_2
    move v0, v1

    .line 700
    goto :goto_1

    .line 697
    :catch_0
    move-exception v2

    .line 698
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getDragToFullWindow(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 536
    const/4 v1, -0x1

    .line 537
    .local v1, "position":I
    if-nez p0, :cond_0

    move v2, v1

    .line 552
    .end local v1    # "position":I
    .local v2, "position":I
    :goto_0
    return v2

    .line 541
    .end local v2    # "position":I
    .restart local v1    # "position":I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 542
    .local v3, "rsv":Landroid/content/ContentResolver;
    if-nez v3, :cond_1

    move v2, v1

    .line 543
    .end local v1    # "position":I
    .restart local v2    # "position":I
    goto :goto_0

    .line 545
    .end local v2    # "position":I
    .restart local v1    # "position":I
    :cond_1
    const-string/jumbo v4, "smartmultiwindow_drag_to_fullscreen"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 546
    sget-boolean v4, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    if-eqz v4, :cond_2

    .line 547
    const-string v4, "android.app.SmartMultWindowSharedPreferences"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "rsv":Landroid/content/ContentResolver;
    :cond_2
    :goto_1
    move v2, v1

    .line 552
    .end local v1    # "position":I
    .restart local v2    # "position":I
    goto :goto_0

    .line 549
    .end local v2    # "position":I
    .restart local v1    # "position":I
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFloatMode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "mode":I
    if-nez p0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v3

    .line 172
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 173
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 176
    const-string v3, "floatmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :goto_1
    move v3, v1

    .line 180
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFloatPkg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "pkg":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v3

    .line 225
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 226
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 229
    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :goto_1
    move-object v3, v1

    .line 233
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFocusWindow(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 203
    const/4 v1, -0x1

    .line 204
    .local v1, "position":I
    if-nez p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 209
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 212
    const-string/jumbo v3, "stack_position"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :goto_1
    move v3, v1

    .line 216
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMustFullScreenActivity(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 645
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v6, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 647
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    move-object v6, v3

    .line 680
    .end local v6    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 650
    .restart local v6    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v3, "content://com.vivo.smartmultiwindow/appsconfig"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 651
    .local v1, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 653
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 654
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "scanner_app_ui"

    aput-object v4, v2, v3

    .line 655
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 656
    :cond_2
    :goto_1
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 657
    const-string/jumbo v3, "scanner_app_ui"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 658
    .local v8, "className":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 659
    sget-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    if-eqz v3, :cond_3

    .line 660
    const-string v3, "android.app.SmartMultWindowSharedPreferences"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMustFullScreenActivity = className "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_3
    const-string v3, "#"

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 664
    const-string v3, "#"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 665
    .local v14, "subStr":[Ljava/lang/String;
    move-object v7, v14

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_2

    aget-object v13, v7, v11

    .line 666
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 669
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "subStr":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 673
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 674
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    if-eqz v9, :cond_0

    .line 677
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 676
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_5
    if-eqz v9, :cond_0

    .line 677
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 676
    .end local v2    # "projection":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_6

    .line 677
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3
.end method

.method public static getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 7
    .param p0, "cResolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 107
    if-nez p0, :cond_0

    .line 119
    :goto_0
    return v1

    .line 110
    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, "value":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 113
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 117
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "android.app.SmartMultWindowSharedPreferences"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSettingInt getInt exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static getSourceRecordPackageOne(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, "pkg":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-object v3

    .line 409
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 410
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 413
    const-string/jumbo v3, "source_record_packagename_one"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :goto_1
    move-object v3, v1

    .line 417
    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSourceRecordPackageTwo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, "pkg":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-object v3

    .line 450
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 451
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 454
    const-string/jumbo v3, "source_record_packagename_two"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :goto_1
    move-object v3, v1

    .line 458
    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getTopRunningPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "pkg":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v3

    .line 368
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 369
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 372
    const-string/jumbo v3, "top_running_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :goto_1
    move-object v3, v1

    .line 376
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getTopStackPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    sget-object v0, Landroid/app/SmartMultWindowSharedPreferences;->mTopStackPackageArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getWindowFullScreenMode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 293
    const/4 v1, 0x1

    .line 294
    .local v1, "isFullScreen":I
    if-nez p0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v3

    .line 298
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 299
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 302
    const-string/jumbo v3, "window_fullscreen"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :goto_1
    move v3, v1

    .line 306
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 706
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 707
    .local v0, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Landroid/app/SmartMultWindowSharedPreferences;->screenSizePoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 708
    sget-object v1, Landroid/app/SmartMultWindowSharedPreferences;->screenSizePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    return v1
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 712
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 713
    .local v0, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Landroid/app/SmartMultWindowSharedPreferences;->screenSizePoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 714
    sget-object v1, Landroid/app/SmartMultWindowSharedPreferences;->screenSizePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    return v1
.end method

.method public static isAllowSplitApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 123
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    invoke-static {p0}, Landroid/app/SmartMultWindowSharedPreferences;->getAllowSplitApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    .local v0, "allowApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isAnotherWindowNeedPaused(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    if-nez p0, :cond_0

    .line 336
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Landroid/app/SmartMultWindowSharedPreferences;->getAnotherWindowNeedPaused(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isFloatMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 316
    if-nez p0, :cond_0

    .line 318
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Landroid/app/SmartMultWindowSharedPreferences;->getFloatMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isNormalMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 322
    if-nez p0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/app/SmartMultWindowSharedPreferences;->getFloatMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isScreenLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 557
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public static isSplitMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 310
    if-nez p0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/app/SmartMultWindowSharedPreferences;->getFloatMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWindowFullScreen(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 328
    if-nez p0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/app/SmartMultWindowSharedPreferences;->getWindowFullScreenMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static lockIqooImeInputMethod(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 463
    const/4 v4, 0x0

    .line 465
    .local v4, "hasiqooinput":Z
    sget-boolean v6, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v6, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    sget-object v7, Landroid/app/SmartMultWindowSharedPreferences;->ACTIVITY_INPUTMETHOD_DEFAULT_PKGNAME:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 471
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 472
    const/4 v4, 0x1

    .line 477
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    if-eqz p0, :cond_0

    if-eqz v4, :cond_0

    .line 481
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 482
    .local v5, "rsv":Landroid/content/ContentResolver;
    if-eqz v5, :cond_0

    .line 486
    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "cur_input_pkg":Ljava/lang/String;
    sget-object v6, Landroid/app/SmartMultWindowSharedPreferences;->ACTIVITY_INPUTMETHOD_BACKUP:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "back_input_pkg":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 490
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 492
    :cond_3
    if-eqz v1, :cond_4

    .line 493
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 495
    :cond_4
    const-string v6, "android.app.SmartMultWindowSharedPreferences"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockIqooImeInputMethod enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cur = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", back = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    if-eqz p1, :cond_7

    .line 498
    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_6

    .line 500
    :cond_5
    sget-object v6, Landroid/app/SmartMultWindowSharedPreferences;->ACTIVITY_INPUTMETHOD_BACKUP:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 503
    :cond_6
    const-string v6, "default_input_method"

    sget-object v7, Landroid/app/SmartMultWindowSharedPreferences;->ACTIVITY_SPLITMODE_DEFAULT_INPUTMETHOD:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 512
    .end local v1    # "back_input_pkg":Ljava/lang/String;
    .end local v2    # "cur_input_pkg":Ljava/lang/String;
    .end local v5    # "rsv":Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    .line 513
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 474
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 475
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 506
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "back_input_pkg":Ljava/lang/String;
    .restart local v2    # "cur_input_pkg":Ljava/lang/String;
    .restart local v5    # "rsv":Landroid/content/ContentResolver;
    :cond_7
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 508
    const-string v6, "default_input_method"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 509
    sget-object v6, Landroid/app/SmartMultWindowSharedPreferences;->ACTIVITY_INPUTMETHOD_BACKUP:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static putSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 6
    .param p0, "cResolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 98
    .local v2, "ident":J
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "android.app.SmartMultWindowSharedPreferences"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putSettingInt putInt exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static setAnotherWindowNeedPaused(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "need"    # I

    .prologue
    .line 238
    if-nez p0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    sget-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    if-eqz v2, :cond_2

    .line 242
    const-string v2, "android.app.SmartMultWindowSharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFocusWindow need = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 245
    .local v1, "rsv":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 250
    :try_start_0
    const-string v2, "another_window_need_paused"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCurrentAppDisplayMode(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 608
    if-nez p0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 613
    .local v1, "rsv":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 618
    :try_start_0
    const-string/jumbo v2, "vivo_smartmulitwindow_current_app_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDragToFullWindow(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 519
    if-nez p0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 524
    .local v1, "rsv":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 529
    :try_start_0
    const-string/jumbo v2, "smartmultiwindow_drag_to_fullscreen"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFloatMode(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 137
    if-nez p0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const-string/jumbo v3, "vivosmartmultiwindowservice"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/VivoSmartMultiWindowManager;

    .line 141
    .local v1, "mVivoSmartMultiWindowManager":Landroid/app/VivoSmartMultiWindowManager;
    if-eqz v1, :cond_0

    .line 145
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 146
    invoke-virtual {v1, v4}, Landroid/app/VivoSmartMultiWindowManager;->setSplitMode(Z)V

    .line 147
    invoke-static {p0, v4}, Landroid/app/SmartMultWindowSharedPreferences;->lockIqooImeInputMethod(Landroid/content/Context;Z)V

    .line 148
    const/4 v3, -0x1

    invoke-static {p0, v3}, Landroid/app/SmartMultWindowSharedPreferences;->setDragToFullWindow(Landroid/content/Context;I)V

    .line 153
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 154
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 159
    :try_start_0
    const-string v3, "floatmode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rsv":Landroid/content/ContentResolver;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/VivoSmartMultiWindowManager;->setSplitMode(Z)V

    goto :goto_1
.end method

.method public static setFocusWindow(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 184
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 185
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    if-nez p0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    sget-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    if-eqz v3, :cond_2

    .line 189
    const-string v3, "android.app.SmartMultWindowSharedPreferences"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFocusWindow position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 192
    .local v2, "rsv":Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 196
    :try_start_0
    const-string/jumbo v3, "stack_position"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSourceRecordPackageOne(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 387
    if-nez p0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 392
    .local v1, "rsv":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 397
    :try_start_0
    const-string/jumbo v2, "source_record_packagename_one"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSourceRecordPackageTwo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 428
    if-nez p0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 433
    .local v1, "rsv":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 438
    :try_start_0
    const-string/jumbo v2, "source_record_packagename_two"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTopRunningPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 346
    if-nez p0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 351
    .local v1, "rsv":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 356
    :try_start_0
    const-string/jumbo v2, "top_running_package"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWindowFullScreenMode(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 276
    if-nez p0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 281
    .local v1, "rsv":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 286
    :try_start_0
    const-string/jumbo v2, "window_fullscreen"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
