.class public Lcom/vivo/common/provider/SmartDialer;
.super Ljava/lang/Object;
.source "SmartDialer.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.contacts.smartdialer"

.field public static final CONTACT_ID_INDEX:I = 0xd

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE_INDEX:I = 0x5

.field public static final EMAIL_ADDRESS_INDEX:I = 0xc

.field public static final END_MASK:I = 0x1fff

.field private static final HIGHLIGHT_COLOR:I = -0xf0831e

.field public static final HISTORY_TYPE_CALL_ANSWER:I = 0x1

.field public static final HISTORY_TYPE_CALL_ANSWER_VT:I = 0x9

.field public static final HISTORY_TYPE_CALL_DIAL:I = 0x2

.field public static final HISTORY_TYPE_CALL_DIAL_VT:I = 0xa

.field public static final HISTORY_TYPE_CALL_LOST:I = 0x3

.field public static final HISTORY_TYPE_CALL_LOST_VT:I = 0xb

.field public static final HISTORY_TYPE_EXCHANGE_ACCOUNT:I = 0xd

.field public static final HISTORY_TYPE_GOOGLE_ACCOUNT:I = 0xc

.field public static final HISTORY_TYPE_INDEX:I = 0x4

.field public static final HISTORY_TYPE_LAST_CALLED_ACCOUNT:I = 0xf

.field public static final HISTORY_TYPE_MSG:I = 0x4

.field public static final HISTORY_TYPE_NO_USED:I = 0x5

.field public static final HISTORY_TYPE_OTHER_ACCOUNT:I = 0xe

.field public static final HZ_FLAG_POS:I = 0x1a

.field public static final INDICATE_PHONE_SIM_INDEX:I = 0xb

.field public static final MATCH_END_INDEX:I = 0x7

.field public static final MATCH_START_INDEX:I = 0x6

.field public static final MATCH_TYPE_EMAIL:I = 0x5

.field public static final MATCH_TYPE_FULL:I = 0x0

.field public static final MATCH_TYPE_INDEX:I = 0x3

.field public static final MATCH_TYPE_JP:I = 0x1

.field public static final MATCH_TYPE_JP_QP:I = 0x2

.field public static final MATCH_TYPE_NUMBER:I = 0x4

.field public static final MATCH_TYPE_QP:I = 0x3

.field public static final NAME_INDEX:I = 0x1

.field public static final NUM_OF_BINARY_DIGITS:I = 0xd

.field public static final PHONE_NUMBER_INDEX:I = 0x2

.field public static final PHOTO_ID_INDEX:I = 0x0

.field public static final SECTION_MATCHED_INDEX:I = 0x9

.field public static final SECTION_NAME_INDEX:I = 0x8

.field public static final SECTION_NUMBER_INDEX:I = 0xa

.field public static final SMART_SEARCH_TYPE_NOMAL:Ljava/lang/String; = "SmartSearchExcludingEmail"

.field public static final SMART_SEARCH_TYPE_PLUS_EMAIL:Ljava/lang/String; = "SmartSearchIncludingEmail"

.field public static final START_POS:I = 0xd

.field private static final TAG:Ljava/lang/String; = "SmartDialer"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://com.android.contacts.smartdialer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doSearch(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "SmartSearchExcludingEmail"

    invoke-static {p0, p1, v0}, Lcom/vivo/common/provider/SmartDialer;->doSearch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static doSearch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/common/provider/SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static formatHightLight_JP(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 201
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v8, ""

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 204
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    const/4 v8, 0x6

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 205
    .local v4, "matchStart":I
    const/4 v8, 0x7

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 206
    .local v3, "matchEnd":I
    const/16 v8, 0x8

    invoke-static {p2, v8}, Lcom/vivo/common/provider/SmartDialer;->getIntArray(Landroid/database/Cursor;I)[I

    move-result-object v5

    .line 208
    .local v5, "sectionName":[I
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 211
    array-length v8, v5

    if-lt v3, v8, :cond_1

    .line 213
    const-string v8, "SmartDialer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wwww matchEnd >= size of sectionName! name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    return-object v0

    .line 218
    :cond_1
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 219
    aget v7, v5, v2

    .line 221
    .local v7, "tmp":I
    const v8, -0x4000001

    and-int/2addr v8, v7

    shr-int/lit8 v6, v8, 0xd

    .line 223
    .local v6, "start":I
    move v1, v6

    .line 224
    .local v1, "end":I
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, -0xf0831e

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v9, v1, 0x1

    const/16 v10, 0x11

    invoke-virtual {v0, v8, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static formatHightLight_JP_QP(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 232
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v13, ""

    invoke-direct {v1, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    .local v1, "buf":Landroid/text/SpannableStringBuilder;
    const/4 v11, -0x1

    .line 236
    .local v11, "start_sec":I
    const/16 v13, 0x9

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/vivo/common/provider/SmartDialer;->getIntArray(Landroid/database/Cursor;I)[I

    move-result-object v6

    .line 237
    .local v6, "sectionMatched":[I
    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/vivo/common/provider/SmartDialer;->getIntArray(Landroid/database/Cursor;I)[I

    move-result-object v7

    .line 238
    .local v7, "sectionName":[I
    const/16 v13, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/vivo/common/provider/SmartDialer;->getIntArray(Landroid/database/Cursor;I)[I

    move-result-object v8

    .line 241
    .local v8, "sectionNumber":[I
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 243
    array-length v13, v6

    add-int/lit8 v13, v13, -0x1

    aget v13, v6, v13

    shr-int/lit8 v10, v13, 0xd

    .line 244
    .local v10, "start_matched":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v13, v8

    if-ge v3, v13, :cond_0

    .line 245
    aget v13, v8, v3

    shr-int/lit8 v9, v13, 0xd

    .line 247
    .local v9, "start":I
    if-ne v9, v10, :cond_2

    .line 249
    move v11, v3

    .line 255
    .end local v9    # "start":I
    :cond_0
    const/4 v13, -0x1

    if-ne v11, v13, :cond_3

    .line 273
    :cond_1
    return-object v1

    .line 244
    .restart local v9    # "start":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v9    # "start":I
    :cond_3
    const/4 v3, 0x0

    :goto_1
    array-length v13, v6

    if-ge v3, v13, :cond_1

    .line 259
    array-length v13, v6

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v3

    add-int/2addr v13, v11

    aget v12, v7, v13

    .line 260
    .local v12, "tmp":I
    shr-int/lit8 v13, v12, 0x1a

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 261
    const v13, -0x4000001

    and-int/2addr v13, v12

    shr-int/lit8 v9, v13, 0xd

    .line 262
    .restart local v9    # "start":I
    move v2, v9

    .line 270
    .local v2, "end":I
    :goto_2
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const v14, -0xf0831e

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v14, v2, 0x1

    const/16 v15, 0x11

    invoke-virtual {v1, v13, v9, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    .end local v2    # "end":I
    .end local v9    # "start":I
    :cond_4
    const v13, -0x4000001

    and-int/2addr v13, v12

    shr-int/lit8 v9, v13, 0xd

    .line 265
    .restart local v9    # "start":I
    aget v12, v6, v3

    .line 266
    shr-int/lit8 v5, v12, 0xd

    .line 267
    .local v5, "match_start":I
    and-int/lit16 v4, v12, 0x1fff

    .line 268
    .local v4, "match_end":I
    sub-int v13, v4, v5

    add-int v2, v9, v13

    .restart local v2    # "end":I
    goto :goto_2
.end method

.method public static formatHightLight_NUM(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 173
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 176
    .local v2, "matchStart":I
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 178
    .local v1, "matchEnd":I
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xf0831e

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 182
    return-object v0
.end method

.method public static formatHightLight_QP(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 278
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v8, ""

    invoke-direct {v1, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 281
    .local v1, "buf":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 283
    const/16 v8, 0x8

    invoke-static {p2, v8}, Lcom/vivo/common/provider/SmartDialer;->getIntArray(Landroid/database/Cursor;I)[I

    move-result-object v5

    .line 285
    .local v5, "sectionName":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v7, v0, v3

    .line 286
    .local v7, "tmp":I
    const v8, -0x4000001

    and-int/2addr v8, v7

    shr-int/lit8 v6, v8, 0xd

    .line 287
    .local v6, "start":I
    and-int/lit16 v2, v7, 0x1fff

    .line 288
    .local v2, "end":I
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, -0xf0831e

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v9, v2, 0x1

    const/16 v10, 0x11

    invoke-virtual {v1, v8, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "end":I
    .end local v6    # "start":I
    .end local v7    # "tmp":I
    :cond_0
    return-object v1
.end method

.method public static formatHightLight_name_NUM(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 188
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 191
    .local v2, "matchStart":I
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 193
    .local v1, "matchEnd":I
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xf0831e

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 196
    return-object v0
.end method

.method public static getHightLightInterval(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 15
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "name":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p1, "quan_pin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v1, "ans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 319
    .local v11, "size":I
    sub-int v13, p3, p2

    add-int/lit8 v7, v13, 0x1

    .line 321
    .local v7, "len":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v11, :cond_1

    .line 323
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 324
    .local v5, "item":I
    shr-int/lit8 v12, v5, 0xd

    .line 325
    .local v12, "st":I
    and-int/lit16 v3, v5, 0x1fff

    .line 327
    .local v3, "ed":I
    move/from16 v0, p2

    if-ge v3, v0, :cond_0

    .line 321
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    :cond_0
    move/from16 v0, p3

    if-le v12, v0, :cond_2

    .line 372
    .end local v3    # "ed":I
    .end local v5    # "item":I
    .end local v12    # "st":I
    :cond_1
    return-object v1

    .line 330
    .restart local v3    # "ed":I
    .restart local v5    # "item":I
    .restart local v12    # "st":I
    :cond_2
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 332
    .local v9, "name_item":I
    shr-int/lit8 v13, v9, 0x1a

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 334
    const v13, -0x4000001

    and-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_3
    const v13, -0x4000001

    and-int/2addr v9, v13

    .line 339
    shr-int/lit8 v10, v9, 0xd

    .line 340
    .local v10, "name_st":I
    and-int/lit16 v8, v9, 0x1fff

    .line 343
    .local v8, "name_ed":I
    move/from16 v0, p2

    if-gt v12, v0, :cond_4

    move/from16 v0, p3

    if-gt v3, v0, :cond_4

    .line 345
    sub-int v2, p2, v12

    .line 346
    .local v2, "delta":I
    add-int v13, v10, v2

    shl-int/lit8 v6, v13, 0xd

    .line 347
    .local v6, "item_add":I
    or-int/2addr v6, v8

    .line 349
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 351
    .end local v2    # "delta":I
    .end local v6    # "item_add":I
    :cond_4
    move/from16 v0, p2

    if-gt v12, v0, :cond_5

    move/from16 v0, p3

    if-le v3, v0, :cond_5

    .line 353
    sub-int v2, p2, v12

    .line 354
    .restart local v2    # "delta":I
    add-int v13, v10, v2

    shl-int/lit8 v6, v13, 0xd

    .line 355
    .restart local v6    # "item_add":I
    add-int v13, v10, v2

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, -0x1

    or-int/2addr v6, v13

    .line 357
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    .end local v2    # "delta":I
    .end local v6    # "item_add":I
    :cond_5
    move/from16 v0, p2

    if-le v12, v0, :cond_6

    move/from16 v0, p3

    if-gt v3, v0, :cond_6

    .line 361
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    :cond_6
    sub-int v2, p3, v12

    .line 366
    .restart local v2    # "delta":I
    shl-int/lit8 v6, v10, 0xd

    .line 368
    .restart local v6    # "item_add":I
    add-int v13, v10, v2

    or-int/2addr v6, v13

    .line 369
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getIntArray(Landroid/database/Cursor;I)[I
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sectionColumnIndex"    # I

    .prologue
    .line 296
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 298
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 299
    .local v3, "j":I
    array-length v4, v0

    shr-int/lit8 v4, v4, 0x2

    new-array v2, v4, [I

    .line 301
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 303
    shl-int/lit8 v3, v1, 0x2

    .line 304
    aget-byte v4, v0, v3

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v1

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-object v2
.end method

.method public static prepare(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/common/provider/SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public static release(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/common/provider/SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public static startServiceIfNecessary(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/common/provider/SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 134
    return-void
.end method
