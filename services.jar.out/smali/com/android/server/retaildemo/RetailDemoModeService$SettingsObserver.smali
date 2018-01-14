.class Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final KEY_USER_INACTIVITY_TIMEOUT:Ljava/lang/String; = "user_inactivity_timeout_ms"

.field private static final KEY_WARNING_DIALOG_TIMEOUT:Ljava/lang/String; = "warning_dialog_timeout_ms"


# instance fields
.field private final mDeviceDemoModeUri:Landroid/net/Uri;

.field private final mDeviceProvisionedUri:Landroid/net/Uri;

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mRetailDemoConstantsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->refreshTimeoutConstants()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    .line 209
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 200
    const-string/jumbo v0, "device_demo_mode"

    .line 199
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceDemoModeUri:Landroid/net/Uri;

    .line 202
    const-string/jumbo v0, "device_provisioned"

    .line 201
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 204
    const-string/jumbo v0, "retail_demo_mode_constants"

    .line 203
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mRetailDemoConstantsUri:Landroid/net/Uri;

    .line 206
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 208
    return-void
.end method

.method private refreshTimeoutConstants()V
    .locals 6

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v2}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 254
    const-string/jumbo v3, "retail_demo_mode_constants"

    .line 253
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "warning_dialog_timeout_ms"

    .line 260
    const-wide/16 v4, 0x0

    .line 259
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mWarningDialogTimeout:J

    .line 261
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "user_inactivity_timeout_ms"

    .line 262
    const-wide/32 v4, 0x15f90

    .line 261
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserInactivityTimeout:J

    .line 263
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-wide v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserInactivityTimeout:J

    const-wide/16 v4, 0x2710

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserInactivityTimeout:J

    .line 251
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "exc":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid string passed to KeyValueListParser"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mRetailDemoConstantsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->refreshTimeoutConstants()V

    .line 224
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceDemoModeUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    .line 228
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap4(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    .line 238
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap2(Lcom/android/server/retaildemo/RetailDemoModeService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver$1;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    :cond_2
    return-void

    .line 231
    :cond_3
    const-string/jumbo v0, "sys.retaildemo.enabled"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceDemoModeUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 215
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 216
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mRetailDemoConstantsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 212
    return-void
.end method
