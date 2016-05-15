.class public Lcom/android/internal/policy/impl/FingerprintUnlock;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;,
        Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    }
.end annotation


# static fields
.field static fingerprintEnable:Z

.field static mScreenState:Z

.field static mStartIdentify:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAttempts:I

.field private mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

.field mCaptureStatus:I

.field mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

.field private mIds:[I

.field mLock:Ljava/lang/Object;

.field private mMaxAttempts:I

.field private mSupport:Z

.field private mToast:Lcom/android/internal/policy/impl/keyguardToast;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field noMatchView:Landroid/view/View;

.field private oemSettings:Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;

.field private persistFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    sput-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    .line 162
    sput v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 163
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;ILandroid/os/Handler;Landroid/content/Context;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    .param p2, "maxAttempts"    # I
    .param p3, "mH"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v3, "WindowManager"

    iput-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->noMatchView:Landroid/view/View;

    .line 60
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    .line 63
    const-string v3, "/persist/lock_setting/opfinger_toggle.xml"

    iput-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->persistFile:Ljava/lang/String;

    .line 64
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    .line 155
    iput-object v4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 330
    iput v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCaptureStatus:I

    .line 396
    new-instance v3, Lcom/android/internal/policy/impl/FingerprintUnlock$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FingerprintUnlock$1;-><init>(Lcom/android/internal/policy/impl/FingerprintUnlock;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    .line 68
    iput p2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mMaxAttempts:I

    .line 69
    iput-object p3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oem.finger.print.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    .line 71
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iput-object p4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    .line 79
    iget-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFingerprintSupport =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "power"

    invoke-virtual {p4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 81
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v3, "fingerprintUnlock"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    new-instance v3, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/FingerprintUnlock;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->oemSettings:Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;

    .line 83
    iget-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->oemSettings:Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;->observe()V

    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->getToggleValueFingerLockScreen()I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    sput-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    .line 85
    sget-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 84
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/FingerprintUnlock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FingerprintUnlock;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FingerprintUnlock;)Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FingerprintUnlock;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/FingerprintUnlock;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FingerprintUnlock;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/internal/policy/impl/FingerprintUnlock;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FingerprintUnlock;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    return v0
.end method

.method private getToggleValueFingerLockScreen()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 134
    const-string v2, "0"

    .line 136
    .local v2, "toggleValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->getOPFingerToggleDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 138
    .local v0, "document":Lorg/w3c/dom/Document;
    const-string v4, "oem_finger_lockscreen"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 140
    .local v1, "root":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 144
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "root":Lorg/w3c/dom/Element;
    :goto_0
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 141
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getOPFingerToggleDocument()Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 149
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 150
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->persistFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 151
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->normalize()V

    .line 152
    return-object v1
.end method

.method public identifyContinue()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->identifyContinue()V

    .line 271
    :cond_0
    return-void
.end method

.method public identifyPause()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->identifyPause()V

    .line 265
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_2

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 246
    :cond_1
    monitor-exit v1

    .line 259
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAbort  mScreenState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStartIdentify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->removeNoMatchView()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 258
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCaptureCompleted()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCaptureStatus:I

    .line 346
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCaptureStatus:I

    .line 336
    return-void
.end method

.method public onIdentified(IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 389
    return-void
.end method

.method public onInput()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;->keepScreenOn(I)V

    .line 341
    return-void
.end method

.method public onNoMatch()V
    .locals 6

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_1

    .line 352
    :cond_0
    monitor-exit v1

    .line 365
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_2

    .line 355
    monitor-exit v1

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 359
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNoMatch  mScreenState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStartIdentify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIds:[I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager;->startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I

    .line 364
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_2

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 281
    :cond_1
    monitor-exit v1

    .line 296
    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->removeNoMatchView()V

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRelease mStartIdentify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    .line 289
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->identifyContinue()V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->release()I

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 295
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRestartFpId()V
    .locals 6

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_1

    .line 370
    :cond_0
    monitor-exit v1

    .line 383
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_2

    .line 373
    monitor-exit v1

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 377
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReStartFpId  mScreenState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStartIdentify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIds:[I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager;->startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I

    .line 382
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onSucess()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_2

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 226
    :cond_1
    monitor-exit v1

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_3

    .line 229
    monitor-exit v1

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    const-string v2, "FingerprintManager on onSucess "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->release()I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 235
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onWaitingForInput()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;->keepScreenOn(I)V

    .line 321
    iget v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCaptureStatus:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 323
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeNoMatchView()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguardToast;->mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguardToast$TN;->handleHide()V

    .line 315
    :cond_0
    return-void
.end method

.method public resetAttempts()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAttempts  mAttempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    .line 394
    return-void
.end method

.method public resume(Z)V
    .locals 7
    .param p1, "intercative"    # Z

    .prologue
    const/4 v5, 0x1

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    :try_start_0
    sget-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v1, :cond_2

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    const-string v3, "FingerprintManager disEnable"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v1}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 174
    :cond_1
    monitor-exit v2

    .line 217
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " on resume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intercative "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStartIdentify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    .line 181
    sget v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    if-ne v1, v5, :cond_3

    sget-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    if-eq v1, p1, :cond_3

    .line 182
    sput-boolean p1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    sget-boolean v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v1, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager;->notifyScreenOff(Z)V

    .line 187
    :cond_3
    sget v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    if-ne v1, v5, :cond_4

    if-nez p1, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->identifyContinue()V

    .line 190
    :cond_4
    sget v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    if-nez v1, :cond_8

    .line 191
    sput-boolean p1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    .line 192
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    .line 194
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    const-string v3, "FingerprintManager open "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/oneplus/fingerprints/service/FingerprintManager;->open()Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    :try_end_1
    .catch Lcom/oneplus/fingerprints/service/UnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_5
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v1, :cond_6

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    const-string v3, "open FingerprintManager error on resume"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v2

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lcom/oneplus/fingerprints/service/UnsupportedException;
    :try_start_3
    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/UnsupportedException;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v0    # "e":Lcom/oneplus/fingerprints/service/UnsupportedException;
    :cond_6
    const/4 v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 208
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_7

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 212
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/fingerprints/service/FingerprintManager;->notifyScreenOff(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/oneplus/fingerprints/service/FingerprintManager;->startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I

    .line 216
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public showNoMatchView(Ljava/lang/String;)V
    .locals 3
    .param p1, "attample"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/android/internal/policy/impl/keyguardToast;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/policy/impl/keyguardToast;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguardToast;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguardToast;->mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguardToast$TN;->handleShow()V

    .line 307
    return-void
.end method

.method public updateOemSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oem_finger_lockscreen"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    .line 122
    sget-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 131
    return-void

    :cond_0
    move v1, v2

    .line 120
    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
