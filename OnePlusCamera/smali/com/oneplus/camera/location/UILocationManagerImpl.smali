.class final Lcom/oneplus/camera/location/UILocationManagerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "UILocationManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/location/LocationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/location/UILocationManagerImpl$6;,
        Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;,
        Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;
    }
.end annotation


# static fields
.field private static final MAX_ACCURACY_TOLERANCE:F = 3000.0f

.field private static final MAX_TIME_TOLERANCE:I = 0x1d4c0

.field protected static final MIN_GPS_TIME_TOLERANCE:J = -0x3e8L


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

.field private m_OPAMapLocationListener:Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

.field private m_SupportAMAP:Z

.field private m_SysLocationManager:Landroid/location/LocationManager;

.field private m_SysLocationMode:I

.field private final m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Z)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "supportAMAP"    # Z

    .prologue
    .line 71
    const-string v0, "Location Manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/location/LocationListener;

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SupportAMAP:Z

    .line 46
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_OPAMapLocationListener:Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

    .line 50
    new-instance v0, Lcom/oneplus/camera/location/UILocationManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$1;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-boolean p2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SupportAMAP:Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/location/UILocationManagerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onSystemLocationModeChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->startLocationListeners()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->stopLocationListeners()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/location/UILocationManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/camera/location/UILocationManagerImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->checkSystemLocationMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/location/UILocationManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/camera/location/UILocationManagerImpl;ILandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onLocationChanged(ILandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/camera/location/UILocationManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/camera/location/UILocationManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkSystemLocationMode()V
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onSystemLocationModeChanged(I)V

    .line 83
    iget-boolean v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    .line 89
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
    .line 425
    if-nez p2, :cond_0

    .line 426
    const/4 v8, 0x0

    .line 469
    :goto_0
    return v8

    .line 429
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    const v9, 0x453b8000    # 3000.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 430
    const/4 v8, 0x0

    goto :goto_0

    .line 433
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

    .line 434
    const/4 v8, 0x0

    goto :goto_0

    .line 436
    :cond_2
    if-nez p3, :cond_3

    .line 437
    const/4 v8, 0x1

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 442
    .local v6, "timeDelta":J
    const-wide/32 v8, 0x1d4c0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    const/4 v4, 0x1

    .line 443
    .local v4, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v8, -0x1d4c0

    cmp-long v8, v6, v8

    if-gez v8, :cond_5

    const/4 v5, 0x1

    .line 444
    .local v5, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_6

    const/4 v3, 0x1

    .line 446
    .local v3, "isNewer":Z
    :goto_3
    if-eqz v4, :cond_7

    .line 447
    const/4 v8, 0x1

    goto :goto_0

    .line 442
    .end local v3    # "isNewer":Z
    .end local v4    # "isSignificantlyNewer":Z
    .end local v5    # "isSignificantlyOlder":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 443
    .restart local v4    # "isSignificantlyNewer":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 444
    .restart local v5    # "isSignificantlyOlder":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 448
    .restart local v3    # "isNewer":Z
    :cond_7
    if-eqz v5, :cond_8

    .line 449
    const/4 v8, 0x0

    goto :goto_0

    .line 452
    :cond_8
    const/4 v2, 0x0

    .line 453
    .local v2, "isFromSameProvider":Z
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 454
    const/4 v2, 0x1

    .line 457
    :cond_9
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 458
    .local v0, "accuracyDelta":I
    if-gez v0, :cond_a

    const/4 v1, 0x1

    .line 460
    .local v1, "isAccuracyBetter":Z
    :goto_4
    if-eqz v1, :cond_b

    .line 462
    const/4 v8, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "isAccuracyBetter":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 463
    .restart local v1    # "isAccuracyBetter":Z
    :cond_b
    if-eqz v3, :cond_c

    if-nez v1, :cond_c

    .line 465
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 466
    :cond_c
    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 467
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 469
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private onLocationChanged(ILandroid/location/Location;)V
    .locals 2
    .param p1, "providerIndex"    # I
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 176
    iget v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationMode:I

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onLocationChanged() - System location mode is OFF"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SupportAMAP:Z

    if-eqz v0, :cond_2

    .line 184
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->NETWORK:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "H2 don\'t use NETWORK Location Service"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->AMAP:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "O2 don\'t use AMAP Location Service"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_3
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->isBetterLocation(ILandroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onLocationChanged() - Use BetterLocation : "

    invoke-static {v0, v1, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onSystemLocationModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onSystemLocationModeChanged() - Location mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    iput p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationMode:I

    .line 209
    if-nez p1, :cond_0

    .line 210
    sget-object v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 211
    :cond_0
    return-void
.end method

.method private startLocationListeners()V
    .locals 22

    .prologue
    .line 218
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getSettings()Lcom/oneplus/camera/Settings;

    move-result-object v2

    const-string v6, "Location.Save"

    invoke-virtual {v2, v6}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    .line 226
    .local v10, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v6, Lcom/oneplus/camera/location/UILocationManagerImpl$6;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v2}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    sget-object v6, Lcom/oneplus/camera/location/UILocationManagerImpl$6;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 244
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_2

    .line 245
    const-string v2, "location"

    invoke-virtual {v10, v2}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    array-length v2, v2

    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_4

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    aget-object v2, v2, v13

    if-nez v2, :cond_3

    .line 253
    move v15, v13

    .line 254
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    new-instance v6, Lcom/oneplus/camera/location/UILocationManagerImpl$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v15}, Lcom/oneplus/camera/location/UILocationManagerImpl$5;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;I)V

    aput-object v6, v2, v13

    .line 249
    .end local v15    # "index":I
    :cond_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 279
    :cond_4
    const/16 v16, 0x0

    .local v16, "location":Landroid/location/Location;
    const/16 v17, 0x0

    .line 280
    .local v17, "locationRet":Landroid/location/Location;
    const/4 v15, 0x0

    .restart local v15    # "index":I
    const/4 v11, 0x0

    .line 281
    .local v11, "enabledIndex":I
    const/4 v12, 0x0

    .line 286
    .local v12, "hasProviders":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SupportAMAP:Z

    if-eqz v2, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v2, :cond_5

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/amap/api/location/LocationManagerProxy;->setGpsEnable(Z)V

    .line 293
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string v6, "lbs"

    invoke-virtual {v2, v6}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string v3, "lbs"

    const-wide/16 v4, 0x2710

    const/high16 v6, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_OPAMapLocationListener:Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string v6, "lbs"

    invoke-virtual {v2, v6}, Lcom/amap/api/location/LocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v16

    .line 296
    if-eqz v16, :cond_6

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AMAP AMapNetwork Latitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Longitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->AMAP:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v15

    .line 299
    move-object/from16 v17, v16

    .line 305
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListenerMap:Ljava/util/HashMap;

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 307
    .local v8, "allProvider":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    .local v3, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 310
    const/4 v12, 0x1

    .line 311
    const-wide/16 v4, 0x0

    .line 312
    .local v4, "minTime":J
    const/4 v9, 0x0

    .line 313
    .local v9, "badAccuracy":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v16

    .line 314
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_8
    :goto_3
    packed-switch v2, :pswitch_data_2

    goto :goto_2

    .line 316
    :pswitch_2
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->PASSIVE:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v11

    .line 317
    const-wide/32 v4, 0x927c0

    .line 318
    if-eqz v16, :cond_9

    .line 319
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const v6, 0x453b8000    # 3000.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_9

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "passive Location is out of acceptable accuracy"

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v9, 0x1

    .line 338
    :cond_9
    :goto_4
    if-nez v9, :cond_a

    if-eqz v16, :cond_a

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Location Latitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Longitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " provider = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    move v15, v11

    .line 342
    move-object/from16 v17, v16

    .line 344
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListenerMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    aget-object v6, v6, v11

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListenerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationListener;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_2

    .line 314
    :sswitch_0
    const-string v6, "passive"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "network"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v2, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "gps"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v2, 0x2

    goto/16 :goto_3

    .line 326
    :pswitch_3
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->NETWORK:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v11

    .line 327
    const-wide/16 v4, 0x2710

    .line 328
    goto/16 :goto_4

    .line 330
    :pswitch_4
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->GPS:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v11

    .line 331
    const-wide/16 v4, 0x2710

    .line 332
    goto/16 :goto_4

    .line 351
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "minTime":J
    .end local v9    # "badAccuracy":Z
    :cond_b
    if-eqz v17, :cond_c

    .line 352
    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const v6, 0x453b8000    # 3000.0f

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_e

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_e

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startLocationListeners() - Use last known "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " location : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v2, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->onLocationChanged(ILandroid/location/Location;)V

    .line 361
    :cond_c
    :goto_5
    if-nez v12, :cond_d

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "startLocationListeners() - No available location providers"

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_d
    sget-object v2, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 356
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startLocationListeners() - Last known "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 234
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 314
    :sswitch_data_0
    .sparse-switch
        -0x2f3590d9 -> :sswitch_0
        0x190aa -> :sswitch_2
        0x6de15a2e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private stopLocationListeners()V
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopLocationListeners()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 382
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationListeners:[Landroid/location/LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 380
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 385
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    if-eqz v1, :cond_4

    .line 386
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_OPAMapLocationListener:Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 387
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    invoke-virtual {v1}, Lcom/amap/api/location/LocationManagerProxy;->destroy()V

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_LocationManagerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 391
    :cond_4
    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->stopLocationListeners()V

    .line 100
    iget-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationManager:Landroid/location/LocationManager;

    .line 110
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 111
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 123
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/location/UILocationManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$2;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 132
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/location/UILocationManagerImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$3;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 150
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/location/UILocationManagerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/location/UILocationManagerImpl$4;-><init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 168
    invoke-direct {p0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->checkSystemLocationMode()V

    .line 169
    return-void
.end method
