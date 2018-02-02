.class public abstract Lcom/oneplus/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/BaseActivity$1;,
        Lcom/oneplus/base/BaseActivity$2;,
        Lcom/oneplus/base/BaseActivity$FileUriCallback;,
        Lcom/oneplus/base/BaseActivity$InternalHandler;,
        Lcom/oneplus/base/BaseActivity$State;,
        Lcom/oneplus/base/BaseActivity$ThemeMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I = null

.field private static AUTO_INCREASED_ID:J = 0x0L

.field private static final EXTRA_ID:Ljava/lang/String; = "com.oneplus.base.BaseActivity.extra.ID"

.field private static final INITIAL_PERMISSION_REQUEST_LIST:[Ljava/lang/String;

.field public static final LOG_EVENT_HANDLER:I = 0x400

.field public static final LOG_EVENT_HANDLER_CHANGE:I = 0x200

.field public static final LOG_EVENT_RAISE:I = 0x100

.field public static final LOG_PROPERTY_CALLBACK:I = 0x4

.field public static final LOG_PROPERTY_CALLBACK_CHANGE:I = 0x2

.field public static final LOG_PROPERTY_CHANGE:I = 0x1

.field public static final PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$ThemeMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

.field private m_BeamAdapter:Landroid/nfc/NfcAdapter;

.field private m_BeamUriCallback:Lcom/oneplus/base/BaseActivity$FileUriCallback;

.field private m_ContentView:Landroid/view/View;

.field private m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

.field private m_Id:J

.field private m_IsBeamCallbackEnabled:Z

.field private m_IsInitPermRequestCompleted:Z

.field private final m_MainThread:Ljava/lang/Thread;

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

.field private m_RequestPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-oneplus-base-BaseActivity$ThemeModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/base/BaseActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/base/BaseActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$ThemeMode;->values()[Lcom/oneplus/base/BaseActivity$ThemeMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/base/BaseActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "permissionResult"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onPermissionResult(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 65
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ConfigOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 69
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ContentView"

    const-class v2, Landroid/view/View;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    .line 73
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBeamEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 77
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBlackMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    .line 81
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsMultiWindowMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    .line 85
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsRunning"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    .line 89
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsWindowFocused"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    .line 93
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "State"

    const-class v2, Lcom/oneplus/base/BaseActivity$State;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    sget-object v4, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    .line 97
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ThemeMode"

    const-class v2, Lcom/oneplus/base/BaseActivity$ThemeMode;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    sget-object v4, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    .line 164
    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lcom/oneplus/base/BaseActivity;->INITIAL_PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    .line 168
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oneplus/base/BaseActivity;->AUTO_INCREASED_ID:J

    .line 28
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 177
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    .line 187
    new-instance v0, Lcom/oneplus/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseActivity$1;-><init>(Lcom/oneplus/base/BaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 195
    new-instance v0, Lcom/oneplus/base/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseActivity$2;-><init>(Lcom/oneplus/base/BaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_MainThread:Ljava/lang/Thread;

    .line 253
    new-instance v0, Lcom/oneplus/base/BaseObjectAdapter;

    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/BaseObjectAdapter;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    .line 254
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 255
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 249
    return-void
.end method

.method private disableBeam(Z)V
    .locals 4
    .param p1, "silently"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 292
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    .line 293
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableBeam() - NFC is not supported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableBeam()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 301
    iput-boolean v3, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    .line 305
    :cond_1
    if-nez p1, :cond_2

    .line 306
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 285
    :cond_2
    return-void
.end method

.method private enableBeam(Z)V
    .locals 4
    .param p1, "silently"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 361
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 362
    return-void

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    if-nez v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 369
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    .line 370
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enableBeam() - NFC is not supported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamUriCallback:Lcom/oneplus/base/BaseActivity$FileUriCallback;

    if-nez v0, :cond_2

    .line 377
    new-instance v0, Lcom/oneplus/base/BaseActivity$FileUriCallback;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/base/BaseActivity$FileUriCallback;-><init>(Lcom/oneplus/base/BaseActivity;Lcom/oneplus/base/BaseActivity$FileUriCallback;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamUriCallback:Lcom/oneplus/base/BaseActivity$FileUriCallback;

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enableBeam()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->m_BeamUriCallback:Lcom/oneplus/base/BaseActivity$FileUriCallback;

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 380
    iput-boolean v3, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    .line 384
    :cond_3
    if-nez p1, :cond_4

    .line 385
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 358
    :cond_4
    return-void
.end method

.method private getThemeResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "resType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getThemeResId() - Empty drawableName name"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return v6

    .line 491
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getThemeResId() - Empty resType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return v6

    .line 497
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, "requestResName":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/oneplus/base/BaseActivity;->-getcom-oneplus-base-BaseActivity$ThemeModeSwitchesValues()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v3}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 521
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 522
    .local v2, "resId":I
    if-nez v2, :cond_3

    .line 524
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getThemeResId() - invalid res : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", use light resource"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "requestResName":Ljava/lang/StringBuffer;
    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v1    # "requestResName":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "_light"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 528
    return v2

    .line 503
    .end local v2    # "resId":I
    :pswitch_0
    const-string/jumbo v3, "_android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 506
    :pswitch_1
    const-string/jumbo v3, "_dark"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 509
    :pswitch_2
    const-string/jumbo v3, "_light"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 512
    :pswitch_3
    sget-object v3, Lcom/oneplus/base/BaseActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 513
    .local v0, "isBlackMode":Z
    if-eqz v0, :cond_2

    .line 514
    const-string/jumbo v3, "_dark"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 516
    :cond_2
    const-string/jumbo v3, "_light"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 531
    .end local v0    # "isBlackMode":Z
    .restart local v2    # "resId":I
    :cond_3
    return v2

    .line 500
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getUngrantedPermissions(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ungrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->linkToPermissionManager()Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    return-void

    .line 543
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 545
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 546
    .local v1, "permission":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    invoke-interface {v2, v1}, Lcom/oneplus/base/PermissionManager;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 549
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 536
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private linkToPermissionManager()Z
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-nez v0, :cond_0

    .line 601
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/base/PermissionManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/PermissionManager;

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    .line 602
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestInitialPermissions() - Cannot find permission manager component"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x0

    return v0

    .line 608
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onAllPermissionsCompleted([Ljava/lang/String;[I)V
    .locals 8
    .param p1, "grantedPermissions"    # [Ljava/lang/String;
    .param p2, "grantedPermissionResults"    # [I

    .prologue
    const/4 v4, 0x0

    .line 629
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->linkToPermissionManager()Z

    move-result v3

    if-nez v3, :cond_0

    .line 630
    return-void

    .line 633
    :cond_0
    if-nez p1, :cond_1

    .line 634
    return-void

    .line 635
    :cond_1
    if-nez p2, :cond_2

    .line 637
    array-length v2, p1

    .line 638
    .local v2, "size":I
    new-array p2, v2, [I

    .line 639
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 640
    aput v4, p2, v0

    .line 639
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 643
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAllPermissionsCompleted() - All permissions are completed: "

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ", result: "

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 646
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/base/BaseActivity;->m_IsInitPermRequestCompleted:Z

    .line 649
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v4, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 650
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v4, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 653
    move-object v1, p2

    .line 654
    .local v1, "results":[I
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/oneplus/base/BaseActivity$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/oneplus/base/BaseActivity$3;-><init>(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;[I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method

.method private onContentViewSetInternal(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 688
    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->m_ContentView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_ContentView:Landroid/view/View;

    .line 691
    .local v0, "oldView":Landroid/view/View;
    iput-object p1, p0, Lcom/oneplus/base/BaseActivity;->m_ContentView:Landroid/view/View;

    .line 692
    invoke-virtual {p0, p1}, Lcom/oneplus/base/BaseActivity;->onContentViewSet(Landroid/view/View;)V

    .line 693
    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/base/BaseActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 686
    .end local v0    # "oldView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onPermissionResult(Ljava/lang/String;I)V
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "permissionResult"    # I

    .prologue
    const/4 v7, 0x0

    .line 833
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    if-nez v5, :cond_1

    .line 834
    :cond_0
    return-void

    .line 837
    :cond_1
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "requestPermission$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 842
    .local v1, "requestPermission":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 844
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onPermissionResult() - Permission has not completed yet"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void

    .line 850
    .end local v1    # "requestPermission":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 851
    .local v4, "size":I
    new-array v3, v4, [I

    .line 852
    .local v3, "results":[I
    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 853
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    iget-object v6, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v0

    .line 852
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 854
    :cond_4
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 855
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    new-array v6, v7, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Lcom/oneplus/base/BaseActivity;->onAllPermissionsCompleted([Ljava/lang/String;[I)V

    .line 830
    return-void
.end method

.method private requestInitialPermissions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 969
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->linkToPermissionManager()Z

    move-result v4

    if-nez v4, :cond_0

    .line 970
    return-void

    .line 973
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v3, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lcom/oneplus/base/BaseActivity;->getRequestPermissions(Ljava/util/List;)V

    .line 975
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    .line 976
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/base/BaseActivity;->getUngrantedPermissions(Ljava/util/List;Ljava/util/List;)V

    .line 977
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 978
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 980
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 981
    .local v2, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 982
    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->notifyPermissionDenied(Ljava/lang/String;)V

    .line 978
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 984
    :cond_1
    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->notifyPermissionGranted(Ljava/lang/String;)V

    goto :goto_1

    .line 986
    .end local v2    # "permission":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 988
    new-array v4, v8, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/base/BaseActivity;->onAllPermissionsCompleted([Ljava/lang/String;[I)V

    .line 989
    return-void

    .line 992
    :cond_3
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "requestInitialPermissions() - Request permissions: "

    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 995
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v5, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v4, v5, v6}, Lcom/oneplus/base/PermissionManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 996
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v5, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v4, v5, v6}, Lcom/oneplus/base/PermissionManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 997
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    new-array v6, v8, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v5, p0, v4, v8}, Lcom/oneplus/base/PermissionManager;->requestPermissions(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;I)V

    .line 966
    return-void
.end method

.method private updateThemeMode()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1059
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_black_mode"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1060
    .local v3, "themeMode":I
    iget-object v6, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateThemeMode() - themeMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    packed-switch v3, :pswitch_data_0

    .line 1073
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1078
    :goto_0
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    if-eq v6, v7, :cond_1

    .line 1079
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    if-ne v7, v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1054
    .end local v3    # "themeMode":I
    :goto_1
    return-void

    .line 1064
    .restart local v3    # "themeMode":I
    :pswitch_0
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1090
    .end local v3    # "themeMode":I
    :catch_0
    move-exception v4

    .line 1091
    .local v4, "tr":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateThemeMode() - failed to get theme mode."

    invoke-static {v5, v6, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1067
    .end local v4    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "themeMode":I
    :pswitch_1
    :try_start_1
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1070
    :pswitch_2
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1082
    :cond_1
    const-string/jumbo v5, "android.util.OpFeatures"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1083
    .local v2, "opFeaturesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "isBlackModeOn"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1084
    .local v1, "isBlackModeOnMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1085
    .local v0, "isBlackMode":Z
    sget-object v5, Lcom/oneplus/base/BaseActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1086
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateThemeMode() - isBlackMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 261
    return-void
.end method

.method public addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 269
    return-void
.end method

.method protected final disableBeam()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/base/BaseActivity;->disableBeam(Z)V

    .line 278
    return-void
.end method

.method protected final disableEventLogs(Lcom/oneplus/base/EventKey;I)V
    .locals 1
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 315
    return-void
.end method

.method protected final disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V
    .locals 1
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 326
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 339
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchKeyEvent() - activity is not running, do not dispatch key event."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final enableBeam()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/base/BaseActivity;->enableBeam(Z)V

    .line 351
    return-void
.end method

.method protected final enableEventLogs(Lcom/oneplus/base/EventKey;I)V
    .locals 1
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 394
    return-void
.end method

.method protected final enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V
    .locals 1
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 405
    return-void
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_ContentView:Landroid/view/View;

    return-object v0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseObjectAdapter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBeamUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    return-wide v0
.end method

.method protected getRequestPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/oneplus/base/BaseActivity;->INITIAL_PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 448
    return-void
.end method

.method public getThemeColor(Ljava/lang/String;)I
    .locals 5
    .param p1, "colorName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 459
    invoke-virtual {p0, p1}, Lcom/oneplus/base/BaseActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getThemeColor() - invalid color : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return v4

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method public getThemeColorResId(Ljava/lang/String;)I
    .locals 1
    .param p1, "colorName"    # Ljava/lang/String;

    .prologue
    .line 473
    const-string/jumbo v0, "color"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/base/BaseActivity;->getThemeResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemeDrawableResId(Ljava/lang/String;)I
    .locals 1
    .param p1, "drawableName"    # Ljava/lang/String;

    .prologue
    .line 479
    const-string/jumbo v0, "drawable"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/base/BaseActivity;->getThemeResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 559
    return-void
.end method

.method public isDependencyThread()Z
    .locals 2

    .prologue
    .line 567
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->m_MainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isInitialPermissionsRequestCompleted()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/oneplus/base/BaseActivity;->m_IsInitPermRequestCompleted:Z

    return v0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->linkToPermissionManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    const/4 v0, 0x0

    return v0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    invoke-interface {v0, p1}, Lcom/oneplus/base/PermissionManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p3, "newValue":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/base/BaseObjectAdapter;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 670
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 673
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 667
    return-void
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 681
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    .line 703
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 706
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 710
    :try_start_0
    const-class v2, Landroid/app/Activity;

    const-string/jumbo v3, "isInMultiWindowMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 711
    .local v0, "isInMultiWindowModeMethod":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/oneplus/base/BaseActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v0    # "isInMultiWindowModeMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    .line 721
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->disableBeam()V

    .line 724
    new-instance v2, Lcom/oneplus/base/BaseActivity$InternalHandler;

    invoke-direct {v2, p0}, Lcom/oneplus/base/BaseActivity$InternalHandler;-><init>(Lcom/oneplus/base/BaseActivity;)V

    iput-object v2, p0, Lcom/oneplus/base/BaseActivity;->m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

    .line 727
    if-eqz p1, :cond_1

    .line 728
    const-string/jumbo v2, "com.oneplus.base.BaseActivity.extra.ID"

    invoke-virtual {p1, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    .line 731
    :cond_1
    iget-wide v2, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 732
    sget-wide v2, Lcom/oneplus/base/BaseActivity;->AUTO_INCREASED_ID:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/oneplus/base/BaseActivity;->AUTO_INCREASED_ID:J

    iput-wide v2, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    .line 735
    :cond_2
    sget-object v2, Lcom/oneplus/base/BaseActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 736
    sget-object v2, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 739
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->updateThemeMode()V

    .line 700
    return-void

    .line 714
    :catch_0
    move-exception v1

    .line 715
    .local v1, "tr":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - Failed to get isInMultiWindowMode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 748
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 749
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 752
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v1, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 755
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v1, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$InternalHandler;->release()V

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    .line 766
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->disableBeam()V

    .line 770
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 745
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 4
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 789
    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 791
    .local v0, "preIsMultiWindowMode":Z
    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMultiWindowModeChanged() prev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",cur: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    if-eq v0, p1, :cond_0

    .line 794
    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 787
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 803
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 806
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 809
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->updateThemeMode()V

    .line 800
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 818
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 819
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 822
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/base/BaseActivity;->disableBeam(Z)V

    .line 825
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 815
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 864
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->requestInitialPermissions()V

    .line 867
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 870
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 873
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-direct {p0, v2}, Lcom/oneplus/base/BaseActivity;->enableBeam(Z)V

    .line 877
    :cond_0
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 878
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 881
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->updateThemeMode()V

    .line 861
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 890
    const-string/jumbo v0, "com.oneplus.base.BaseActivity.extra.ID"

    iget-wide v2, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 893
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 887
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 901
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 902
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 899
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 911
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 914
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 923
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 926
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 920
    return-void
.end method

.method protected raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;TTArgs;)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 935
    return-void
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->finish()V

    .line 943
    return-void
.end method

.method public removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 951
    return-void
.end method

.method public removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 961
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 959
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 1011
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1018
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1019
    invoke-direct {p0, p1}, Lcom/oneplus/base/BaseActivity;->onContentViewSetInternal(Landroid/view/View;)V

    .line 1016
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1024
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    invoke-direct {p0, p1}, Lcom/oneplus/base/BaseActivity;->onContentViewSetInternal(Landroid/view/View;)V

    .line 1022
    return-void
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 1037
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    return v0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final verifyAccess()V
    .locals 2

    .prologue
    .line 1048
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->m_MainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cross-thread access."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    return-void
.end method
