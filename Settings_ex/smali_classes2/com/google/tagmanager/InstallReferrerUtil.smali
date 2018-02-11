.class Lcom/google/tagmanager/InstallReferrerUtil;
.super Ljava/lang/Object;
.source "InstallReferrerUtil.java"


# static fields
.field static final INTENT_EXTRA_REFERRER:Ljava/lang/String; = "referrer"

.field static final PREF_KEY_REFERRER:Ljava/lang/String; = "referrer"

.field static final PREF_NAME_CLICK_REFERRERS:Ljava/lang/String; = "gtm_click_referrers"

.field static final PREF_NAME_INSTALL_REFERRER:Ljava/lang/String; = "gtm_install_referrer"

.field static clickReferrers:Ljava/util/Map;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static installReferrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "conv"

    .line 72
    invoke-static {p1, v0}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    sget-object v1, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gtm_click_referrers"

    .line 76
    invoke-static {p0, v1, v0, p1}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static cacheInstallReferrer(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-class v1, Lcom/google/tagmanager/InstallReferrerUtil;

    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    sput-object p0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 84
    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://hostname/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method static getClickReferrer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    if-eqz v0, :cond_0

    .line 111
    :goto_0
    invoke-static {v0, p2}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "gtm_click_referrers"

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 109
    :goto_1
    sget-object v1, Lcom/google/tagmanager/InstallReferrerUtil;->clickReferrers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    .line 105
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static getInstallReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/tagmanager/InstallReferrerUtil;->extractComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v1, Lcom/google/tagmanager/InstallReferrerUtil;

    .line 54
    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 63
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "gtm_install_referrer"

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 60
    sput-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "referrer"

    const-string/jumbo v3, ""

    .line 58
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/InstallReferrerUtil;->installReferrer:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static saveInstallReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "gtm_install_referrer"

    const-string/jumbo v1, "referrer"

    .line 41
    invoke-static {p0, v0, v1, p1}, Lcom/google/tagmanager/SharedPreferencesUtil;->saveAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0, p1}, Lcom/google/tagmanager/InstallReferrerUtil;->addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method
