.class public Lcom/android/internal/telephony/TelephonyPhoneUtils;
.super Ljava/lang/Object;
.source "TelephonyPhoneUtils.java"


# static fields
.field public static final CRACK_SHOW3G:Z

.field public static final NEED_LOCKDDS:Z

.field public static final SCmcc:I = 0x0

.field public static final SCtcc:I = 0x2

.field public static final SCu:I = 0x1

.field public static final SOthers:I = 0x5

.field private static customEhplmn:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 12
    const-string v0, "CN-YD-B"

    const-string v3, "ro.product.customize.bbk"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CN-YD-A"

    const-string v3, "ro.product.customize.bbk"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v3, "persist.sys.ril.ddslock"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/TelephonyPhoneUtils;->NEED_LOCKDDS:Z

    .line 13
    const-string v0, "1"

    const-string v3, "persist.sys.ril.show3g"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyPhoneUtils;->CRACK_SHOW3G:Z

    .line 19
    const/16 v0, 0x17

    new-array v0, v0, [[Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "46000"

    aput-object v4, v3, v1

    const-string v4, "46002"

    aput-object v4, v3, v2

    const-string v4, "46007"

    aput-object v4, v3, v7

    const-string v4, "46008"

    aput-object v4, v3, v8

    aput-object v3, v0, v1

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "46003"

    aput-object v4, v3, v1

    const-string v4, "46011"

    aput-object v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "46001"

    aput-object v4, v3, v1

    const-string v4, "46009"

    aput-object v4, v3, v2

    aput-object v3, v0, v7

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "45502"

    aput-object v4, v3, v1

    const-string v4, "45507"

    aput-object v4, v3, v2

    aput-object v3, v0, v8

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "45400"

    aput-object v4, v3, v1

    const-string v4, "45402"

    aput-object v4, v3, v2

    const-string v4, "45418"

    aput-object v4, v3, v7

    aput-object v3, v0, v9

    const/4 v3, 0x5

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "45403"

    aput-object v5, v4, v1

    const-string v5, "45404"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "45412"

    aput-object v5, v4, v1

    const-string v5, "45413"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "45416"

    aput-object v5, v4, v1

    const-string v5, "45419"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "45501"

    aput-object v5, v4, v1

    const-string v5, "45504"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "45503"

    aput-object v5, v4, v1

    const-string v5, "45505"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "45002"

    aput-object v5, v4, v1

    const-string v5, "45008"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "52501"

    aput-object v5, v4, v1

    const-string v5, "52502"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "52000"

    aput-object v5, v4, v1

    const-string v5, "52004"

    aput-object v5, v4, v2

    const-string v5, "52099"

    aput-object v5, v4, v7

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "43602"

    aput-object v5, v4, v1

    const-string v5, "43612"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "52010"

    aput-object v5, v4, v1

    const-string v5, "52099"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "24001"

    aput-object v5, v4, v1

    const-string v5, "24005"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "26207"

    aput-object v5, v4, v1

    const-string v5, "26208"

    aput-object v5, v4, v2

    aput-object v4, v0, v3

    const/16 v3, 0x11

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "23430"

    aput-object v5, v4, v1

    const-string v5, "23431"

    aput-object v5, v4, v2

    const-string v5, "23432"

    aput-object v5, v4, v7

    aput-object v4, v0, v3

    const/16 v3, 0x12

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "72402"

    aput-object v5, v4, v1

    const-string v5, "72403"

    aput-object v5, v4, v2

    const-string v5, "72404"

    aput-object v5, v4, v7

    aput-object v4, v0, v3

    const/16 v3, 0x13

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "72406"

    aput-object v5, v4, v1

    const-string v5, "72410"

    aput-object v5, v4, v2

    const-string v5, "72411"

    aput-object v5, v4, v7

    const-string v5, "72423"

    aput-object v5, v4, v8

    aput-object v4, v0, v3

    const/16 v3, 0x14

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "72432"

    aput-object v5, v4, v1

    const-string v5, "72433"

    aput-object v5, v4, v2

    const-string v5, "72434"

    aput-object v5, v4, v7

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "31026"

    aput-object v5, v4, v1

    const-string v5, "31031"

    aput-object v5, v4, v2

    const-string v5, "310160"

    aput-object v5, v4, v7

    const-string v5, "310200"

    aput-object v5, v4, v8

    const-string v5, "310210"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string v6, "310220"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "310230"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "310240"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "310250"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "310260"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "310270"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "310660"

    aput-object v6, v4, v5

    aput-object v4, v0, v3

    const/16 v3, 0x16

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "310150"

    aput-object v5, v4, v1

    const-string v1, "310170"

    aput-object v1, v4, v2

    const-string v1, "310380"

    aput-object v1, v4, v7

    const-string v1, "310410"

    aput-object v1, v4, v8

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/TelephonyPhoneUtils;->customEhplmn:[[Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    .line 12
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOperatorForSimNameByIccid(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const-string v0, "UNKNOWN"

    .line 164
    .local v0, "defaultSimName":Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sIsOversea:Z

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 188
    .end local v0    # "defaultSimName":Ljava/lang/String;
    .local v1, "defaultSimName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 168
    .end local v1    # "defaultSimName":Ljava/lang/String;
    .restart local v0    # "defaultSimName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyPhoneUtils;->getOperatorTypeByIccid(Ljava/lang/String;)I

    move-result v2

    .line 169
    .local v2, "opType":I
    packed-switch v2, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 188
    .end local v0    # "defaultSimName":Ljava/lang/String;
    .restart local v1    # "defaultSimName":Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v1    # "defaultSimName":Ljava/lang/String;
    .restart local v0    # "defaultSimName":Ljava/lang/String;
    :pswitch_0
    const v3, 0x30e0157

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    goto :goto_1

    .line 175
    :pswitch_1
    const v3, 0x30e0155

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_1

    .line 179
    :pswitch_2
    const v3, 0x30e0156

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static checkOperatorForSimNameByImsi(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const-string v0, "UNKNOWN"

    .line 135
    .local v0, "defaultSimName":Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sIsOversea:Z

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 159
    .end local v0    # "defaultSimName":Ljava/lang/String;
    .local v1, "defaultSimName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 139
    .end local v1    # "defaultSimName":Ljava/lang/String;
    .restart local v0    # "defaultSimName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyPhoneUtils;->getOperatorTypeByImsi(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "opType":I
    packed-switch v2, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 159
    .end local v0    # "defaultSimName":Ljava/lang/String;
    .restart local v1    # "defaultSimName":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v1    # "defaultSimName":Ljava/lang/String;
    .restart local v0    # "defaultSimName":Ljava/lang/String;
    :pswitch_0
    const v3, 0x30e0157

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    goto :goto_1

    .line 146
    :pswitch_1
    const v3, 0x30e0155

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    goto :goto_1

    .line 150
    :pswitch_2
    const v3, 0x30e0156

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getOperatorTypeByIccid(Ljava/lang/String;)I
    .locals 2
    .param p0, "iccid"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x5

    .line 110
    .local v0, "opType":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    const-string v1, "898603"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "898611"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "898612"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8985302"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    :cond_0
    const/4 v0, 0x2

    .line 130
    :cond_1
    :goto_0
    return v0

    .line 116
    :cond_2
    const-string v1, "898600"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "898602"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "898607"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "898608"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "898675"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "8985212"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_4
    const-string v1, "898601"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "898609"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "8985207"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getOperatorTypeByImsi(Ljava/lang/String;)I
    .locals 2
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x5

    .line 84
    .local v0, "opType":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46011"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "20404"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45404"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45502"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45507"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46012"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    :cond_0
    const/4 v0, 0x2

    .line 105
    :cond_1
    :goto_0
    return v0

    .line 93
    :cond_2
    const-string v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46007"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46008"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_4
    const-string v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "46009"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "45407"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCNYDCracked()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    const-string v4, "persist.radio.vivo.cracked"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "cracked":I
    const-string v4, "persist.sys.ril.crackdds"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, "crackDDS":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method public static isInChina()Z
    .locals 3

    .prologue
    .line 193
    const-string v1, "persist.radio.vivo.mcc"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "Mcc":Ljava/lang/String;
    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "454"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "455"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "opeartor1"    # Ljava/lang/String;
    .param p1, "operator2"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "isServingPlmnInGroup":Z
    const/4 v1, 0x0

    .line 52
    .local v1, "isHomePlmnInGroup":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 79
    :cond_1
    :goto_0
    return v4

    .line 56
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/TelephonyPhoneUtils;->customEhplmn:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 62
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/TelephonyPhoneUtils;->customEhplmn:[[Ljava/lang/String;

    aget-object v6, v6, v0

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 63
    sget-object v6, Lcom/android/internal/telephony/TelephonyPhoneUtils;->customEhplmn:[[Ljava/lang/String;

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    const/4 v2, 0x1

    .line 66
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/TelephonyPhoneUtils;->customEhplmn:[[Ljava/lang/String;

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 67
    const/4 v1, 0x1

    .line 62
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 72
    :cond_5
    if-ne v2, v4, :cond_6

    if-eq v1, v4, :cond_1

    .line 75
    :cond_6
    const/4 v2, 0x0

    .line 76
    const/4 v1, 0x0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "j":I
    :cond_7
    move v4, v5

    .line 79
    goto :goto_0
.end method
