.class public abstract Lcom/oneplus/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/BaseActivity$FileUriCallback;,
        Lcom/oneplus/base/BaseActivity$InternalHandler;,
        Lcom/oneplus/base/BaseActivity$State;,
        Lcom/oneplus/base/BaseActivity$ThemeMode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$base$BaseActivity$ThemeMode:[I = null

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
.method static synthetic $SWITCH_TABLE$com$oneplus$base$BaseActivity$ThemeMode()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/oneplus/base/BaseActivity;->$SWITCH_TABLE$com$oneplus$base$BaseActivity$ThemeMode:[I

    if-eqz v0, :cond_0

    :goto_0
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

    :goto_1
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/base/BaseActivity;->$SWITCH_TABLE$com$oneplus$base$BaseActivity$ThemeMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ConfigOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 68
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ContentView"

    const-class v2, Landroid/view/View;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    .line 72
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsBeamEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 76
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsBlackMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    .line 80
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsRunning"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    .line 84
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsWindowFocused"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    .line 88
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "State"

    const-class v2, Lcom/oneplus/base/BaseActivity$State;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    sget-object v4, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    .line 92
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ThemeMode"

    const-class v2, Lcom/oneplus/base/BaseActivity$ThemeMode;

    const-class v3, Lcom/oneplus/base/BaseActivity;

    sget-object v4, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    .line 159
    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lcom/oneplus/base/BaseActivity;->INITIAL_PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    .line 163
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oneplus/base/BaseActivity;->AUTO_INCREASED_ID:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 244
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    .line 182
    new-instance v0, Lcom/oneplus/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseActivity$1;-><init>(Lcom/oneplus/base/BaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 190
    new-instance v0, Lcom/oneplus/base/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseActivity$2;-><init>(Lcom/oneplus/base/BaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_MainThread:Ljava/lang/Thread;

    .line 248
    new-instance v0, Lcom/oneplus/base/BaseObjectAdapter;

    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/BaseObjectAdapter;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    .line 249
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 251
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onPermissionResult(Ljava/lang/String;I)V

    return-void
.end method

.method private disableBeam(Z)V
    .locals 3
    .param p1, "silently"    # Z

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-boolean v0, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 287
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    .line 288
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "disableBeam() - NFC is not supported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "disableBeam()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 296
    iput-boolean v2, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    .line 300
    :cond_2
    if-nez p1, :cond_0

    .line 301
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enableBeam(Z)V
    .locals 3
    .param p1, "silently"    # Z

    .prologue
    const/4 v2, 0x1

    .line 356
    iget-boolean v0, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    if-nez v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 360
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    .line 361
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "enableBeam() - NFC is not supported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamUriCallback:Lcom/oneplus/base/BaseActivity$FileUriCallback;

    if-nez v0, :cond_2

    .line 368
    new-instance v0, Lcom/oneplus/base/BaseActivity$FileUriCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/BaseActivity$FileUriCallback;-><init>(Lcom/oneplus/base/BaseActivity;Lcom/oneplus/base/BaseActivity$FileUriCallback;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamUriCallback:Lcom/oneplus/base/BaseActivity$FileUriCallback;

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "enableBeam()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BeamAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->m_BeamUriCallback:Lcom/oneplus/base/BaseActivity$FileUriCallback;

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 371
    iput-boolean v2, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    .line 375
    :cond_3
    if-nez p1, :cond_0

    .line 376
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getThemeResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "resType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v4, "getThemeResId() - Empty drawableName name"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    :goto_0
    return v2

    .line 482
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 484
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getThemeResId() - Empty resType : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, "requestResName":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/oneplus/base/BaseActivity;->$SWITCH_TABLE$com$oneplus$base$BaseActivity$ThemeMode()[I

    move-result-object v4

    sget-object v3, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v3}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 512
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 513
    .local v2, "resId":I
    if-nez v2, :cond_0

    .line 515
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getThemeResId() - invalid res : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", use light resource"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "requestResName":Ljava/lang/StringBuffer;
    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 517
    .restart local v1    # "requestResName":Ljava/lang/StringBuffer;
    const-string v3, "_light"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 519
    goto :goto_0

    .line 494
    .end local v2    # "resId":I
    :pswitch_0
    const-string v3, "_android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 497
    :pswitch_1
    const-string v3, "_dark"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 500
    :pswitch_2
    const-string v3, "_light"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 503
    :pswitch_3
    sget-object v3, Lcom/oneplus/base/BaseActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 504
    .local v0, "isBlackMode":Z
    if-eqz v0, :cond_3

    .line 505
    const-string v3, "_dark"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 507
    :cond_3
    const-string v3, "_light"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 491
    nop

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
    .line 530
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "ungrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->linkToPermissionManager()Z

    move-result v2

    if-nez v2, :cond_1

    .line 543
    :cond_0
    return-void

    .line 534
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 536
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 537
    .local v1, "permission":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    invoke-interface {v2, v1}, Lcom/oneplus/base/PermissionManager;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 539
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 540
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private linkToPermissionManager()Z
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-nez v0, :cond_0

    .line 592
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/base/PermissionManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/PermissionManager;

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    .line 593
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "requestInitialPermissions() - Cannot find permission manager component"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onAllPermissionsCompleted([Ljava/lang/String;[I)V
    .locals 8
    .param p1, "grantedPermissions"    # [Ljava/lang/String;
    .param p2, "grantedPermissionResults"    # [I

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->linkToPermissionManager()Z

    move-result v3

    if-nez v3, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    if-eqz p1, :cond_0

    .line 626
    if-nez p2, :cond_2

    .line 628
    array-length v2, p1

    .line 629
    .local v2, "size":I
    new-array p2, v2, [I

    .line 630
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_3

    .line 634
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v4, "onAllPermissionsCompleted() - All permissions are completed: "

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", result: "

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/base/BaseActivity;->m_IsInitPermRequestCompleted:Z

    .line 640
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v4, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 641
    iget-object v3, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v4, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 644
    move-object v1, p2

    .line 645
    .local v1, "results":[I
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/oneplus/base/BaseActivity$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/oneplus/base/BaseActivity$3;-><init>(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;[I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 631
    .end local v1    # "results":[I
    .restart local v0    # "i":I
    .restart local v2    # "size":I
    :cond_3
    const/4 v3, 0x0

    aput v3, p2, v0

    .line 630
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private onContentViewSetInternal(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 679
    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->m_ContentView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_ContentView:Landroid/view/View;

    .line 682
    .local v0, "oldView":Landroid/view/View;
    iput-object p1, p0, Lcom/oneplus/base/BaseActivity;->m_ContentView:Landroid/view/View;

    .line 683
    invoke-virtual {p0, p1}, Lcom/oneplus/base/BaseActivity;->onContentViewSet(Landroid/view/View;)V

    .line 684
    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/base/BaseActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 686
    .end local v0    # "oldView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onPermissionResult(Ljava/lang/String;I)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "permissionResult"    # I

    .prologue
    .line 798
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    if-nez v4, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 815
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 816
    .local v3, "size":I
    new-array v2, v3, [I

    .line 817
    .local v2, "results":[I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_4

    .line 819
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 820
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/oneplus/base/BaseActivity;->onAllPermissionsCompleted([Ljava/lang/String;[I)V

    goto :goto_0

    .line 805
    .end local v0    # "i":I
    .end local v2    # "results":[I
    .end local v3    # "size":I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 807
    .local v1, "requestPermission":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 809
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "onPermissionResult() - Permission has not completed yet"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    .end local v1    # "requestPermission":Ljava/lang/String;
    .restart local v0    # "i":I
    .restart local v2    # "results":[I
    .restart local v3    # "size":I
    :cond_4
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissionResults:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    .line 817
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private requestInitialPermissions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 934
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->linkToPermissionManager()Z

    move-result v4

    if-nez v4, :cond_0

    .line 963
    :goto_0
    return-void

    .line 938
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v3, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lcom/oneplus/base/BaseActivity;->getRequestPermissions(Ljava/util/List;)V

    .line 940
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    .line 941
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/base/BaseActivity;->getUngrantedPermissions(Ljava/util/List;Ljava/util/List;)V

    .line 942
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 943
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_1

    .line 951
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 953
    new-array v4, v8, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/base/BaseActivity;->onAllPermissionsCompleted([Ljava/lang/String;[I)V

    goto :goto_0

    .line 945
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 946
    .local v2, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 947
    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->notifyPermissionDenied(Ljava/lang/String;)V

    .line 943
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 949
    :cond_2
    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->notifyPermissionGranted(Ljava/lang/String;)V

    goto :goto_2

    .line 957
    .end local v2    # "permission":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v5, "requestInitialPermissions() - Request permissions: "

    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 960
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v5, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v4, v5, v6}, Lcom/oneplus/base/PermissionManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 961
    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v5, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v4, v5, v6}, Lcom/oneplus/base/PermissionManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 962
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    iget-object v4, p0, Lcom/oneplus/base/BaseActivity;->m_RequestPermissions:Ljava/util/List;

    new-array v6, v8, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v5, p0, v4, v8}, Lcom/oneplus/base/PermissionManager;->requestPermissions(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateThemeMode()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1024
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oem_black_mode"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1025
    .local v3, "themeMode":I
    iget-object v6, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateThemeMode() - themeMode : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    packed-switch v3, :pswitch_data_0

    .line 1038
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1043
    :goto_0
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    if-eq v6, v7, :cond_1

    .line 1044
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

    .line 1058
    .end local v3    # "themeMode":I
    :goto_1
    return-void

    .line 1029
    .restart local v3    # "themeMode":I
    :pswitch_0
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1054
    .end local v3    # "themeMode":I
    :catch_0
    move-exception v4

    .line 1056
    .local v4, "tr":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v6, "updateThemeMode() - failed to get theme mode."

    invoke-static {v5, v6, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1032
    .end local v4    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "themeMode":I
    :pswitch_1
    :try_start_1
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1035
    :pswitch_2
    sget-object v6, Lcom/oneplus/base/BaseActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/base/BaseActivity$ThemeMode;->ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1047
    :cond_1
    const-string v5, "android.util.OpFeatures"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1048
    .local v2, "opFeaturesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isBlackModeOn"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1049
    .local v1, "isBlackModeOnMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1050
    .local v0, "isBlackMode":Z
    sget-object v5, Lcom/oneplus/base/BaseActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1051
    iget-object v5, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateThemeMode() - isBlackMode : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1026
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
    .line 258
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 259
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
    .line 266
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 267
    return-void
.end method

.method protected final disableBeam()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/base/BaseActivity;->disableBeam(Z)V

    .line 276
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
    .line 312
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 313
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
    .line 323
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 324
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 334
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "dispatchKeyEvent() - activity is not running, do not dispatch key event."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final enableBeam()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/base/BaseActivity;->enableBeam(Z)V

    .line 349
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
    .line 387
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 388
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
    .line 398
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 399
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
    .line 407
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_ContentView:Landroid/view/View;

    .line 409
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseObjectAdapter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBeamUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 434
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
    .line 441
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/oneplus/base/BaseActivity;->INITIAL_PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 442
    return-void
.end method

.method public getThemeColor(Ljava/lang/String;)I
    .locals 4
    .param p1, "colorName"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/oneplus/base/BaseActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v0

    .line 451
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getThemeColor() - invalid color : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v1, 0x0

    .line 457
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public getThemeColorResId(Ljava/lang/String;)I
    .locals 1
    .param p1, "colorName"    # Ljava/lang/String;

    .prologue
    .line 464
    const-string v0, "color"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/base/BaseActivity;->getThemeResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemeDrawableResId(Ljava/lang/String;)I
    .locals 1
    .param p1, "drawableName"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v0, "drawable"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/base/BaseActivity;->getThemeResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 551
    return-void
.end method

.method public isDependencyThread()Z
    .locals 2

    .prologue
    .line 558
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
    .line 568
    iget-boolean v0, p0, Lcom/oneplus/base/BaseActivity;->m_IsInitPermRequestCompleted:Z

    return v0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->linkToPermissionManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    invoke-interface {v0, p1}, Lcom/oneplus/base/PermissionManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
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
    .line 612
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
    .line 661
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 664
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 665
    return-void
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 673
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 694
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/base/BaseActivity;->m_IsBeamCallbackEnabled:Z

    .line 698
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->disableBeam()V

    .line 701
    new-instance v0, Lcom/oneplus/base/BaseActivity$InternalHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseActivity$InternalHandler;-><init>(Lcom/oneplus/base/BaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

    .line 704
    if-eqz p1, :cond_0

    .line 705
    const-string v0, "com.oneplus.base.BaseActivity.extra.ID"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    .line 708
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 709
    sget-wide v0, Lcom/oneplus/base/BaseActivity;->AUTO_INCREASED_ID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/oneplus/base/BaseActivity;->AUTO_INCREASED_ID:J

    iput-wide v0, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    .line 712
    :cond_1
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 713
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 716
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->updateThemeMode()V

    .line 717
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 725
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v1, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionGrantedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 732
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionManager:Lcom/oneplus/base/PermissionManager;

    sget-object v1, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/base/BaseActivity;->m_PermissionDeniedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/base/PermissionManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_Handler:Lcom/oneplus/base/BaseActivity$InternalHandler;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$InternalHandler;->release()V

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    .line 743
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->disableBeam()V

    .line 747
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 748
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 768
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 771
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 774
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->updateThemeMode()V

    .line 775
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 783
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 784
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 787
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/base/BaseActivity;->disableBeam(Z)V

    .line 790
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 791
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 829
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 832
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 835
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_BEAM_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-direct {p0, v2}, Lcom/oneplus/base/BaseActivity;->enableBeam(Z)V

    .line 839
    :cond_0
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 840
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 843
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->updateThemeMode()V

    .line 844
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 852
    const-string v0, "com.oneplus.base.BaseActivity.extra.ID"

    iget-wide v2, p0, Lcom/oneplus/base/BaseActivity;->m_Id:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 855
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 856
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 863
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 864
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 867
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;->requestInitialPermissions()V

    .line 868
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 876
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 879
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 880
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 888
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 891
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 892
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
    .line 902
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 903
    return-void
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->finish()V

    .line 911
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
    .line 918
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 919
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
    .line 926
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 927
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
    .line 970
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
    .line 978
    invoke-virtual {p0}, Lcom/oneplus/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/base/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 979
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 983
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 984
    invoke-direct {p0, p1}, Lcom/oneplus/base/BaseActivity;->onContentViewSetInternal(Landroid/view/View;)V

    .line 985
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 989
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    invoke-direct {p0, p1}, Lcom/oneplus/base/BaseActivity;->onContentViewSetInternal(Landroid/view/View;)V

    .line 991
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
    .line 1002
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/base/BaseActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1003
    const/4 v0, 0x0

    .line 1004
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final verifyAccess()V
    .locals 2

    .prologue
    .line 1013
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseActivity;->m_MainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 1014
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cross-thread access."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_0
    return-void
.end method
