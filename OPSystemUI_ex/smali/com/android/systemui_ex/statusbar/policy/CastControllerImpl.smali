.class public Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;
.super Ljava/lang/Object;
.source "CastControllerImpl.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/CastController;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCallbackRegistered:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDiscovering:Z

.field private final mDiscoveringLock:Ljava/lang/Object;

.field private final mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private mProjection:Landroid/media/projection/MediaProjectionInfo;

.field private final mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private final mProjectionLock:Ljava/lang/Object;

.field private final mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "CastController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 56
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    .line 282
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$2;-><init>(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 320
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$3;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$3;-><init>(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    .line 66
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    .line 67
    const-string v1, "media_router"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    .line 68
    const-string v1, "media_projection"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 70
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    .line 71
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CastController"

    const-string v2, "new CastController()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;
    .param p1, "x1"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V

    return-void
.end method

.method private ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 258
    :cond_0
    return-void
.end method

.method private fireOnCastDevicesChanged()V
    .locals 3

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;

    .line 262
    .local v0, "callback":Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged(Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;)V

    goto :goto_0

    .line 264
    .end local v0    # "callback":Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;
    :cond_0
    return-void
.end method

.method private fireOnCastDevicesChanged(Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;

    .prologue
    .line 267
    invoke-interface {p1}, Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;->onCastDevicesChanged()V

    .line 268
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 220
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 221
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 223
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 227
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v4, "CastController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label found for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CastController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting appName for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleDiscoveryChangeLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v3, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 128
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 132
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    goto :goto_0
.end method

.method private static routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 271
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 279
    :goto_0
    return-object v1

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ",default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ",enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ",connecting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ",selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_4
    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V
    .locals 6
    .param p1, "projection"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "started"    # Z

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    .line 201
    .local v2, "oldProjection":Landroid/media/projection/MediaProjectionInfo;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 203
    .local v1, "isCurrent":Z
    if-eqz p2, :cond_3

    if-nez v1, :cond_3

    .line 204
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    .line 205
    const/4 v0, 0x1

    .line 210
    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    if-eqz v0, :cond_2

    .line 212
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "CastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProjection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged()V

    .line 215
    :cond_2
    return-void

    .line 206
    :cond_3
    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    .line 207
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "isCurrent":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateRemoteDisplays()V
    .locals 7

    .prologue
    .line 235
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 236
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 237
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    .line 238
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 239
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v0}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 240
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V

    .line 243
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 250
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 245
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 246
    .local v3, "selected":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v4

    if-nez v4, :cond_3

    .line 247
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V

    .line 248
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged()V

    .line 252
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged(Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 81
    const-string v2, "CastController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v2, "  mDiscovering="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 83
    const-string v2, "  mCallbackRegistered="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 84
    const-string v2, "  mCallbacks.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 85
    const-string v2, "  mRoutes.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 88
    .local v1, "route":Landroid/media/MediaRouter$RouteInfo;
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_0
    const-string v2, "  mProjection="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public getCastDevices()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 143
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 144
    .local v2, "devices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;>;"
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 145
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    if-eqz v6, :cond_0

    .line 146
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;

    invoke-direct {v1}, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;-><init>()V

    .line 147
    .local v1, "device":Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v6}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    .line 148
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v6}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    .line 149
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0115

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->description:Ljava/lang/String;

    .line 150
    const/4 v6, 0x2

    iput v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->state:I

    .line 151
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    iput-object v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 152
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v9

    .line 171
    .end local v1    # "device":Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;
    :goto_0
    return-object v2

    .line 155
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 157
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    .line 158
    .local v5, "route":Landroid/media/MediaRouter$RouteInfo;
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;

    invoke-direct {v1}, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;-><init>()V

    .line 159
    .restart local v1    # "device":Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    .line 160
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 161
    .local v4, "name":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    .line 162
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
    .local v0, "description":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    iput-object v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->description:Ljava/lang/String;

    .line 164
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_4
    iput v6, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->state:I

    .line 167
    iput-object v5, v1, Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 168
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    .end local v0    # "description":Ljava/lang/CharSequence;
    .end local v1    # "device":Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/CharSequence;
    .end local v5    # "route":Landroid/media/MediaRouter$RouteInfo;
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 155
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v1    # "device":Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "name":Ljava/lang/CharSequence;
    .restart local v5    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    move-object v6, v8

    .line 161
    goto :goto_2

    .restart local v0    # "description":Ljava/lang/CharSequence;
    :cond_2
    move-object v6, v8

    .line 163
    goto :goto_3

    .line 164
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 170
    .end local v0    # "description":Ljava/lang/CharSequence;
    .end local v1    # "device":Lcom/android/systemui_ex/statusbar/policy/CastController$CastDevice;
    .end local v4    # "name":Ljava/lang/CharSequence;
    .end local v5    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_5
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
