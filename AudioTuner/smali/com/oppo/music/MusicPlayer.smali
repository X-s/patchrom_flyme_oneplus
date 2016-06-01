.class public Lcom/oppo/music/MusicPlayer;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;,
        Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;,
        Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;,
        Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "oppo.intent.action.ACTION_SHUTDOWN"

.field private static final META_CHANGED:Ljava/lang/String; = "com.oppo.music.service.meta_changed"

.field private static final META_CHANGED_HANDLER:I = 0x2

.field private static final MUSIC_PLAYBACK_COMPLETE:I = 0x7

.field private static final MUSIC_QUEUE_CHANGED:I = 0x6

.field private static final MUSIC_SERVICE_Bind_FAILED:I = 0x5

.field private static final MUSIC_SERVICE_Bind_SUCCESS:I = 0x4

.field private static final MUSIC_SERVICE_DISCONNECTED:I = 0x3

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.oppo.music.service.playback_complete"

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.oppo.music.service.playstate_changed"

.field private static final PLAYSTATE_CHANGED_HANDLER:I = 0x1

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.oppo.music.service.queue_changed"

.field private static final TAG:Ljava/lang/String; = "LockScreenMusicPlayer"

.field private static mContext:Landroid/content/Context;

.field private static mMusicPlayer:Lcom/oppo/music/MusicPlayer;


# instance fields
.field private DEBUG:Z

.field private final FIVE_SECONDS:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mHaveBinded:Z

.field private mIBinder:Landroid/os/IBinder;

.field private mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

.field private mIMusicMutilsThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

.field private mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

.field private mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

.field mMutilsRequestListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

.field mRequestListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

.field private mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    .line 63
    sput-object v0, Lcom/oppo/music/MusicPlayer;->mMusicPlayer:Lcom/oppo/music/MusicPlayer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/music/MusicPlayer;->DEBUG:Z

    .line 80
    const/16 v0, 0x1388

    iput v0, p0, Lcom/oppo/music/MusicPlayer;->FIVE_SECONDS:I

    .line 88
    new-instance v0, Lcom/oppo/music/MusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/oppo/music/MusicPlayer$1;-><init>(Lcom/oppo/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance v0, Lcom/oppo/music/MusicPlayer$2;

    invoke-direct {v0, p0}, Lcom/oppo/music/MusicPlayer$2;-><init>(Lcom/oppo/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/music/MusicPlayer;->mHaveBinded:Z

    .line 689
    new-instance v0, Lcom/oppo/music/MusicPlayer$3;

    invoke-direct {v0, p0}, Lcom/oppo/music/MusicPlayer$3;-><init>(Lcom/oppo/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    .line 894
    new-instance v0, Lcom/oppo/music/MusicPlayer$4;

    invoke-direct {v0, p0}, Lcom/oppo/music/MusicPlayer$4;-><init>(Lcom/oppo/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mRequestListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    .line 936
    new-instance v0, Lcom/oppo/music/MusicPlayer$5;

    invoke-direct {v0, p0}, Lcom/oppo/music/MusicPlayer$5;-><init>(Lcom/oppo/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mMutilsRequestListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    .line 217
    sput-object p1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    .line 218
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 219
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->regRecv()V

    .line 220
    invoke-static {}, Lcom/oppo/music/manager/AsyncRequestManager;->getInstance()Lcom/oppo/music/manager/AsyncRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    .line 221
    return-void
.end method

.method private BindService()Z
    .locals 2

    .prologue
    .line 724
    const-string v0, "LockScreenMusicPlayer"

    const-string v1, "doBindService\t "

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/music/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lcom/oppo/music/utils/PlayServiceUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/oppo/music/MusicPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/oppo/music/MusicPlayer;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->getBitmapWithPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/music/MusicPlayer;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->handleMusicThumbUpdated(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->handleMusicLyricUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/music/MusicPlayer;Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # [Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/oppo/music/MusicPlayer;->handleMusicMutilsThumbUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/music/MusicPlayer;Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # [Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/oppo/music/MusicPlayer;->handleMutilsMusicLyricUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/music/MusicPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handlePlayStateChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/music/MusicPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handleMetaChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/music/MusicPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handleMusicServiceDisconnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/music/MusicPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->handleMusicServiceBindResult(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/music/MusicPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handleMusicQueueChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/music/MusicPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handleMusicPlaybackCompleted()V

    return-void
.end method

.method static synthetic access$802(Lcom/oppo/music/MusicPlayer;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/music/MusicPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/music/MusicPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/oppo/music/MusicPlayer;->mHaveBinded:Z

    return p1
.end method

.method private begin()Z
    .locals 1

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->BindService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/music/MusicPlayer;->mHaveBinded:Z

    return v0
.end method

.method private getBitmapWithPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 869
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v6, "LockScreenMusicPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getThumbOriginFromCard, path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    if-nez p1, :cond_1

    .line 884
    if-eqz v4, :cond_0

    .line 885
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v1, v0

    .line 891
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 887
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 888
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "LockScreenMusicPlayer"

    const-string v7, "getThumbOriginFromCard, file close faild."

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 875
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 876
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    move-object v4, v5

    .line 884
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v4, :cond_2

    .line 885
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v3    # "file":Ljava/io/File;
    :cond_2
    :goto_3
    move-object v1, v0

    .line 891
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 878
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "file":Ljava/io/File;
    :cond_3
    :try_start_5
    const-string v6, "LockScreenMusicPlayer"

    const-string v7, "getThumbOriginFromCard,  file is not exists!"

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 880
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 881
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 884
    if-eqz v4, :cond_2

    .line 885
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 887
    :catch_2
    move-exception v2

    .line 888
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "LockScreenMusicPlayer"

    const-string v7, "getThumbOriginFromCard, file close faild."

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 887
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "file":Ljava/io/File;
    :catch_3
    move-exception v2

    .line 888
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "LockScreenMusicPlayer"

    const-string v7, "getThumbOriginFromCard, file close faild."

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 883
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    .line 884
    :goto_5
    if-eqz v4, :cond_4

    .line 885
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 889
    :cond_4
    :goto_6
    throw v6

    .line 887
    :catch_4
    move-exception v2

    .line 888
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "LockScreenMusicPlayer"

    const-string v8, "getThumbOriginFromCard, file close faild."

    invoke-static {v7, v8}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 883
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 880
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static declared-synchronized getMusicPlayer(Landroid/content/Context;)Lcom/oppo/music/MusicPlayer;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    const-class v1, Lcom/oppo/music/MusicPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mMusicPlayer:Lcom/oppo/music/MusicPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    if-eq v0, p0, :cond_1

    .line 208
    :cond_0
    new-instance v0, Lcom/oppo/music/MusicPlayer;

    invoke-direct {v0, p0}, Lcom/oppo/music/MusicPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/music/MusicPlayer;->mMusicPlayer:Lcom/oppo/music/MusicPlayer;

    .line 211
    :cond_1
    const-string v0, "LockScreenMusicPlayer"

    const-string v2, "MusicPlayer version number ---0007---"

    invoke-static {v0, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mMusicPlayer:Lcom/oppo/music/MusicPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleMetaChanged()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    invoke-interface {v0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->onMetaChanged()V

    .line 166
    :cond_0
    return-void
.end method

.method private handleMusicLyricUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    invoke-interface {v0, p1}, Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;->onMusicLyricUpdated(Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method private handleMusicMutilsThumbUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V
    .locals 1
    .param p2, "items"    # [Lcom/oppo/music/media/PlaylistItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/oppo/music/media/PlaylistItem;",
            "Landroid/graphics/Bitmap;",
            ">;[",
            "Lcom/oppo/music/media/PlaylistItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicMutilsThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicMutilsThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;->onMusicMutilsThumbUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V

    .line 196
    :cond_0
    return-void
.end method

.method private handleMusicPlaybackCompleted()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    invoke-interface {v0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->OnMusicPlaybackCompleted()V

    .line 178
    :cond_0
    return-void
.end method

.method private handleMusicQueueChanged()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    invoke-interface {v0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->OnMusicQueueChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method private handleMusicServiceBindResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    invoke-interface {v0, p1}, Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;->onMusicBindResult(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method private handleMusicServiceDisconnected()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    invoke-interface {v0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->onMusicServiceDisconnected()V

    .line 147
    :cond_0
    return-void
.end method

.method private handleMusicThumbUpdated(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    invoke-interface {v0, p1}, Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;->onMusicThumbUpdated(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_0
    return-void
.end method

.method private handleMutilsMusicLyricUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V
    .locals 1
    .param p2, "items"    # [Lcom/oppo/music/media/PlaylistItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/oppo/music/media/PlaylistItem;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/oppo/music/media/PlaylistItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicMutilsThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicMutilsThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;->onMusicMutilsLyricUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V

    .line 202
    :cond_0
    return-void
.end method

.method private handlePlayStateChanged()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    invoke-interface {v0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->onPlayStatechanged()V

    .line 160
    :cond_0
    return-void
.end method

.method private isBindSucceed()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 860
    const/4 v0, 0x0

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNeedToBind()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/music/MusicPlayer;->mHaveBinded:Z

    if-nez v0, :cond_0

    .line 853
    const/4 v0, 0x1

    .line 855
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regRecv()V
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oppo.music.service.meta_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "com.oppo.music.service.playstate_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "oppo.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "com.oppo.music.service.playback_complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    return-void
.end method

.method private unRegRecv()V
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    const-wide/16 v0, 0x0

    .line 583
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/music/utils/PlayServiceUtils;->unbindService(Landroid/content/Context;)V

    .line 318
    return-void
.end method

.method public getAlbumCover()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    const/4 v0, 0x0

    .line 523
    :cond_1
    :goto_0
    return-object v0

    .line 513
    :cond_2
    const-string v2, "LockScreenMusicPlayer"

    const-string v3, "getAlbumName, start!"

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->getCurTrack()Lcom/oppo/music/media/Track;

    move-result-object v1

    .line 515
    .local v1, "t":Lcom/oppo/music/media/Track;
    const/4 v0, 0x0

    .line 516
    .local v0, "album":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 517
    invoke-virtual {v1}, Lcom/oppo/music/media/Track;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_3

    const-string v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 519
    :cond_3
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getAlbumUnknownString()Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_4
    const-string v2, "LockScreenMusicPlayer"

    const-string v3, "getAlbumName, end!"

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 486
    const/4 v0, 0x0

    .line 498
    :cond_1
    :goto_0
    return-object v0

    .line 488
    :cond_2
    const-string v2, "LockScreenMusicPlayer"

    const-string v3, "getArtistName, start!"

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->getCurTrack()Lcom/oppo/music/media/Track;

    move-result-object v1

    .line 490
    .local v1, "t":Lcom/oppo/music/media/Track;
    const/4 v0, 0x0

    .line 491
    .local v0, "artist":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 492
    invoke-virtual {v1}, Lcom/oppo/music/media/Track;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_3

    const-string v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    :cond_3
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getArtistUnknownString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_4
    const-string v2, "LockScreenMusicPlayer"

    const-string v3, "getArtistName, end!"

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    const-wide/16 v0, 0x0

    .line 533
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentTrackID()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getBufferingPercent()J
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    const-wide/16 v0, 0x0

    .line 430
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getBufferingPercent()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getCueInnerPosition()I
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCueInnerPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getCurTrack()Lcom/oppo/music/media/Track;
    .locals 2

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 679
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 680
    const/4 v0, 0x0

    .line 683
    :goto_0
    return-object v0

    .line 682
    :cond_1
    sget-object v1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;

    move-result-object v0

    .line 683
    .local v0, "track":Lcom/oppo/music/media/Track;
    goto :goto_0
.end method

.method public getCurrentCueTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentCueTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;
    .locals 1

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 742
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    const/4 v0, 0x0

    .line 745
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getLyricPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    const/4 v0, 0x0

    .line 615
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/music/utils/PlayServiceUtils;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 625
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 635
    :cond_1
    :goto_0
    return-object v1

    .line 631
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->getCurTrack()Lcom/oppo/music/media/Track;

    move-result-object v0

    .line 632
    .local v0, "t":Lcom/oppo/music/media/Track;
    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {v0}, Lcom/oppo/music/media/Track;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPlayMode()I
    .locals 1

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 589
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    const/4 v0, 0x0

    .line 592
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlayMode()I

    move-result v0

    goto :goto_0
.end method

.method public getPlaylist()Lcom/oppo/music/media/Playlist;
    .locals 1

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 732
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    const/4 v0, 0x0

    .line 735
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 752
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    const/4 v0, 0x0

    .line 755
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    goto :goto_0
.end method

.method public final getQueueLength()I
    .locals 1

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    const/4 v0, 0x0

    .line 651
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylistLength()I

    move-result v0

    goto :goto_0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylistCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 464
    const/4 v1, 0x0

    .line 473
    :cond_1
    :goto_0
    return-object v1

    .line 466
    :cond_2
    const-string v2, "LockScreenMusicPlayer"

    const-string v3, "getTrackName, start!"

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->getCurTrack()Lcom/oppo/music/media/Track;

    move-result-object v0

    .line 468
    .local v0, "t":Lcom/oppo/music/media/Track;
    const/4 v1, 0x0

    .line 469
    .local v1, "trackName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {v0}, Lcom/oppo/music/media/Track;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 472
    :cond_3
    const-string v2, "LockScreenMusicPlayer"

    const-string v3, "getTrackName, end!"

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 663
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    const/4 v0, 0x0

    .line 667
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public next()Z
    .locals 2

    .prologue
    .line 362
    const-string v0, "LockScreenMusicPlayer"

    const-string v1, "next, start!"

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    .line 369
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->next()V

    .line 370
    const-string v0, "LockScreenMusicPlayer"

    const-string v1, "next, end!"

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->unRegRecv()V

    .line 311
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->regRecv()V

    .line 304
    return-void
.end method

.method public pause()Z
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    .line 352
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->pause()V

    .line 353
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public play()Z
    .locals 2

    .prologue
    .line 329
    const/4 v0, 0x1

    .line 330
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const/4 v1, 0x0

    .line 337
    :goto_0
    return v1

    .line 336
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->play()V

    .line 337
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    const-wide/16 v0, 0x0

    .line 573
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public prev()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 380
    const-string v1, "LockScreenMusicPlayer"

    const-string v2, "prev, start!"

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    :goto_0
    return v0

    .line 387
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 388
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->previous()V

    .line 393
    :goto_1
    const-string v0, "LockScreenMusicPlayer"

    const-string v1, "prev, end!"

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 390
    :cond_2
    invoke-static {v0}, Lcom/oppo/music/utils/PlayServiceUtils;->seekTo(I)V

    .line 391
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->play()V

    goto :goto_1
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 770
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz v0, :cond_0

    .line 771
    iput-object v1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    if-eqz v0, :cond_1

    .line 774
    iput-object v1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 777
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->unRegRecv()V

    .line 778
    iput-object v1, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 780
    :cond_2
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 781
    sput-object v1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    if-eqz v0, :cond_4

    .line 784
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-virtual {v0}, Lcom/oppo/music/manager/AsyncRequestManager;->destroy()V

    .line 785
    iput-object v1, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    .line 787
    :cond_4
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->seekTo(I)V

    goto :goto_0
.end method

.method public setIMusicBindResultListener(Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;)V
    .locals 0
    .param p1, "musicBindResultListener"    # Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    .line 275
    return-void
.end method

.method public setIMusicMutilsThumbLyricUpdatedListener(Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;)V
    .locals 0
    .param p1, "ThumbLyricUpdatedListener"    # Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicMutilsThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

    .line 283
    return-void
.end method

.method public setIMusicStateChangeListener(Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;)V
    .locals 0
    .param p1, "musicStateChangeListener"    # Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    .line 271
    return-void
.end method

.method public setIMusicThumbLyricUpdatedListener(Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;)V
    .locals 0
    .param p1, "ThumbLyricUpdatedListener"    # Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    .line 279
    return-void
.end method

.method public setPlayMode(I)V
    .locals 1
    .param p1, "shufflemode"    # I

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 598
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->setPlayMode(I)V

    goto :goto_0
.end method

.method public setPlaylistCurrentPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 762
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->setPlaylistCurrentPosition(I)V

    goto :goto_0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    .line 409
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->stop()V

    .line 410
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateLyric()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 814
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 817
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 818
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    .line 819
    .local v0, "currentItem":Lcom/oppo/music/media/PlaylistItem;
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    if-eqz v4, :cond_1

    .line 820
    new-array v1, v2, [Lcom/oppo/music/media/PlaylistItem;

    .line 821
    .local v1, "l":[Lcom/oppo/music/media/PlaylistItem;
    aput-object v0, v1, v3

    .line 822
    iget-object v3, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    new-instance v4, Lcom/oppo/music/manager/LyricRequest;

    invoke-direct {v4, v1}, Lcom/oppo/music/manager/LyricRequest;-><init>([Lcom/oppo/music/media/PlaylistItem;)V

    iget-object v5, p0, Lcom/oppo/music/MusicPlayer;->mRequestListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    invoke-virtual {v3, v4, v5}, Lcom/oppo/music/manager/AsyncRequestManager;->request(Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V

    .line 826
    .end local v0    # "currentItem":Lcom/oppo/music/media/PlaylistItem;
    .end local v1    # "l":[Lcom/oppo/music/media/PlaylistItem;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public updateMutilsLyric([Lcom/oppo/music/media/PlaylistItem;)Z
    .locals 3
    .param p1, "items"    # [Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 844
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 845
    const/4 v0, 0x0

    .line 848
    :goto_0
    return v0

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    new-instance v1, Lcom/oppo/music/manager/LyricRequest;

    invoke-direct {v1, p1}, Lcom/oppo/music/manager/LyricRequest;-><init>([Lcom/oppo/music/media/PlaylistItem;)V

    iget-object v2, p0, Lcom/oppo/music/MusicPlayer;->mMutilsRequestListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/music/manager/AsyncRequestManager;->request(Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V

    .line 848
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateMutilsThumb([Lcom/oppo/music/media/PlaylistItem;)Z
    .locals 3
    .param p1, "items"    # [Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 833
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    const/4 v0, 0x0

    .line 837
    :goto_0
    return v0

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    new-instance v1, Lcom/oppo/music/manager/ThumbRequest;

    invoke-direct {v1, p1}, Lcom/oppo/music/manager/ThumbRequest;-><init>([Lcom/oppo/music/media/PlaylistItem;)V

    iget-object v2, p0, Lcom/oppo/music/MusicPlayer;->mMutilsRequestListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/music/manager/AsyncRequestManager;->request(Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V

    .line 837
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateThumb()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 794
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 797
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 798
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    .line 799
    .local v0, "currentItem":Lcom/oppo/music/media/PlaylistItem;
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    if-eqz v4, :cond_1

    .line 800
    new-array v1, v2, [Lcom/oppo/music/media/PlaylistItem;

    .line 801
    .local v1, "l":[Lcom/oppo/music/media/PlaylistItem;
    aput-object v0, v1, v3

    .line 802
    iget-object v3, p0, Lcom/oppo/music/MusicPlayer;->mRequestManager:Lcom/oppo/music/manager/AsyncRequestManager;

    new-instance v4, Lcom/oppo/music/manager/ThumbRequest;

    invoke-direct {v4, v1}, Lcom/oppo/music/manager/ThumbRequest;-><init>([Lcom/oppo/music/media/PlaylistItem;)V

    iget-object v5, p0, Lcom/oppo/music/MusicPlayer;->mRequestListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    invoke-virtual {v3, v4, v5}, Lcom/oppo/music/manager/AsyncRequestManager;->request(Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V

    .line 806
    .end local v0    # "currentItem":Lcom/oppo/music/media/PlaylistItem;
    .end local v1    # "l":[Lcom/oppo/music/media/PlaylistItem;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method
