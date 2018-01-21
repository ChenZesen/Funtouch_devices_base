.class public Lcom/vivo/common/provider/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/provider/Utils$Blacklist;,
        Lcom/vivo/common/provider/Utils$InterceptMode;
    }
.end annotation


# static fields
.field public static final ADD_BLACKLIST_FROM_INTERNAL:Ljava/lang/String; = "add_blacklist_from_internal"

.field public static final BLACKLIST_ADDED_DIALOG_FLAG:Ljava/lang/String; = "blacklist_added_dialog_flag"

.field public static final BLACKLIST_EDIT_ID:Ljava/lang/String; = "blacklist_edit_id"

.field public static final BLACKLIST_EDIT_NAME:Ljava/lang/String; = "blacklist_edit_name"

.field public static final BLACKLIST_EDIT_NUMBER:Ljava/lang/String; = "blacklist_edit_number"

.field public static final BLACKLIST_EDIT_NUMBERS:Ljava/lang/String; = "blacklist_edit_numbers"

.field public static final BLACKLIST_EDIT_TITLE:Ljava/lang/String; = "blacklist_edit_title"

.field public static final BLACKLIST_FROM_EXTERNAL:Ljava/lang/String; = "blacklist_from_external"

.field public static final BLACK_LIST_ADDED_NUMBERS:Ljava/lang/String; = "black_list_added_numbers"

.field public static final DEFAULT_TIMING_INTERCEPT_END_TIME:Ljava/lang/String; = "07:00"

.field public static final DEFAULT_TIMING_INTERCEPT_START_TIME:Ljava/lang/String; = "23:00"

.field public static final EXPORT_INTERCEPT_LOG:Ljava/lang/String; = "export_intercept_log"

.field public static final FROM_BLACKWHITELIST:Ljava/lang/String; = "from_blackwhitelist"

.field public static final IMPORT_INTERCEPT_LOG:Ljava/lang/String; = "import_intercept_log"

.field public static final INTERCEPT_MODE_NORMAL:I = 0x0

.field public static final INTERCEPT_MODE_TIMING:I = 0x1

.field public static final KEY_SHOW_TITLE_BUTTON:Ljava/lang/String; = "show_title_button"

.field public static final MIN_LENGTH_WITHOUT12520:I = 0x6

.field private static final PREFIX:[Ljava/lang/String;

.field public static final SETTINGS_COMPLETELY_REJECT:Ljava/lang/String; = "settings_completely_reject"

.field public static final SETTINGS_HARASS_INTERCEPT:Ljava/lang/String; = "settings_harass_intercept"

.field public static final SETTINGS_INTERCEPT_MODE:Ljava/lang/String; = "settings_intercept_mode"

.field public static final SETTINGS_INTERCEPT_REMIND:Ljava/lang/String; = "settings_intercept_remind"

.field public static final SETTINGS_INTERCEPT_RINGING_ONCE:Ljava/lang/String; = "settings_intercept_ringing_once"

.field public static final SETTINGS_RECEIVE_WHITELIST:Ljava/lang/String; = "settings_receive_whitelist"

.field public static final SETTINGS_RECEIVE_WHITELIST_IN_TIMING:Ljava/lang/String; = "settings_receive_whitelist_in_timing"

.field public static final SETTINGS_REJECT_BLACKLIST:Ljava/lang/String; = "settings_reject_blacklist"

.field public static final SETTINGS_REJECT_BLACKLIST_IN_TIMING:Ljava/lang/String; = "settings_reject_blacklist_in_timing"

.field public static final SETTINGS_REJECT_KEYWORD:Ljava/lang/String; = "settings_reject_keyword"

.field public static final SETTINGS_REJECT_KEYWORD_IN_TIMING:Ljava/lang/String; = "settings_reject_keyword_in_timing"

.field public static final SETTINGS_REJECT_NO_NUMBER:Ljava/lang/String; = "settings_reject_no_number"

.field public static final SETTINGS_REJECT_NO_NUMBER_IN_TIMING:Ljava/lang/String; = "settings_reject_no_number_in_timing"

.field public static final SETTINGS_REPEAT_CALL:Ljava/lang/String; = "settings_repeat_call"

.field public static final SETTINGS_TIMING_INTERCEPT:Ljava/lang/String; = "settings_timing_intercept"

.field public static final SETTINGS_TIMING_INTERCEPT_MODE:Ljava/lang/String; = "settings_timing_intercept_mode"

.field public static final TIMING_INTERCEPT_END_TIME:Ljava/lang/String; = "timing_intercept_end_time"

.field public static final TIMING_INTERCEPT_START_TIME:Ljava/lang/String; = "timing_intercept_start_time"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+86"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "125862"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "17951"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "17911"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "12593"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0086"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/provider/Utils;->PREFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object p0

    .line 193
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/vivo/common/provider/Utils;->PREFIX:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 194
    sget-object v2, Lcom/vivo/common/provider/Utils;->PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 195
    .local v1, "len":I
    sget-object v2, Lcom/vivo/common/provider/Utils;->PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    sget-object v2, Lcom/vivo/common/provider/Utils;->PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 200
    goto :goto_0

    .line 193
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInterceptMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_intercept_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 267
    :cond_1
    return v0
.end method

.method public static getTimingInterceptMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_timing_intercept_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 289
    :cond_0
    const/4 v0, 0x2

    .line 291
    :cond_1
    return v0
.end method

.method public static isCompletelyRejectEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_completely_reject"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isHarassInterceptEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_harass_intercept"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInterceptRemindEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_intercept_remind"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInterceptRingingOnceEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_intercept_ringing_once"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isRejectBlacklistEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    .line 327
    const-string v1, "settings_reject_blacklist"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRejectNoNumberEnable(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    const-string v2, "settings_reject_no_number"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isTimingInterceptEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_timing_intercept"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static removeLocationPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    .end local p0    # "num":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 212
    .restart local p0    # "num":Ljava/lang/String;
    :cond_0
    const-string v1, "^010"

    .line 213
    .local v1, "regex1":Ljava/lang/String;
    const-string v3, "^02[0-9]{8,9}"

    .line 214
    .local v3, "regex2":Ljava/lang/String;
    const-string v5, "^0[3-9][0-9]{9,10}"

    .line 216
    .local v5, "regex3":Ljava/lang/String;
    const-string v2, "010"

    .line 217
    .local v2, "regex1f":Ljava/lang/String;
    const-string v4, "02[0-9]"

    .line 218
    .local v4, "regex2f":Ljava/lang/String;
    const-string v6, "0[3-9][0-9]{2}"

    .line 220
    .local v6, "regex3f":Ljava/lang/String;
    const/4 v0, 0x0

    .line 222
    .local v0, "number":Ljava/lang/String;
    const/16 v7, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xc

    if-gt v7, v8, :cond_1

    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 224
    const-string v7, ""

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 233
    move-object v0, p0

    :cond_2
    move-object p0, v0

    .line 236
    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 226
    const-string v7, ""

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static removePrefix12520(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object p0

    .line 246
    :cond_1
    const-string v1, "12520"

    .line 248
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 249
    .local v0, "len":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 251
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static setCompletelyReject(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_completely_reject"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setHarassIntercept(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_harass_intercept"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setInterceptMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_intercept_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    return-void
.end method

.method public static setInterceptRemind(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_intercept_remind"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setInterceptRingingOnce(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_intercept_ringing_once"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTimingIntercept(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_timing_intercept"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTimingInterceptMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_timing_intercept_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    return-void
.end method
