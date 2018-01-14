.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$10;,
        Landroid/app/SystemServiceRegistry$11;,
        Landroid/app/SystemServiceRegistry$12;,
        Landroid/app/SystemServiceRegistry$13;,
        Landroid/app/SystemServiceRegistry$14;,
        Landroid/app/SystemServiceRegistry$15;,
        Landroid/app/SystemServiceRegistry$16;,
        Landroid/app/SystemServiceRegistry$17;,
        Landroid/app/SystemServiceRegistry$18;,
        Landroid/app/SystemServiceRegistry$19;,
        Landroid/app/SystemServiceRegistry$1;,
        Landroid/app/SystemServiceRegistry$20;,
        Landroid/app/SystemServiceRegistry$21;,
        Landroid/app/SystemServiceRegistry$22;,
        Landroid/app/SystemServiceRegistry$23;,
        Landroid/app/SystemServiceRegistry$24;,
        Landroid/app/SystemServiceRegistry$25;,
        Landroid/app/SystemServiceRegistry$26;,
        Landroid/app/SystemServiceRegistry$27;,
        Landroid/app/SystemServiceRegistry$28;,
        Landroid/app/SystemServiceRegistry$29;,
        Landroid/app/SystemServiceRegistry$2;,
        Landroid/app/SystemServiceRegistry$30;,
        Landroid/app/SystemServiceRegistry$31;,
        Landroid/app/SystemServiceRegistry$32;,
        Landroid/app/SystemServiceRegistry$33;,
        Landroid/app/SystemServiceRegistry$34;,
        Landroid/app/SystemServiceRegistry$35;,
        Landroid/app/SystemServiceRegistry$36;,
        Landroid/app/SystemServiceRegistry$37;,
        Landroid/app/SystemServiceRegistry$38;,
        Landroid/app/SystemServiceRegistry$39;,
        Landroid/app/SystemServiceRegistry$3;,
        Landroid/app/SystemServiceRegistry$40;,
        Landroid/app/SystemServiceRegistry$41;,
        Landroid/app/SystemServiceRegistry$42;,
        Landroid/app/SystemServiceRegistry$43;,
        Landroid/app/SystemServiceRegistry$44;,
        Landroid/app/SystemServiceRegistry$45;,
        Landroid/app/SystemServiceRegistry$46;,
        Landroid/app/SystemServiceRegistry$47;,
        Landroid/app/SystemServiceRegistry$48;,
        Landroid/app/SystemServiceRegistry$49;,
        Landroid/app/SystemServiceRegistry$4;,
        Landroid/app/SystemServiceRegistry$50;,
        Landroid/app/SystemServiceRegistry$51;,
        Landroid/app/SystemServiceRegistry$52;,
        Landroid/app/SystemServiceRegistry$53;,
        Landroid/app/SystemServiceRegistry$54;,
        Landroid/app/SystemServiceRegistry$55;,
        Landroid/app/SystemServiceRegistry$56;,
        Landroid/app/SystemServiceRegistry$57;,
        Landroid/app/SystemServiceRegistry$58;,
        Landroid/app/SystemServiceRegistry$59;,
        Landroid/app/SystemServiceRegistry$5;,
        Landroid/app/SystemServiceRegistry$60;,
        Landroid/app/SystemServiceRegistry$61;,
        Landroid/app/SystemServiceRegistry$62;,
        Landroid/app/SystemServiceRegistry$63;,
        Landroid/app/SystemServiceRegistry$64;,
        Landroid/app/SystemServiceRegistry$65;,
        Landroid/app/SystemServiceRegistry$66;,
        Landroid/app/SystemServiceRegistry$67;,
        Landroid/app/SystemServiceRegistry$68;,
        Landroid/app/SystemServiceRegistry$69;,
        Landroid/app/SystemServiceRegistry$6;,
        Landroid/app/SystemServiceRegistry$70;,
        Landroid/app/SystemServiceRegistry$71;,
        Landroid/app/SystemServiceRegistry$72;,
        Landroid/app/SystemServiceRegistry$73;,
        Landroid/app/SystemServiceRegistry$74;,
        Landroid/app/SystemServiceRegistry$75;,
        Landroid/app/SystemServiceRegistry$76;,
        Landroid/app/SystemServiceRegistry$77;,
        Landroid/app/SystemServiceRegistry$7;,
        Landroid/app/SystemServiceRegistry$8;,
        Landroid/app/SystemServiceRegistry$9;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static sServiceCacheSize:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    .line 159
    const-string/jumbo v0, "accessibility"

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 160
    new-instance v2, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    .line 159
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 166
    const-string/jumbo v0, "captioning"

    const-class v1, Landroid/view/accessibility/CaptioningManager;

    .line 167
    new-instance v2, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    .line 166
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 173
    const-string/jumbo v0, "account"

    const-class v1, Landroid/accounts/AccountManager;

    .line 174
    new-instance v2, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    .line 173
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 182
    const-string/jumbo v0, "activity"

    const-class v1, Landroid/app/ActivityManager;

    .line 183
    new-instance v2, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    .line 182
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 189
    const-string/jumbo v0, "alarm"

    const-class v1, Landroid/app/AlarmManager;

    .line 190
    new-instance v2, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    .line 189
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 198
    const-string/jumbo v0, "audio"

    const-class v1, Landroid/media/AudioManager;

    .line 199
    new-instance v2, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    .line 198
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 205
    const-string/jumbo v0, "media_router"

    const-class v1, Landroid/media/MediaRouter;

    .line 206
    new-instance v2, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    .line 205
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 212
    const-string/jumbo v0, "bluetooth"

    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 213
    new-instance v2, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    .line 212
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 219
    const-string/jumbo v0, "hdmi_control"

    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    .line 220
    new-instance v2, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    .line 219
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 227
    const-string/jumbo v0, "clipboard"

    const-class v1, Landroid/content/ClipboardManager;

    .line 228
    new-instance v2, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    .line 227
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 238
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    const-class v1, Landroid/text/ClipboardManager;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v0, "connectivity"

    const-class v1, Landroid/net/ConnectivityManager;

    .line 241
    new-instance v2, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    .line 240
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 249
    const-string/jumbo v0, "country_detector"

    const-class v1, Landroid/location/CountryDetector;

    .line 250
    new-instance v2, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    .line 249
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 257
    const-string/jumbo v0, "device_policy"

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 258
    new-instance v2, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    .line 257
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 264
    const-string/jumbo v0, "download"

    const-class v1, Landroid/app/DownloadManager;

    .line 265
    new-instance v2, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    .line 264
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 271
    const-string/jumbo v0, "batterymanager"

    const-class v1, Landroid/os/BatteryManager;

    .line 272
    new-instance v2, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    .line 271
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 278
    const-string/jumbo v0, "nfc"

    const-class v1, Landroid/nfc/NfcManager;

    .line 279
    new-instance v2, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    .line 278
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 285
    const-string/jumbo v0, "dropbox"

    const-class v1, Landroid/os/DropBoxManager;

    .line 286
    new-instance v2, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    .line 285
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 301
    const-string/jumbo v0, "input"

    const-class v1, Landroid/hardware/input/InputManager;

    .line 302
    new-instance v2, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    .line 301
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 308
    const-string/jumbo v0, "display"

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 309
    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    .line 308
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 315
    const-string/jumbo v0, "input_method"

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 316
    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    .line 315
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 322
    const-string/jumbo v0, "textservices"

    const-class v1, Landroid/view/textservice/TextServicesManager;

    .line 323
    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    .line 322
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 329
    const-string/jumbo v0, "keyguard"

    const-class v1, Landroid/app/KeyguardManager;

    .line 330
    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    .line 329
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 336
    const-string/jumbo v0, "layout_inflater"

    const-class v1, Landroid/view/LayoutInflater;

    .line 337
    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    .line 336
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 343
    const-string/jumbo v0, "location"

    const-class v1, Landroid/location/LocationManager;

    .line 344
    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    .line 343
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 351
    const-string/jumbo v0, "netpolicy"

    const-class v1, Landroid/net/NetworkPolicyManager;

    .line 352
    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    .line 351
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 359
    const-string/jumbo v0, "notification"

    const-class v1, Landroid/app/NotificationManager;

    .line 360
    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    .line 359
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 375
    const-string/jumbo v0, "servicediscovery"

    const-class v1, Landroid/net/nsd/NsdManager;

    .line 376
    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    .line 375
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 384
    const-string/jumbo v0, "power"

    const-class v1, Landroid/os/PowerManager;

    .line 385
    new-instance v2, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    .line 384
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 397
    const-string/jumbo v0, "recovery"

    const-class v1, Landroid/os/RecoverySystem;

    .line 398
    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    .line 397
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 409
    const-string/jumbo v0, "search"

    const-class v1, Landroid/app/SearchManager;

    .line 410
    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    .line 409
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 417
    const-string/jumbo v0, "sensor"

    const-class v1, Landroid/hardware/SensorManager;

    .line 418
    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    .line 417
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 425
    const-string/jumbo v0, "statusbar"

    const-class v1, Landroid/app/StatusBarManager;

    .line 426
    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    .line 425
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 432
    const-string/jumbo v0, "storage"

    const-class v1, Landroid/os/storage/StorageManager;

    .line 433
    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    .line 432
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 439
    const-string/jumbo v0, "phone"

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 440
    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    .line 439
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 446
    const-string/jumbo v0, "telephony_subscription_service"

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 447
    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    .line 446
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 453
    const-string/jumbo v0, "carrier_config"

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 454
    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    .line 453
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 460
    const-string/jumbo v0, "telecom"

    const-class v1, Landroid/telecom/TelecomManager;

    .line 461
    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    .line 460
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 467
    const-string/jumbo v0, "uimode"

    const-class v1, Landroid/app/UiModeManager;

    .line 468
    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    .line 467
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 474
    const-string/jumbo v0, "usb"

    const-class v1, Landroid/hardware/usb/UsbManager;

    .line 475
    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    .line 474
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 482
    const-string/jumbo v0, "serial"

    const-class v1, Landroid/hardware/SerialManager;

    .line 483
    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    .line 482
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 490
    const-string/jumbo v0, "vibrator"

    const-class v1, Landroid/os/Vibrator;

    .line 491
    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    .line 490
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 497
    const-string/jumbo v0, "wallpaper"

    const-class v1, Landroid/app/WallpaperManager;

    .line 498
    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    .line 497
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 505
    const-string/jumbo v0, "wifi"

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 506
    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    .line 505
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 515
    const-string/jumbo v0, "wifip2p"

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 516
    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    .line 515
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 524
    const-string/jumbo v0, "wifinan"

    const-class v1, Landroid/net/wifi/nan/WifiNanManager;

    .line 525
    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    .line 524
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 536
    const-string/jumbo v0, "wifiscanner"

    const-class v1, Landroid/net/wifi/WifiScanner;

    .line 537
    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    .line 536
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 546
    const-string/jumbo v0, "rttmanager"

    const-class v1, Landroid/net/wifi/RttManager;

    .line 547
    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    .line 546
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 556
    const-string/jumbo v0, "ethernet"

    const-class v1, Landroid/net/EthernetManager;

    .line 557
    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    .line 556
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 565
    const-string/jumbo v0, "window"

    const-class v1, Landroid/view/WindowManager;

    .line 566
    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    .line 565
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 572
    const-string/jumbo v0, "user"

    const-class v1, Landroid/os/UserManager;

    .line 573
    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    .line 572
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 581
    const-string/jumbo v0, "appops"

    const-class v1, Landroid/app/AppOpsManager;

    .line 582
    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    .line 581
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 590
    const-string/jumbo v0, "camera"

    const-class v1, Landroid/hardware/camera2/CameraManager;

    .line 591
    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    .line 590
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 597
    const-string/jumbo v0, "launcherapps"

    const-class v1, Landroid/content/pm/LauncherApps;

    .line 598
    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    .line 597
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 604
    const-string/jumbo v0, "restrictions"

    const-class v1, Landroid/content/RestrictionsManager;

    .line 605
    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    .line 604
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 613
    const-string/jumbo v0, "print"

    const-class v1, Landroid/print/PrintManager;

    .line 614
    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    .line 613
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 623
    const-string/jumbo v0, "consumer_ir"

    const-class v1, Landroid/hardware/ConsumerIrManager;

    .line 624
    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    .line 623
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 630
    const-string/jumbo v0, "media_session"

    const-class v1, Landroid/media/session/MediaSessionManager;

    .line 631
    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    .line 630
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 637
    const-string/jumbo v0, "trust"

    const-class v1, Landroid/app/trust/TrustManager;

    .line 638
    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    .line 637
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 645
    const-string/jumbo v0, "fingerprint"

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 646
    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    .line 645
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 654
    const-string/jumbo v0, "tv_input"

    const-class v1, Landroid/media/tv/TvInputManager;

    .line 655
    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    .line 654
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 663
    const-string/jumbo v0, "network_score"

    const-class v1, Landroid/net/NetworkScoreManager;

    .line 664
    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    .line 663
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 670
    const-string/jumbo v0, "usagestats"

    const-class v1, Landroid/app/usage/UsageStatsManager;

    .line 671
    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    .line 670
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 679
    const-string/jumbo v0, "netstats"

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    .line 680
    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    .line 679
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 686
    const-string/jumbo v0, "jobscheduler"

    const-class v1, Landroid/app/job/JobScheduler;

    .line 687
    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    .line 686
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 694
    const-string/jumbo v0, "persistent_data_block"

    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 695
    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    .line 694
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 709
    const-string/jumbo v0, "media_projection"

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    .line 710
    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    .line 709
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 716
    const-string/jumbo v0, "appwidget"

    const-class v1, Landroid/appwidget/AppWidgetManager;

    .line 717
    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    .line 716
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 724
    const-string/jumbo v0, "midi"

    const-class v1, Landroid/media/midi/MidiManager;

    .line 725
    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    .line 724
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 735
    const-string/jumbo v0, "radio"

    const-class v1, Landroid/hardware/radio/RadioManager;

    .line 736
    new-instance v2, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    .line 735
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 744
    const-string/jumbo v0, "threekey"

    const-class v1, Lcom/oem/os/ThreeKeyManager;

    .line 745
    new-instance v2, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    .line 744
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 753
    const-string/jumbo v0, "oneplus_nfc_service"

    const-class v1, Lcom/oem/os/OnePlusNfcManager;

    .line 754
    new-instance v2, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    .line 753
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 761
    const-string/jumbo v0, "hardware_properties"

    const-class v1, Landroid/os/HardwarePropertiesManager;

    .line 762
    new-instance v2, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    .line 761
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 775
    const-string/jumbo v0, "soundtrigger"

    const-class v1, Landroid/media/soundtrigger/SoundTriggerManager;

    .line 776
    new-instance v2, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    .line 775
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 783
    const-string/jumbo v0, "shortcut"

    const-class v1, Landroid/content/pm/ShortcutManager;

    .line 784
    new-instance v2, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    .line 783
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 790
    const-string/jumbo v0, "systemhealth"

    const-class v1, Landroid/os/health/SystemHealthManager;

    .line 791
    new-instance v2, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    .line 790
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 797
    const-string/jumbo v0, "contexthub"

    const-class v1, Landroid/hardware/location/ContextHubManager;

    .line 798
    new-instance v2, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    .line 797
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 807
    const-string/jumbo v0, "longshot"

    const-class v1, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 808
    new-instance v2, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    .line 807
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 144
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 820
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 827
    sget-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 828
    .local v0, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 844
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    return-void
.end method
