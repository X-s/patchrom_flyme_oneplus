.class public Landroid/telecom/TelecomManager;
.super Ljava/lang/Object;
.source "TelecomManager.java"


# static fields
.field public static final ACTION_CHANGE_DEFAULT_DIALER:Ljava/lang/String; = "android.telecom.action.CHANGE_DEFAULT_DIALER"

.field public static final ACTION_CHANGE_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

.field public static final ACTION_CONFIGURE_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

.field public static final ACTION_CURRENT_TTY_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

.field public static final ACTION_DEFAULT_DIALER_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_DIALER_CHANGED"

.field public static final ACTION_INCOMING_CALL:Ljava/lang/String; = "android.telecom.action.INCOMING_CALL"

.field public static final ACTION_NEW_UNKNOWN_CALL:Ljava/lang/String; = "android.telecom.action.NEW_UNKNOWN_CALL"

.field public static final ACTION_PHONE_ACCOUNT_REGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

.field public static final ACTION_SHOW_CALL_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

.field public static final ACTION_SHOW_CALL_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_SETTINGS"

.field public static final ACTION_SHOW_RESPOND_VIA_SMS_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

.field public static final ACTION_TTY_PREFERRED_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

.field public static final DTMF_CHARACTER_PAUSE:C = ','

.field public static final DTMF_CHARACTER_WAIT:C = ';'

.field public static final EXTRA_CALL_BACK_NUMBER:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_NUMBER"

.field public static final EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_CAUSE"

.field public static final EXTRA_CALL_DISCONNECT_MESSAGE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_MESSAGE"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHANGE_DEFAULT_DIALER_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

.field public static final EXTRA_CONNECTION_SERVICE:Ljava/lang/String; = "android.telecom.extra.CONNECTION_SERVICE"

.field public static final EXTRA_CURRENT_TTY_MODE:Ljava/lang/String; = "android.telecom.intent.extra.CURRENT_TTY_MODE"

.field public static final EXTRA_INCOMING_CALL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_ADDRESS"

.field public static final EXTRA_INCOMING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_EXTRAS"

.field public static final EXTRA_OUTGOING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.OUTGOING_CALL_EXTRAS"

.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_START_CALL_WITH_SPEAKERPHONE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

.field public static final EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static final EXTRA_TTY_PREFERRED_MODE:Ljava/lang/String; = "android.telecom.intent.extra.TTY_PREFERRED"

.field public static final EXTRA_UNKNOWN_CALL_HANDLE:Ljava/lang/String; = "android.telecom.extra.UNKNOWN_CALL_HANDLE"

.field public static final GATEWAY_ORIGINAL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS"

.field public static final GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

.field public static final METADATA_IN_CALL_SERVICE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_UI"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TelecomManager"

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 414
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 415
    iput-object v0, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iput-object p1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 1321
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method private isServiceConnected()Z
    .locals 3

    .prologue
    .line 1325
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1326
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_0

    .line 1327
    const-string v1, "TelecomManager"

    const-string v2, "Telecom Service not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_0
    return v0

    .line 1325
    .end local v0    # "isConnected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptRingingCall()V
    .locals 3

    .prologue
    .line 986
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1108
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :cond_1
    :goto_0
    return-void

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new incoming call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1131
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :cond_1
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new unknown call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 4

    .prologue
    .line 1214
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1215
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1217
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#cancelMissedCallsNotification"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAccounts()V
    .locals 3

    .prologue
    .line 743
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#clearAccounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAccountsForPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 757
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#clearAccountsForPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearPhoneAccounts()V
    .locals 0

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->clearAccounts()V

    .line 734
    return-void
.end method

.method public enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 4
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 1310
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1311
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1313
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error enablePhoneAbbount"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 967
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 973
    :goto_0
    return v1

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveSubscription()I
    .locals 3

    .prologue
    .line 1070
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getActiveSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1076
    :goto_0
    return v1

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the active subsription."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1076
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 4
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1196
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1197
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1199
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1204
    :goto_0
    return-object v2

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAdnUriForPhoneAccount"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public getAllPhoneAccountHandles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountHandles()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 685
    :goto_0
    return-object v1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccountHandles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public getAllPhoneAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccounts()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 667
    :goto_0
    return-object v1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public getAllPhoneAccountsCount()I
    .locals 3

    .prologue
    .line 643
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :goto_0
    return v1

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccountsCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallCapablePhoneAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallCapablePhoneAccounts(Z)Ljava/util/List;
    .locals 4
    .param p1, "includeDisabledAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 595
    :goto_0
    return-object v1

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ITelecomService#getCallCapablePhoneAccounts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    .line 932
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 938
    :goto_0
    return v1

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling getCallState()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 938
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionManager()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTtyMode()I
    .locals 3

    .prologue
    .line 1053
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCurrentTtyMode(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1059
    :goto_0
    return v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the current TTY mode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultDialerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 791
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 797
    :goto_0
    return-object v1

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the default dialer package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 3
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    .line 442
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 449
    :goto_0
    return-object v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getDefaultOutgoingPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultPhoneApp()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 774
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultPhoneApp()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 780
    :goto_0
    return-object v1

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the default phone app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 888
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 895
    :goto_0
    return-object v1

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling ITelecomService#getLine1Number."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 3
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 625
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 631
    :goto_0
    return-object v1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneAccountsForPackage()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 613
    :goto_0
    return-object v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getPhoneAccountsForPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "uriScheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 562
    :goto_0
    return-object v1

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getPhoneAccountsSupportingScheme"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .prologue
    .line 497
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 503
    :goto_0
    return-object v1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getSimCallManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 517
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 523
    :goto_0
    return-object v1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getSimCallManagerForUser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemDialerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 833
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 839
    :goto_0
    return-object v1

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the system dialer package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .prologue
    .line 465
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 471
    :goto_0
    return-object v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getUserSelectedOutgoingPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 870
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 877
    :goto_0
    return-object v1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling ITelecomService#hasVoiceMailNumber."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1153
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1154
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1156
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1161
    :goto_0
    return v2

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1177
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1178
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1180
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1186
    :goto_0
    return v2

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    .line 907
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 913
    :goto_0
    return v1

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling isInCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 3

    .prologue
    .line 949
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 955
    :goto_0
    return v1

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get ringing state of phone app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTtySupported()Z
    .locals 3

    .prologue
    .line 1032
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isTtySupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1038
    :goto_0
    return v1

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get TTY supported state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 851
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/ITelecomService;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 858
    :goto_0
    return v1

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling ITelecomService#isVoiceMailNumber."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public opSilenceRinger()V
    .locals 3

    .prologue
    .line 1015
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->opSilenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1276
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    .line 1277
    .local v3, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v3, :cond_1

    .line 1278
    if-nez p1, :cond_0

    .line 1279
    const-string v4, "TelecomManager"

    const-string v5, "Cannot place call to empty address."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedCTAPermissionControl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1284
    new-instance v1, Landroid/util/Permission;

    iget-object v4, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 1285
    .local v1, "requester":Landroid/util/Permission;
    const-string v4, "android.permission.CALL_PHONE"

    invoke-virtual {v1, v4}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v2

    .line 1286
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 1299
    .end local v1    # "requester":Landroid/util/Permission;
    .end local v2    # "result":Z
    .end local p2    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 1293
    .restart local p2    # "extras":Landroid/os/Bundle;
    :cond_2
    if-nez p2, :cond_3

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_3
    iget-object v4, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, p2, v4}, Lcom/android/internal/telecom/ITelecomService;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "TelecomManager"

    const-string v5, "Error calling ITelecomService#placeCall"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 3
    .param p1, "account"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 704
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#registerPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDefaultDialer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 816
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setDefaultDialer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 822
    :goto_0
    return v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to set the default dialer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 480
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#setUserSelectedOutgoingPhoneAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showInCallScreen(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1235
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1236
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1238
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#showCallScreen"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 999
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchToOtherActiveSub(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1085
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->switchToOtherActiveSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to switchToOtherActiveSub."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 719
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#unregisterPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
