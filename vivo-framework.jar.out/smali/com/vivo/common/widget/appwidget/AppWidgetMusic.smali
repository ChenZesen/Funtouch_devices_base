.class public Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
.super Ljava/lang/Object;
.source "AppWidgetMusic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;,
        Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;,
        Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    }
.end annotation


# static fields
.field private static final ACTION_LYRICE:Ljava/lang/String; = "com.android.music.update.photo"

.field private static final APPWIDGET_UPDATENEEDCLEAR:Ljava/lang/String; = "APPWIDGET_UPDATENEEDCLEAR"

.field private static final FORCE_CLEAR_MUSIC:Ljava/lang/String; = "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

.field private static final KILL_SERVICE:Ljava/lang/String; = "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

.field private static final MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field private static final MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field private static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final MUSICCHANGE:I = 0x3

.field private static final MUSICINFOHANDLER:I = 0x2

.field private static final MUSICQUERY:I = 0x4

.field private static final PHOTO_IMAGE:I = 0x1

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field public static final RINGCLIP_CHANGED:Ljava/lang/String; = "com.android.ringclip.changed"

.field private static final TAG:Ljava/lang/String; = "AppWidgetMusic"

.field private static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field MusicRecevier:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private curRandomImageId:I

.field private handlerAction:Ljava/lang/String;

.field private images:[Ljava/lang/Integer;

.field private isNext:Z

.field private mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

.field private mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageManagerWrapper:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;

.field public musicHandler:Landroid/os/Handler;

.field private needClear:Z

.field private prePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;Landroid/content/Context;[Ljava/lang/Integer;)V
    .locals 3
    .param p1, "mMusicUtilWidget"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "images"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->images:[Ljava/lang/Integer;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I

    .line 79
    iput-boolean v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->needClear:Z

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    .line 83
    iput-boolean v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->isNext:Z

    .line 84
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mStorageManagerWrapper:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;

    .line 85
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 417
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    .line 536
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->MusicRecevier:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    .line 92
    iput-object p2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->images:[Ljava/lang/Integer;

    .line 94
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->setMusicPhoto(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->handMusicInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->changeMusicInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;JJ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->getBitmap(JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->images:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I

    return p1
.end method

.method static synthetic access$802(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->needClear:Z

    return p1
.end method

.method static synthetic access$902(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->handlerAction:Ljava/lang/String;

    return-object p1
.end method

.method private changeMusicInfo()V
    .locals 2

    .prologue
    .line 717
    const-string v0, "AppWidgetMusic"

    const-string v1, "changeMusicInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->queryMusicDatabase()V

    .line 719
    return-void
.end method

.method private getBitmap(JJ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "song_id"    # J
    .param p3, "album_id"    # J

    .prologue
    .line 477
    iget-object v7, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 478
    .local v4, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 480
    .local v0, "btm":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v7, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 481
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 483
    const/4 v2, 0x0

    .line 486
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 487
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 496
    if-eqz v2, :cond_0

    .line 498
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 506
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://media/external/audio/media/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/albumart"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 511
    .local v6, "uri1":Landroid/net/Uri;
    :try_start_2
    iget-object v7, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 512
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 514
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 515
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    .line 523
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "uri1":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-object v0

    .line 489
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 496
    if-eqz v2, :cond_0

    .line 498
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 501
    :catch_1
    move-exception v7

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v7

    .line 496
    if-eqz v2, :cond_2

    .line 498
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 503
    :cond_2
    :goto_2
    throw v7

    .line 501
    :catch_2
    move-exception v7

    goto :goto_0

    :catch_3
    move-exception v8

    goto :goto_2

    .line 518
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v6    # "uri1":Landroid/net/Uri;
    :catch_4
    move-exception v7

    goto :goto_1
.end method

.method private getFiltString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 688
    const-string v3, ""

    .line 691
    .local v3, "filtString":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    const-string v6, "com.android.bbkmusic"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 692
    .local v0, "f1Context":Landroid/content/Context;
    const-string v5, "Music"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 694
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "FILT_DURATION"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 696
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND duration>=60000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    :cond_0
    const-string v2, " AND bucket_id NOT IN "

    .line 699
    .local v2, "filtSection":Ljava/lang/String;
    const-string v5, "FILT_FOLDER_PATH"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "filtPath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 709
    .end local v0    # "f1Context":Landroid/content/Context;
    .end local v1    # "filtPath":Ljava/lang/String;
    .end local v2    # "filtSection":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-object v3

    .line 706
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private getMusicIntent(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 528
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.bbkmusic"

    const-string v3, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .local v1, "serviceName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.playposition"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "FromWidgetPos"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 531
    const-string v2, "app_flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 533
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 534
    return-void
.end method

.method private handMusicInfo()V
    .locals 4

    .prologue
    .line 723
    const-string v0, "AppWidgetMusic"

    const-string v1, "handMusicInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->AlbumImg:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SongName:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->AlbumImg:[J

    array-length v0, v0

    if-lez v0, :cond_2

    .line 727
    const-string v0, "AppWidgetMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prePosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v0, "AppWidgetMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMusicInfo.CurPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v2, v2, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v1, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    if-eq v0, v1, :cond_1

    .line 731
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v1, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v2, v2, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->AlbumImg:[J

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v3, v3, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    aget-wide v2, v2, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->setMusicPhoto(JJ)V

    .line 736
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I

    .line 743
    :cond_1
    :goto_0
    return-void

    .line 741
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->getRandom()V

    goto :goto_0
.end method

.method private setMusicPhoto(JJ)V
    .locals 7
    .param p1, "song_id"    # J
    .param p3, "album_id"    # J

    .prologue
    .line 446
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;JJ)V

    invoke-virtual {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->start()V

    .line 465
    return-void
.end method


# virtual methods
.method public entryMusic()V
    .locals 9

    .prologue
    const/high16 v8, 0x10000000

    const/high16 v7, 0x200000

    .line 273
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-boolean v5, v5, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->isPlaying:Z

    if-eqz v5, :cond_0

    .line 275
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.bbkmusic"

    const-string v6, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v3, "serviceName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "APPWIDGET_UPDATEFLAG"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 278
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "it":Landroid/content/Intent;
    const-string v5, "com.android.music.finishself"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v1    # "it":Landroid/content/Intent;
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v2, "mediaplay":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.bbkmusic"

    const-string v6, "com.android.bbkmusic.MediaPlaybackActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 285
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    const-string v5, "fromwidget"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "mediaplay":Landroid/content/Intent;
    .end local v3    # "serviceName":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 292
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    iget-boolean v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->needClear:Z

    if-eqz v5, :cond_1

    .line 294
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.bbkmusic"

    const-string v6, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .restart local v3    # "serviceName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "APPWIDGET_UPDATEFLAG"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v1    # "it":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 298
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "it":Landroid/content/Intent;
    const-string v5, "com.android.music.finishself"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v1    # "it":Landroid/content/Intent;
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->needClear:Z

    .line 302
    .end local v1    # "it":Landroid/content/Intent;
    .end local v3    # "serviceName":Landroid/content/ComponentName;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v4, "trackbrowser":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.bbkmusic"

    const-string v6, "com.android.bbkmusic.WidgetToTrackActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .restart local v0    # "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 305
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getAllSongsCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 677
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->getFiltString()Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, "filtString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v1, " AND is_music=1"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 683
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getRandom()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 395
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 396
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->images:[Ljava/lang/Integer;

    iget v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->images:[Ljava/lang/Integer;

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    iget-boolean v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->isNext:Z

    if-eqz v2, :cond_1

    .line 399
    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    .line 405
    :goto_0
    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    if-le v2, v6, :cond_2

    .line 407
    const/4 v2, 0x0

    iput v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    .line 413
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    invoke-interface {v2, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;->emptyMusic(Landroid/graphics/Bitmap;)V

    .line 414
    return-void

    .line 403
    :cond_1
    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    goto :goto_0

    .line 409
    :cond_2
    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    if-gez v2, :cond_0

    .line 411
    iput v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->curRandomImageId:I

    goto :goto_1
.end method

.method public getSingerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SingerName:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SingerName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v1, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    aget-object v0, v0, v1

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SongName:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SongName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v1, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    aget-object v0, v0, v1

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public nextSong()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v1, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    .line 176
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    array-length v0, v0

    if-lez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v1, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    .line 188
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->isNext:Z

    .line 189
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->getMusicIntent(I)V

    .line 190
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    goto :goto_0
.end method

.method public playPause()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.bbkmusic"

    const-string v2, "com.android.bbkmusic.MediaPlaybackService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 216
    return-void
.end method

.method public playSongByPos(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 256
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v2, v2, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->allSongId:[J

    if-eqz v2, :cond_0

    .line 258
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.bbkmusic"

    const-string v3, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v1, "sServiceName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.orderplayposition"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    const-string v2, "position"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v2, "PLAYLIST"

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v3, v3, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->allSongId:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 263
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sServiceName":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method public preSong()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 153
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v1, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    .line 154
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    array-length v0, v0

    if-lez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    if-ne v0, v2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget-object v1, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    .line 165
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->isNext:Z

    .line 166
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iget v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->getMusicIntent(I)V

    .line 167
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    iput v2, v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    goto :goto_0
.end method

.method public queryMusicDatabase()V
    .locals 1

    .prologue
    .line 633
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V

    invoke-virtual {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;->start()V

    .line 672
    return-void
.end method

.method public registBroadCast()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v2, "com.android.music.update.photo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v2, "APPWIDGET_UPDATENEEDCLEAR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v2, "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v2, "com.android.ringclip.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v1, "filter2":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->MusicRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->MusicRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 25
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v14, v0

    .line 347
    .local v14, "oldW":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v12, v0

    .line 348
    .local v12, "oldH":F
    move/from16 v0, p2

    int-to-float v11, v0

    .line 349
    .local v11, "newW":F
    move/from16 v0, p3

    int-to-float v9, v0

    .line 351
    .local v9, "newH":F
    div-float v13, v14, v12

    .line 352
    .local v13, "oldRate":F
    div-float v10, v11, v9

    .line 356
    .local v10, "newRate":F
    cmpl-float v21, v13, v10

    if-ltz v21, :cond_0

    .line 359
    mul-float v19, v10, v12

    .line 360
    .local v19, "tempWidth":F
    sub-float v21, v14, v19

    const/high16 v22, 0x40000000    # 2.0f

    div-float v8, v21, v22

    .line 361
    .local v8, "left":F
    const/16 v20, 0x0

    .line 362
    .local v20, "top":F
    add-float v16, v8, v19

    .line 363
    .local v16, "right":F
    move v5, v12

    .line 375
    .end local v19    # "tempWidth":F
    .local v5, "bottom":F
    :goto_0
    float-to-int v0, v11

    move/from16 v21, v0

    float-to-int v0, v9

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 376
    .local v15, "output":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 377
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Rect;

    float-to-int v0, v8

    move/from16 v21, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    float-to-int v0, v5

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 378
    .local v17, "src":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    float-to-int v0, v11

    move/from16 v23, v0

    float-to-int v0, v9

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 379
    .local v7, "dst":Landroid/graphics/Rect;
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v6, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 380
    return-object v15

    .line 368
    .end local v5    # "bottom":F
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v8    # "left":F
    .end local v15    # "output":Landroid/graphics/Bitmap;
    .end local v16    # "right":F
    .end local v17    # "src":Landroid/graphics/Rect;
    .end local v20    # "top":F
    :cond_0
    div-float v18, v14, v10

    .line 369
    .local v18, "tempHeight":F
    const/4 v8, 0x0

    .line 370
    .restart local v8    # "left":F
    sub-float v21, v12, v18

    const/high16 v22, 0x40000000    # 2.0f

    div-float v20, v21, v22

    .line 371
    .restart local v20    # "top":F
    move/from16 v16, v14

    .line 372
    .restart local v16    # "right":F
    add-float v5, v20, v18

    .restart local v5    # "bottom":F
    goto :goto_0
.end method

.method public shadeLayer(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "musicImg"    # Landroid/graphics/Bitmap;
    .param p2, "bg"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 326
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    .local v0, "btm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 328
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 329
    .local v2, "xferPaint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 330
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 331
    invoke-virtual {v1, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 332
    return-object v0
.end method

.method public startMusicService()V
    .locals 4

    .prologue
    .line 141
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.bbkmusic"

    const-string v3, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v1, "serviceName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.nooperation"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    return-void
.end method

.method public storageState()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 201
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v0, p0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mStorageManagerWrapper:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mStorageManagerWrapper:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;

    invoke-virtual {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->getInternalStorageState()Z

    move-result v0

    return v0
.end method

.method public unregistBroadCast()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->MusicRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method
