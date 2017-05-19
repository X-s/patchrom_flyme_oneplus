.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GpsStatusListenerTransport;,
        Landroid/location/LocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final HIGH_POWER_REQUEST_CHANGE_ACTION:Ljava/lang/String; = "android.location.HIGH_POWER_REQUEST_CHANGE"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final MODE_CHANGED_ACTION:Ljava/lang/String; = "android.location.MODE_CHANGED"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

.field private final mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

.field private final mGpsStatus:Landroid/location/GpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$Listener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Landroid/location/LocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$NmeaListener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/location/ILocationManager;

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    .line 75
    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    .line 319
    iput-object p2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 320
    iput-object p1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 321
    new-instance v0, Landroid/location/GpsMeasurementListenerTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/GpsMeasurementListenerTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    .line 322
    new-instance v0, Landroid/location/GpsNavigationMessageListenerTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/GpsNavigationMessageListenerTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    .line 324
    return-void
.end method

.method static synthetic access$100(Landroid/location/LocationManager;)Landroid/location/ILocationManager;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method private static checkCriteria(Landroid/location/Criteria;)V
    .locals 3
    .param p0, "criteria"    # Landroid/location/Criteria;

    .prologue
    .line 1790
    if-nez p0, :cond_0

    .line 1791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1793
    :cond_0
    return-void
.end method

.method private static checkGeofence(Landroid/location/Geofence;)V
    .locals 3
    .param p0, "fence"    # Landroid/location/Geofence;

    .prologue
    .line 1817
    if-nez p0, :cond_0

    .line 1818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid geofence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1820
    :cond_0
    return-void
.end method

.method private static checkListener(Landroid/location/LocationListener;)V
    .locals 3
    .param p0, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 1796
    if-nez p0, :cond_0

    .line 1797
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1799
    :cond_0
    return-void
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1802
    if-nez p1, :cond_0

    .line 1803
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid pending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1805
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1806
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pending intent must be targeted to package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1808
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 1809
    throw v0

    .line 1811
    :cond_1
    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1814
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    return-void
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "provider"    # Ljava/lang/String;

    .prologue
    .line 1784
    if-nez p0, :cond_0

    .line 1785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1787
    :cond_0
    return-void
.end method

.method private createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 327
    new-instance v0, Landroid/location/LocationProvider;

    invoke-direct {v0, p1, p2}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    return-object v0
.end method

.method private requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 887
    const/16 v5, 0x2f

    invoke-static {v5}, Landroid/util/SeempLog;->record(I)I

    .line 889
    iget-object v5, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "packageName":Ljava/lang/String;
    const-string v5, "LocationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestLocationUpdates listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " packageName= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc

    aput v7, v5, v6

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 893
    new-instance v2, Landroid/util/Permission;

    iget-object v5, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 894
    .local v2, "requester":Landroid/util/Permission;
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v5}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v3

    .line 895
    .local v3, "result":Z
    if-nez v3, :cond_0

    .line 909
    .end local v2    # "requester":Landroid/util/Permission;
    .end local v3    # "result":Z
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-direct {p0, p2, p3}, Landroid/location/LocationManager;->wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;

    move-result-object v4

    .line 905
    .local v4, "transport":Landroid/location/LocationManager$ListenerTransport;
    :try_start_0
    iget-object v5, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v5, p1, v4, p4, v1}, Landroid/location/ILocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "LocationManager"

    const-string v6, "RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;
    .locals 3
    .param p1, "listener"    # Landroid/location/LocationListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 874
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 881
    :goto_0
    return-object v0

    .line 875
    :cond_0
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 876
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager$ListenerTransport;

    .line 877
    .local v0, "transport":Landroid/location/LocationManager$ListenerTransport;
    if-nez v0, :cond_1

    .line 878
    new-instance v0, Landroid/location/LocationManager$ListenerTransport;

    .end local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    invoke-direct {v0, p0, p1, p2}, Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 880
    .restart local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :cond_1
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    monitor-exit v2

    goto :goto_0

    .line 882
    .end local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "fence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1059
    invoke-direct {p0, p3}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1060
    invoke-static {p2}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1063
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;

    .prologue
    .line 1674
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    invoke-virtual {v0, p1}, Landroid/location/GpsMeasurementListenerTransport;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;

    .prologue
    .line 1699
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    invoke-virtual {v0, p1}, Landroid/location/GpsNavigationMessageListenerTransport;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1568
    const/16 v5, 0x2b

    invoke-static {v5}, Landroid/util/SeempLog;->record(I)I

    .line 1571
    iget-object v5, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return v2

    .line 1577
    :cond_1
    new-array v5, v2, [I

    const/16 v6, 0xc

    aput v6, v5, v4

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1578
    new-instance v1, Landroid/util/Permission;

    iget-object v5, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 1579
    .local v1, "requester":Landroid/util/Permission;
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v5}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v2

    .line 1580
    .local v2, "result":Z
    if-nez v2, :cond_2

    move v2, v4

    .line 1581
    goto :goto_0

    .line 1587
    .end local v1    # "requester":Landroid/util/Permission;
    .end local v2    # "result":Z
    :cond_2
    :try_start_0
    new-instance v3, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v3, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V

    .line 1588
    .local v3, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v4, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v5, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    move-result v2

    .line 1589
    .restart local v2    # "result":Z
    if-eqz v2, :cond_0

    .line 1590
    iget-object v4, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1592
    .end local v2    # "result":Z
    .end local v3    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LocationManager"

    const-string v5, "RemoteException in registerGpsStatusListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    .prologue
    .line 1627
    const/16 v3, 0x2c

    invoke-static {v3}, Landroid/util/SeempLog;->record(I)I

    .line 1630
    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1632
    const/4 v1, 0x1

    .line 1645
    :cond_0
    :goto_0
    return v1

    .line 1635
    :cond_1
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V

    .line 1636
    .local v2, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1637
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1638
    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1640
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1641
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1642
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1008
    const/16 v3, 0x2d

    invoke-static {v3}, Landroid/util/SeempLog;->record(I)I

    .line 1009
    invoke-direct {p0, p8}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1010
    const-wide/16 v4, 0x0

    cmp-long v3, p6, v4

    if-gez v3, :cond_0

    const-wide p6, 0x7fffffffffffffffL

    .line 1012
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/location/Geofence;->createCircle(DDF)Landroid/location/Geofence;

    move-result-object v1

    .line 1013
    .local v1, "fence":Landroid/location/Geofence;
    new-instance v3, Landroid/location/LocationRequest;

    invoke-direct {v3}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v3, p6, p7}, Landroid/location/LocationRequest;->setExpireIn(J)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1015
    .local v2, "request":Landroid/location/LocationRequest;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v1, p8, v4}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requiresNetwork"    # Z
    .param p3, "requiresSatellite"    # Z
    .param p4, "requiresCell"    # Z
    .param p5, "hasMonetaryCost"    # Z
    .param p6, "supportsAltitude"    # Z
    .param p7, "supportsSpeed"    # Z
    .param p8, "supportsBearing"    # Z
    .param p9, "powerRequirement"    # I
    .param p10, "accuracy"    # I

    .prologue
    .line 1278
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 1281
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    const-string v1, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider name contains illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1286
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :goto_0
    return-void

    .line 1287
    :catch_0
    move-exception v10

    .line 1288
    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAllPendingBroadcastsLocked()V
    .locals 3

    .prologue
    .line 1722
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->clearAllPendingBroadcastsLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1726
    :goto_0
    return-void

    .line 1723
    :catch_0
    move-exception v0

    .line 1724
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1397
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    :goto_0
    return-void

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1359
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_0
    return-void

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1438
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_0
    return-void

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 343
    :goto_0
    return-object v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 3
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .prologue
    .line 430
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 432
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 436
    :goto_0
    return-object v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 1740
    if-nez p1, :cond_0

    .line 1741
    new-instance p1, Landroid/location/GpsStatus;

    .end local p1    # "status":Landroid/location/GpsStatus;
    invoke-direct {p1}, Landroid/location/GpsStatus;-><init>()V

    .line 1743
    .restart local p1    # "status":Landroid/location/GpsStatus;
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {p1, v0}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GpsStatus;)V

    .line 1744
    return-object p1
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 1253
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getLastKnownLocation()Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1256
    :goto_0
    return-object v1

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1256
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 10
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1222
    const/16 v6, 0x2e

    invoke-static {v6}, Landroid/util/SeempLog;->record(I)I

    .line 1225
    new-array v6, v9, [I

    const/4 v7, 0x0

    const/16 v8, 0xc

    aput v8, v6, v7

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1226
    new-instance v3, Landroid/util/Permission;

    iget-object v6, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 1227
    .local v3, "requester":Landroid/util/Permission;
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v6}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v4

    .line 1228
    .local v4, "result":Z
    if-nez v4, :cond_0

    .line 1243
    .end local v3    # "requester":Landroid/util/Permission;
    .end local v4    # "result":Z
    :goto_0
    return-object v5

    .line 1234
    :cond_0
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1235
    iget-object v6, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, "packageName":Ljava/lang/String;
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v6, v7, v8, v9}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1240
    .local v2, "request":Landroid/location/LocationRequest;
    :try_start_0
    iget-object v6, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v6, v2, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "LocationManager"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1193
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1199
    :goto_0
    return-object v2

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 376
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    .line 377
    .local v1, "properties":Lcom/android/internal/location/ProviderProperties;
    if-nez v1, :cond_0

    .line 384
    .end local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :goto_0
    return-object v2

    .line 380
    .restart local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/location/LocationManager;->createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 381
    .end local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 400
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 355
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 359
    :goto_0
    return-object v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1168
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1171
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1174
    :goto_0
    return v1

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAllGeofences(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1137
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :goto_0
    return-void

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1113
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1114
    invoke-static {p1}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1115
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1, p2, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_0
    return-void

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;

    .prologue
    .line 1686
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    invoke-virtual {v0, p1}, Landroid/location/GpsMeasurementListenerTransport;->remove(Ljava/lang/Object;)V

    .line 1687
    return-void
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;

    .prologue
    .line 1712
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    invoke-virtual {v0, p1}, Landroid/location/GpsNavigationMessageListenerTransport;->remove(Ljava/lang/Object;)V

    .line 1713
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;

    .prologue
    .line 1607
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    .line 1608
    .local v1, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1609
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    .end local v1    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    .prologue
    .line 1655
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    .line 1656
    .local v1, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1657
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    .end local v1    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1087
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1304
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_0
    return-void

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 948
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 949
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 921
    invoke-static {p1}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 922
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "LocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeUpdates listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v4, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 928
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$ListenerTransport;

    .line 929
    .local v2, "transport":Landroid/location/LocationManager$ListenerTransport;
    monitor-exit v4

    .line 930
    if-nez v2, :cond_0

    .line 937
    :goto_0
    return-void

    .line 929
    .end local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 933
    .restart local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x2f

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 3
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v1, 0x2f

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v1, 0x0

    .line 868
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 869
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 870
    invoke-direct {p0, p1, v1, v1, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 871
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 840
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 841
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 843
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x2f

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x2f

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, p5, v2, v2}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v1, 0x2f

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    .line 771
    const/16 v1, 0x40

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 772
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 773
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 775
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 722
    const/16 v1, 0x40

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 723
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 724
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 726
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    .line 746
    const/16 v1, 0x40

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 747
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 748
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 750
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 691
    const/16 v1, 0x40

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 692
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 693
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 695
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1759
    const/16 v1, 0x30

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 1761
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1764
    :goto_0
    return v1

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendExtraCommand: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1764
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .prologue
    .line 1776
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1779
    :goto_0
    return v1

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendNiResponse: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1379
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    :goto_0
    return-void

    .line 1380
    :catch_0
    move-exception v0

    .line 1381
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 1327
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete location object, missing timestamp or accuracy? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_1

    .line 1332
    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    invoke-virtual {p2}, Landroid/location/Location;->makeComplete()V

    .line 1341
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    :goto_0
    return-void

    .line 1336
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    throw v0

    .line 1342
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 1343
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J

    .prologue
    .line 1419
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/location/ILocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    :goto_0
    return-void

    .line 1421
    :catch_0
    move-exception v7

    .line 1422
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "LocationManager"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/16 v0, 0x4b

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
