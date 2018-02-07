.class public Lcom/android/settings_ex/datausage/DataSaverBackend;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/DataSaverBackend$1;,
        Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataSaverBackend"


# instance fields
.field private mBlacklist:Landroid/util/SparseBooleanArray;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWhitelist:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/datausage/DataSaverBackend;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/datausage/DataSaverBackend;IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataSaverBackend;->handleBlacklistChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/datausage/DataSaverBackend;Z)V
    .locals 0
    .param p1, "isDataSaving"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/datausage/DataSaverBackend;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/datausage/DataSaverBackend;IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataSaverBackend;->handleWhitelistChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/datausage/DataSaverBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->loadBlacklist()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/datausage/DataSaverBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->loadWhitelist()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Lcom/android/settings_ex/datausage/DataSaverBackend$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend$1;-><init>(Lcom/android/settings_ex/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 53
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 49
    return-void
.end method

.method private handleBlacklistChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;->onBlacklistStatusChanged(IZ)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1}, Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method private handleWhitelistChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;->onWhitelistStatusChanged(IZ)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method private loadBlacklist()V
    .locals 7

    .prologue
    .line 160
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 163
    .local v1, "uid":I
    iget-object v5, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 159
    :cond_0
    return-void
.end method

.method private loadWhitelist()V
    .locals 7

    .prologue
    .line 121
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v2}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundWhitelistedUids()[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 124
    .local v1, "uid":I
    iget-object v5, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    .line 56
    return-void
.end method

.method public getWhitelistedCount()I
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->loadWhitelist()V

    .line 112
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_2
    return v0
.end method

.method public isBlacklisted(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->loadBlacklist()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isDataSaverEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isWhitelisted(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->loadWhitelist()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public refreshBlacklist()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->loadBlacklist()V

    .line 130
    return-void
.end method

.method public refreshWhitelist()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->loadWhitelist()V

    .line 80
    return-void
.end method

.method public remListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x18a

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 75
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsBlacklisted(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "blacklisted"    # Z

    .prologue
    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 142
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 141
    :goto_0
    invoke-virtual {v2, p1, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    if-eqz p3, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v2, 0x18c

    invoke-static {v1, v2, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 134
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setIsWhitelisted(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "whitelisted"    # Z

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 87
    if-eqz p3, :cond_1

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->addRestrictBackgroundWhitelistedUid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    if-eqz p3, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v2, 0x18b

    invoke-static {v1, v2, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 84
    :cond_0
    return-void

    .line 90
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->removeRestrictBackgroundWhitelistedUid(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DataSaverBackend"

    const-string/jumbo v2, "Can\'t reach policy manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
