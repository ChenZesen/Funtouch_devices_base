.class public Lcom/vivo/common/autobrightness/CollectConfiguration;
.super Ljava/lang/Object;
.source "CollectConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/CollectConfiguration$Config;
    }
.end annotation


# static fields
.field private static final PA_REX_ABLCONFIG:Ljava/util/regex/Pattern;

.field private static final PA_REX_PARAMETER:Ljava/util/regex/Pattern;

.field private static final PA_REX_PUBLIC_STATIC:Ljava/util/regex/Pattern;

.field private static final PA_REX_VOID:Ljava/util/regex/Pattern;

.field private static final REX_ABLCONFIG:Ljava/lang/String; = ".*\\.AblConfig\\."

.field private static final REX_PARAMETER:Ljava/lang/String; = "\\(\\w\\w*"

.field private static final REX_PUBLIC_STATIC:Ljava/lang/String; = "^public static "

.field private static final REX_VOID:Ljava/lang/String; = " void "

.field private static final TAG:Ljava/lang/String; = "CollectConfiguration"

.field private static mConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/autobrightness/CollectConfiguration$Config;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/vivo/common/autobrightness/CollectConfiguration;

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, " void "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->PA_REX_VOID:Ljava/util/regex/Pattern;

    .line 22
    const-string v0, "^public static "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->PA_REX_PUBLIC_STATIC:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, ".*\\.AblConfig\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->PA_REX_ABLCONFIG:Ljava/util/regex/Pattern;

    .line 24
    const-string v0, "\\(\\w\\w*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->PA_REX_PARAMETER:Ljava/util/regex/Pattern;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->mInstance:Lcom/vivo/common/autobrightness/CollectConfiguration;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->mConfigurations:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CollectConfiguration;->updateStaticConfiguration()V

    .line 53
    return-void
.end method

.method private static cutName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, ".*\\.AblConfig\\."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^is"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^get"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\W"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->mInstance:Lcom/vivo/common/autobrightness/CollectConfiguration;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->mInstance:Lcom/vivo/common/autobrightness/CollectConfiguration;

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/vivo/common/autobrightness/CollectConfiguration;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/CollectConfiguration;-><init>()V

    sput-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->mInstance:Lcom/vivo/common/autobrightness/CollectConfiguration;

    .line 60
    sget-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->mInstance:Lcom/vivo/common/autobrightness/CollectConfiguration;

    goto :goto_0
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;)V
    .locals 10
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "mName":Ljava/lang/String;
    sget-object v9, Lcom/vivo/common/autobrightness/CollectConfiguration;->PA_REX_PUBLIC_STATIC:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 96
    .local v5, "ps":Z
    sget-object v9, Lcom/vivo/common/autobrightness/CollectConfiguration;->PA_REX_VOID:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_1

    move v4, v7

    .line 97
    .local v4, "nonV":Z
    :goto_1
    sget-object v9, Lcom/vivo/common/autobrightness/CollectConfiguration;->PA_REX_ABLCONFIG:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 98
    .local v0, "abl":Z
    sget-object v9, Lcom/vivo/common/autobrightness/CollectConfiguration;->PA_REX_PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    move v3, v7

    .line 99
    .local v3, "noPa":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ps:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nonV:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " abl:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " noPa:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "mInfo":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/common/autobrightness/CollectConfiguration;->log(Ljava/lang/String;)V

    .line 103
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "ret":Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/CollectConfiguration;->cutName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 105
    .end local v6    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .end local v0    # "abl":Z
    .end local v1    # "mInfo":Ljava/lang/String;
    .end local v3    # "noPa":Z
    .end local v4    # "nonV":Z
    :cond_1
    move v4, v8

    .line 96
    goto/16 :goto_1

    .restart local v0    # "abl":Z
    .restart local v4    # "nonV":Z
    :cond_2
    move v3, v8

    .line 98
    goto/16 :goto_2

    .line 109
    .restart local v1    # "mInfo":Ljava/lang/String;
    .restart local v3    # "noPa":Z
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not invoked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/common/autobrightness/CollectConfiguration;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "CollectConfiguration"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method private updateStaticConfiguration()V
    .locals 9

    .prologue
    .line 75
    const-class v1, Lcom/vivo/common/autobrightness/AblConfig;

    .line 76
    .local v1, "clz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 77
    .local v5, "methods":[Ljava/lang/reflect/Method;
    const-string v6, "ro.product.model.bbk"

    const-string v7, "ro.product.model.bbk"

    const-string v8, "unkown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v6, "ro.vivo.product.version"

    const-string v7, "ro.vivo.product.version"

    const-string v8, "unkown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 80
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v4}, Lcom/vivo/common/autobrightness/CollectConfiguration;->invokeMethod(Ljava/lang/reflect/Method;)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method


# virtual methods
.method public addConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v1, Lcom/vivo/common/autobrightness/CollectConfiguration;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    if-nez p1, :cond_0

    .line 67
    :try_start_0
    const-string v0, "CollectConfiguration"

    const-string v2, "AutoBrightnessWARNING:addConfiguration: key is null!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    monitor-exit v1

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/vivo/common/autobrightness/CollectConfiguration;->mConfigurations:Ljava/util/ArrayList;

    new-instance v2, Lcom/vivo/common/autobrightness/CollectConfiguration$Config;

    invoke-direct {v2, p1, p2}, Lcom/vivo/common/autobrightness/CollectConfiguration$Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/vivo/common/autobrightness/CollectConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    const-string v1, "{\n"

    .line 124
    .local v1, "ret":Ljava/lang/String;
    sget-object v3, Lcom/vivo/common/autobrightness/CollectConfiguration;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 125
    :try_start_0
    sget-object v2, Lcom/vivo/common/autobrightness/CollectConfiguration;->mConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "mConfigurations size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/vivo/common/autobrightness/CollectConfiguration;->mConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/vivo/common/autobrightness/CollectConfiguration;->mConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/vivo/common/autobrightness/CollectConfiguration;->mConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/common/autobrightness/CollectConfiguration$Config;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/CollectConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "}\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .end local v0    # "i":I
    :goto_1
    monitor-exit v3

    .line 135
    return-object v1

    .line 132
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "mConfigurations IS EMPTY!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
