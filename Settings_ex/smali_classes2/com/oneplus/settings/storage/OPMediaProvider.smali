.class public Lcom/oneplus/settings/storage/OPMediaProvider;
.super Ljava/lang/Object;
.source "OPMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/storage/OPMediaProvider$Callback;,
        Lcom/oneplus/settings/storage/OPMediaProvider$FileType;,
        Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues:[I = null

.field private static AUDIO_SECTION:Ljava/lang/String; = null

.field private static PICTURE_SECTION:Ljava/lang/String; = null

.field private static SECTION_AFTER:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OPMediaProvider"

.field private static VIDEO_SECTION:Ljava/lang/String;

.field private static final sProject:[Ljava/lang/String;

.field public static final sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->sProject:[Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->-com-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->-com-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->values()[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v1}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->-com-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .prologue
    invoke-static {p0}, Lcom/oneplus/settings/storage/OPMediaProvider;->getUriByType(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .prologue
    invoke-static {p0}, Lcom/oneplus/settings/storage/OPMediaProvider;->getSelectionByType(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    const-string/jumbo v0, " and _data NOT LIKE \'%/.%\' and _data NOT LIKE \'%cache%\' and _data NOT LIKE \'%/res/%\' and _data NOT LIKE \'%/plugins/%\' and _data NOT LIKE \'%/temp/%\' and _data NOT LIKE \'%/tencent/MobileQQ/qbiz/%\' and _data NOT LIKE \'%/tencent/MobileQQ/PhotoPlus/%\' and _data NOT LIKE \'%/thumb/%\' and _data NOT LIKE \'%/oem_log/%\'"

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'%.jpg\' or _data LIKE \'%.jpeg\' or _data LIKE \'%.png\' or _data LIKE \'%.bmp\' or _data LIKE \'%.gif\' or _data LIKE \'%.wbmp\' or _data LIKE \'%.dng\' or _data LIKE \'%.cr2\' or _data LIKE \'%.nef\' or _data LIKE \'%.nrw\' or _data LIKE \'%.arw\' or _data LIKE \'%.rw2\' or _data LIKE \'%.orf\' or _data LIKE \'%.raf\' or _data LIKE \'%.pef\' or _data LIKE \'%.srw\' or _data LIKE \'%.tiff\' or _data LIKE \'%.webp\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->PICTURE_SECTION:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'%.wma\' or _data LIKE \'%.mp3\' or _data LIKE \'%.wav\' or _data LIKE \'%.aac\' or _data LIKE \'%.mid\' or _data LIKE \'%.ogg\' or _data LIKE \'%.flac\' or _data LIKE \'%.ape\' or _data LIKE \'%.ra\' or _data LIKE \'%.qcp\' or _data LIKE \'%.ac3\' or _data LIKE \'%.ec3\' or _data LIKE \'%.aif\' or _data LIKE \'%.aiff\' or _data LIKE \'%.dsf\' or _data LIKE \'%.dff\' or _data LIKE \'%.dsd\' or _data LIKE \'%.m3u\' or _data LIKE \'%.pls\' or _data LIKE \'%.m3u8\' or _data LIKE \'%.aac\' or _data LIKE \'%.mka\' or _data LIKE \'%.midi\' or _data LIKE \'%.xmf\' or _data LIKE \'%.rtttl\' or _data LIKE \'%.smf\' or _data LIKE \'%.imy\' or _data LIKE \'%.rtx\' or _data LIKE \'%.ota\' or _data LIKE \'%.mxmf\' or _data LIKE \'%.mpga\' or _data LIKE \'%.m4a\' or _data LIKE \'%.wav\' or _data LIKE \'%.awb\' or _data LIKE \'%.mod\' or _data LIKE \'%.amr\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->AUDIO_SECTION:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(_data LIKE \'%.avi\' or _data LIKE \'%.mkv\' or _data LIKE \'%.mp4\' or _data LIKE \'%.mpeg\' or _data LIKE \'%.wmv\' or _data LIKE \'%.3gp\' or _data LIKE \'%.flv\' or _data LIKE \'%.rmvb\' or _data LIKE \'%.rmvb\' or _data LIKE \'%.mpg\' or _data LIKE \'%.m4v\' or _data LIKE \'%.3gpp\' or _data LIKE \'%.3g2\' or _data LIKE \'%.3gpp2\' or _data LIKE \'%.webm\' or _data LIKE \'%.ts\' or _data LIKE \'%.asf\' or _data LIKE \'%.divx\' or _data LIKE \'%.swf\' or _data LIKE \'%.mov\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider;->SECTION_AFTER:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->VIDEO_SECTION:Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "_size"

    aput-object v1, v0, v2

    .line 85
    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->sProject:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSelectionByType(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider;->-getcom-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 127
    const-string/jumbo v1, "OPMediaProvider"

    const-string/jumbo v2, "getSelectionByType return default is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "selection":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 118
    .restart local v0    # "selection":Ljava/lang/String;
    :pswitch_0
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->PICTURE_SECTION:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 121
    .local v0, "selection":Ljava/lang/String;
    :pswitch_1
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->AUDIO_SECTION:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 124
    .local v0, "selection":Ljava/lang/String;
    :pswitch_2
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider;->VIDEO_SECTION:Ljava/lang/String;

    .local v0, "selection":Ljava/lang/String;
    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getUriByType(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Landroid/net/Uri;
    .locals 3
    .param p0, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider;->-getcom-oneplus-settings-storage-OPMediaProvider$FileTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 108
    const-string/jumbo v1, "OPMediaProvider"

    const-string/jumbo v2, "getUriByType return default is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "uri":Landroid/net/Uri;
    :pswitch_0
    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 102
    .local v0, "uri":Landroid/net/Uri;
    :pswitch_1
    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 105
    .local v0, "uri":Landroid/net/Uri;
    :pswitch_2
    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static startLoadInfo(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "callback"    # Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .prologue
    const/4 v2, 0x0

    .line 138
    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    if-ne p1, v1, :cond_0

    .line 139
    sget-object v3, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 140
    .local v0, "fileType":Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    new-instance v5, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;

    invoke-direct {v5, p0, v0, p2}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;-><init>(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v2, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "fileType":Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    :cond_0
    new-instance v1, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;-><init>(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v2}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    :cond_1
    return-void
.end method
