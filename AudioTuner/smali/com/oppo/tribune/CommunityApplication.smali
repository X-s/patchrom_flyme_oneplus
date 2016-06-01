.class public Lcom/oppo/tribune/CommunityApplication;
.super Landroid/app/Application;
.source "CommunityApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommunityApplication"

.field public static current_uid:J

.field private static mApp:Lcom/oppo/tribune/CommunityApplication;

.field private static mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

.field private static mStaticInfo:Ljava/lang/String;


# instance fields
.field private mMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

.field private mNetworkConnectiveReceiver:Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/CommunityApplication;->mNetworkConnectiveReceiver:Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;

    .line 58
    new-instance v0, Lcom/oppo/tribune/CommunityApplication$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/CommunityApplication$1;-><init>(Lcom/oppo/tribune/CommunityApplication;)V

    iput-object v0, p0, Lcom/oppo/tribune/CommunityApplication;->mMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    return-void
.end method

.method public static checkAndUpdateExtra(Ljava/lang/String;)V
    .locals 0
    .param p0, "extra"    # Ljava/lang/String;

    .prologue
    .line 211
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/oppo/tribune/CommunityApplication;->mApp:Lcom/oppo/tribune/CommunityApplication;

    return-object v0
.end method

.method public static getStatInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/oppo/tribune/CommunityApplication;->mStaticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static readUserInfoInDataBase()Lcom/oppo/tribune/protobuf/info/UserInfo;
    .locals 4

    .prologue
    .line 181
    sget-object v2, Lcom/oppo/tribune/CommunityApplication;->mApp:Lcom/oppo/tribune/CommunityApplication;

    if-eqz v2, :cond_0

    .line 182
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;

    sget-object v2, Lcom/oppo/tribune/CommunityApplication;->mApp:Lcom/oppo/tribune/CommunityApplication;

    invoke-direct {v0, v2}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;
    sget-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->query(J)Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v1

    .line 186
    .local v1, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    :goto_0
    return-object v1

    .end local v0    # "dao":Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;
    .end local v1    # "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resetExtra(Ljava/lang/String;)V
    .locals 0
    .param p0, "extra"    # Ljava/lang/String;

    .prologue
    .line 203
    return-void
.end method

.method public static resetStatNetWorkinfo()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method


# virtual methods
.method public getMusicStateChangeListener()Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/tribune/CommunityApplication;->mMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    invoke-static {p0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/manager/OppoTunerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->reloadDataFromXml()V

    .line 147
    invoke-static {p0}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->updateEarPhoneModel(Landroid/content/Context;)V

    .line 148
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 111
    sput-object p0, Lcom/oppo/tribune/CommunityApplication;->mApp:Lcom/oppo/tribune/CommunityApplication;

    .line 112
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->initAppCode(Landroid/content/Context;)V

    .line 113
    invoke-static {p0}, Lcom/oppo/tribune/LoginUtils;->readCurrentUid(Landroid/content/Context;)J

    move-result-wide v4

    sput-wide v4, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    .line 117
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 119
    .local v2, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 122
    invoke-static {p0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->createInstance(Landroid/content/Context;)V

    .line 124
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/waves/maxxaudio/MaxxAudioService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/CommunityApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    new-instance v3, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    invoke-direct {v3}, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;-><init>()V

    sput-object v3, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v3, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/oppo/tribune/CommunityApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v1, "filter2":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    new-instance v3, Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;

    invoke-direct {v3, p0}, Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;-><init>(Lcom/oppo/tribune/CommunityApplication;)V

    iput-object v3, p0, Lcom/oppo/tribune/CommunityApplication;->mNetworkConnectiveReceiver:Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;

    .line 134
    iget-object v3, p0, Lcom/oppo/tribune/CommunityApplication;->mNetworkConnectiveReceiver:Lcom/oppo/tribune/CommunityApplication$NetworkConnectiveReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/oppo/tribune/CommunityApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void

    .line 119
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "filter2":Landroid/content/IntentFilter;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 154
    sget-object v0, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/CommunityApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    :cond_0
    return-void
.end method

.method public registerHeadsetListener(Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;

    .prologue
    .line 161
    sget-object v0, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->registerListener(Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;)V

    .line 165
    :cond_0
    return-void
.end method

.method public unregisterHeadsetListener(Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;

    .prologue
    .line 169
    sget-object v0, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/oppo/tribune/CommunityApplication;->mHeadsetPlugReceiver:Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->unregisterListener(Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;)V

    .line 173
    :cond_0
    return-void
.end method
