.class final Lcom/oneplus/camera/location/UILocationManagerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "UILocationManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/location/LocationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/location/UILocationManagerImpl$1;,
        Lcom/oneplus/camera/location/UILocationManagerImpl$2;,
        Lcom/oneplus/camera/location/UILocationManagerImpl$3;,
        Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;,
        Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final MAX_ACCURACY_TOLERANCE:F = 3000.0f

.field private static final MAX_TIME_TOLERANCE:I = 0x1d4c0

.field protected static final MIN_GPS_TIME_TOLERANCE:J = -0x3e8L

.field private static final PERMISSION_LIST:[Ljava/lang/String;


# instance fields
.field private m_IsMonitoringSysLocationMode:Z

.field private m_LocationListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final m_LocationListeners:[Landroid/location/LocationListener;

.field private m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

.field private m_NeedToRequestPermissions:Z

.field private m_OPAMapLocationListener:Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

.field private final m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/PermissionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/PermissionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_PermissionManager:Lcom/oneplus/base/PermissionManager;

.field private m_PermissionsGranted:Z

.field private m_PrevLocationSetting:Z

.field private m_RequestPermissionResults:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_SupportAMAP:Z

.field private m_SysLocationManager:Landroid/location/LocationManager;

.field private m_SysLocationMode:I

.field private final m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/location/UILocationManagerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/location/UILocationManagerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/location/UILocationManagerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PrevLocationSetting:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/location/UILocationManagerImpl;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/VideoCaptureState;->values()[Lcom/oneplus/camera/VideoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_NeedToRequestPermissions:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PrevLocationSetting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/location/UILocationManagerImpl;)Lcom/oneplus/base/Settings;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->checkPermissions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->checkSystemLocationMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/location/UILocationManagerImpl;ILandroid/location/Location;)V
    .locals 0
    .param p1, "providerIndex"    # I
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onLocationChanged(ILandroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/location/UILocationManagerImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "permissionResult"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onPermissionResult(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/location/UILocationManagerImpl;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onSystemLocationModeChanged(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->startLocationListeners()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->stopLocationListeners()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->PERMISSION_LIST:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Z)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "supportAMAP"    # Z

    .prologue
    const/4 v2, 0x1

    .line 111
    const-string/jumbo v0, "Location Manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/location/LocationListener;

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    .line 57
    iput-boolean v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_NeedToRequestPermissions:Z

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_RequestPermissionResults:Ljava/util/Hashtable;

    .line 64
    iput-boolean v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SupportAMAP:Z

    .line 67
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_OPAMapLocationListener:Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

    .line 71
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$1;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$2;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 90
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$3;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 112
    iput-boolean p2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SupportAMAP:Z

    .line 109
    return-void
.end method

.method private checkPermissions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 121
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PERMISSION_LIST:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 123
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PERMISSION_LIST:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkPermissions() - Permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/location/UILocationManagerImpl;->PERMISSION_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not granted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-boolean v5, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    .line 121
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method private checkSystemLocationMode()V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onSystemLocationModeChanged(I)V

    .line 139
    iget-boolean v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    if-nez v1, :cond_0

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    .line 133
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private isBetterLocation(ILandroid/location/Location;Landroid/location/Location;)Z
    .locals 12
    .param p1, "providerIndex"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 603
    if-nez p2, :cond_0

    .line 604
    const/4 v8, 0x0

    return v8

    .line 607
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    const v9, 0x453b8000    # 3000.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 608
    const/4 v8, 0x0

    return v8

    .line 611
    :cond_1
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    .line 612
    const/4 v8, 0x0

    return v8

    .line 614
    :cond_2
    if-nez p3, :cond_3

    .line 615
    const/4 v8, 0x1

    return v8

    .line 619
    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 620
    .local v6, "timeDelta":J
    const-wide/32 v8, 0x1d4c0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    const/4 v4, 0x1

    .line 621
    .local v4, "isSignificantlyNewer":Z
    :goto_0
    const-wide/32 v8, -0x1d4c0

    cmp-long v8, v6, v8

    if-gez v8, :cond_5

    const/4 v5, 0x1

    .line 622
    .local v5, "isSignificantlyOlder":Z
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_6

    const/4 v3, 0x1

    .line 624
    .local v3, "isNewer":Z
    :goto_2
    if-eqz v4, :cond_7

    .line 625
    const/4 v8, 0x1

    return v8

    .line 620
    .end local v3    # "isNewer":Z
    .end local v4    # "isSignificantlyNewer":Z
    .end local v5    # "isSignificantlyOlder":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isSignificantlyNewer":Z
    goto :goto_0

    .line 621
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "isSignificantlyOlder":Z
    goto :goto_1

    .line 622
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isNewer":Z
    goto :goto_2

    .line 626
    :cond_7
    if-eqz v5, :cond_8

    .line 627
    const/4 v8, 0x0

    return v8

    .line 630
    :cond_8
    const/4 v2, 0x0

    .line 631
    .local v2, "isFromSameProvider":Z
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 632
    const/4 v2, 0x1

    .line 635
    :cond_9
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 636
    .local v0, "accuracyDelta":I
    if-gez v0, :cond_a

    const/4 v1, 0x1

    .line 638
    .local v1, "isAccuracyBetter":Z
    :goto_3
    if-eqz v1, :cond_b

    .line 640
    const/4 v8, 0x1

    return v8

    .line 636
    .end local v1    # "isAccuracyBetter":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    .line 641
    .restart local v1    # "isAccuracyBetter":Z
    :cond_b
    if-eqz v3, :cond_c

    if-eqz v1, :cond_d

    .line 644
    :cond_c
    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    .line 645
    const/4 v8, 0x1

    return v8

    .line 643
    :cond_d
    const/4 v8, 0x1

    return v8

    .line 647
    :cond_e
    const/4 v8, 0x0

    return v8
.end method

.method private onLocationChanged(ILandroid/location/Location;)V
    .locals 2
    .param p1, "providerIndex"    # I
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 262
    iget v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationMode:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLocationChanged() - System location mode is OFF"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SupportAMAP:Z

    if-eqz v0, :cond_1

    .line 270
    const-string/jumbo v0, "network"

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "H2 don\'t use NETWORK Location Service"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    .line 275
    :cond_1
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->AMAP:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "O2 don\'t use AMAP Location Service"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 281
    :cond_2
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->isBetterLocation(ILandroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLocationChanged() - Use BetterLocation : "

    invoke-static {v0, v1, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 259
    :cond_3
    return-void
.end method

.method private onPermissionResult(Ljava/lang/String;I)V
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "permissionResult"    # I

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v4, Lcom/oneplus/camera/location/UILocationManagerImpl;->PERMISSION_LIST:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 298
    .local v0, "requestPermission":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 300
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPermissionResult() - Permission has not completed yet"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    .line 296
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "requestPermission":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    .line 307
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "requestPermission$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .restart local v0    # "requestPermission":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 311
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPermissionResult() - Permission denied: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iput-boolean v3, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    goto :goto_1

    .line 315
    .end local v0    # "requestPermission":Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    if-eqz v2, :cond_4

    .line 316
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->startLocationListeners()V

    .line 319
    :goto_2
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 322
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v3, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 323
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v3, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 290
    return-void

    .line 318
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v4, "Location.Save"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private onSystemLocationModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSystemLocationModeChanged() - Location mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    iput p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationMode:I

    .line 333
    if-nez p1, :cond_0

    .line 334
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 328
    :cond_0
    return-void
.end method

.method private requestPermissions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 342
    iget-boolean v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_NeedToRequestPermissions:Z

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-nez v2, :cond_1

    .line 346
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/base/PermissionManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/PermissionManager;

    iput-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    .line 347
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-nez v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestPermissions() - Cannot find permission manager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 343
    :cond_0
    return-void

    .line 355
    :cond_1
    iput-boolean v5, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_NeedToRequestPermissions:Z

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PERMISSION_LIST:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/location/UILocationManagerImpl;->PERMISSION_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 360
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PERMISSION_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    .line 365
    return-void

    .line 369
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v3, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/base/PermissionManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 370
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v3, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/base/PermissionManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 371
    iget-object v3, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v3, v4, v2, v5}, Lcom/oneplus/base/PermissionManager;->requestPermissions(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;I)V

    .line 339
    return-void
.end method

.method private startLocationListeners()V
    .locals 22

    .prologue
    .line 379
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    return-void

    .line 381
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v6, "Location.Save"

    invoke-virtual {v2, v6}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 384
    return-void

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    if-nez v2, :cond_3

    .line 388
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_NeedToRequestPermissions:Z

    if-eqz v2, :cond_2

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->requestPermissions()V

    .line 391
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_PermissionsGranted:Z

    if-nez v2, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startLocationListeners() - Waiting for permissions request"

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void

    .line 399
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startLocationListeners() - Permissions denied"

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 403
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    .line 404
    .local v10, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v6

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v2}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_0

    .line 410
    return-void

    .line 412
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v6

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_1

    .line 418
    return-void

    .line 422
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_4

    .line 423
    const-string/jumbo v2, "location"

    invoke-virtual {v10, v2}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    .line 427
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    array-length v2, v2

    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_6

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    aget-object v2, v2, v13

    if-nez v2, :cond_5

    .line 431
    move v14, v13

    .line 432
    .local v14, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    new-instance v6, Lcom/oneplus/camera/location/UILocationManagerImpl$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14}, Lcom/oneplus/camera/location/UILocationManagerImpl$8;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;I)V

    aput-object v6, v2, v13

    .line 427
    .end local v14    # "index":I
    :cond_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 457
    :cond_6
    const/4 v15, 0x0

    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x0

    .line 458
    .local v16, "locationRet":Landroid/location/Location;
    const/4 v14, 0x0

    .restart local v14    # "index":I
    const/4 v11, 0x0

    .line 459
    .local v11, "enabledIndex":I
    const/4 v12, 0x0

    .line 464
    .local v12, "hasProviders":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SupportAMAP:Z

    if-eqz v2, :cond_8

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v2, :cond_7

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/amap/api/location/LocationManagerProxy;->setGpsEnable(Z)V

    .line 471
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string/jumbo v6, "lbs"

    invoke-virtual {v2, v6}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string/jumbo v3, "lbs"

    const-wide/16 v4, 0x2710

    const/high16 v6, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_OPAMapLocationListener:Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string/jumbo v6, "lbs"

    invoke-virtual {v2, v6}, Lcom/amap/api/location/LocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v15

    .line 474
    .local v15, "location":Landroid/location/Location;
    if-eqz v15, :cond_8

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AMAP AMapNetwork Latitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Longitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/location/Location;->getTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->AMAP:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v14

    .line 477
    move-object/from16 v16, v15

    .line 483
    .end local v15    # "location":Landroid/location/Location;
    .end local v16    # "locationRet":Landroid/location/Location;
    :cond_8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListenerMap:Ljava/util/HashMap;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 485
    .local v8, "allProvider":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "provider$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 486
    .local v3, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "provider = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 488
    const/4 v12, 0x1

    .line 489
    const-wide/16 v4, 0x0

    .line 490
    .local v4, "minTime":J
    const/4 v9, 0x0

    .line 491
    .local v9, "badAccuracy":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v15

    .line 492
    .restart local v15    # "location":Landroid/location/Location;
    const-string/jumbo v2, "passive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 494
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->PASSIVE:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v11

    .line 495
    const-wide/32 v4, 0x927c0

    .line 496
    if-eqz v15, :cond_a

    .line 497
    invoke-virtual {v15}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const v6, 0x453b8000    # 3000.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_a

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "passive Location is out of acceptable accuracy"

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v9, 0x1

    .line 516
    :cond_a
    :goto_2
    if-nez v9, :cond_b

    if-eqz v15, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Location Latitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Longitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 518
    const-string/jumbo v7, " time: "

    .line 517
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual {v15}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    .line 517
    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 518
    const-string/jumbo v7, " provider = "

    .line 517
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    move v14, v11

    .line 520
    move-object/from16 v16, v15

    .line 522
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListenerMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    aget-object v6, v6, v11

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListenerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationListener;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_1

    .line 492
    :cond_c
    const-string/jumbo v2, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 504
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->NETWORK:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v11

    .line 505
    const-wide/16 v4, 0x2710

    .line 506
    goto/16 :goto_2

    .line 492
    :cond_d
    const-string/jumbo v2, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 508
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->GPS:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v11

    .line 509
    const-wide/16 v4, 0x2710

    .line 510
    goto/16 :goto_2

    .line 529
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "minTime":J
    .end local v9    # "badAccuracy":Z
    .end local v15    # "location":Landroid/location/Location;
    :cond_e
    if-eqz v16, :cond_f

    .line 530
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const v6, 0x453b8000    # 3000.0f

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_11

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_11

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startLocationListeners() - Use last known "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " location : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v2, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onLocationChanged(ILandroid/location/Location;)V

    .line 539
    :cond_f
    :goto_3
    if-nez v12, :cond_10

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startLocationListeners() - No available location providers"

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_10
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 376
    return-void

    .line 534
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startLocationListeners() - Last known "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 412
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private stopLocationListeners()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 551
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 552
    return-void

    .line 553
    :cond_0
    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    return-void

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopLocationListeners()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 560
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 561
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 558
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 563
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    if-eqz v1, :cond_4

    .line 564
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_OPAMapLocationListener:Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 565
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v1}, Lcom/amap/api/location/LocationManagerProxy;->destroy()V

    .line 566
    iput-object v3, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 569
    :cond_4
    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 548
    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->stopLocationListeners()V

    .line 156
    iget-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    .line 166
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 150
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 178
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->checkPermissions()V

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 182
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/location/UILocationManagerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$4;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 191
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/location/UILocationManagerImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$5;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 219
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/location/UILocationManagerImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$6;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/location/UILocationManagerImpl$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$7;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 254
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->checkSystemLocationMode()V

    .line 172
    return-void
.end method
