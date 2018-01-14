.class public Lcom/oneplus/config/ConfigObserver;
.super Landroid/database/ContentObserver;
.source "ConfigObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/config/ConfigObserver$ConfigUpdater;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private CONFIG_URI:Ljava/lang/String;

.field private final OPCONFIG_URI:Ljava/lang/String;

.field private mConfigName:Ljava/lang/String;

.field private mConfigUpdater:Lcom/oneplus/config/ConfigObserver$ConfigUpdater;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "Config:Observer:"

    sput-object v0, Lcom/oneplus/config/ConfigObserver;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "configUpdater"    # Lcom/oneplus/config/ConfigObserver$ConfigUpdater;
    .param p4, "configName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 15
    const-string/jumbo v0, "content://com.oneplus.config.ConfigProvider/"

    iput-object v0, p0, Lcom/oneplus/config/ConfigObserver;->OPCONFIG_URI:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/oneplus/config/ConfigObserver;->mContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/oneplus/config/ConfigObserver;->mConfigUpdater:Lcom/oneplus/config/ConfigObserver$ConfigUpdater;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/config/ConfigObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/config/ConfigObserver;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://com.oneplus.config.ConfigProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/config/ConfigObserver;->CONFIG_URI:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/oneplus/config/ConfigObserver;->mConfigName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 41
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/oneplus/config/ConfigObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/config/ConfigObserver;->mConfigName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    .local v1, "json":Lorg/json/JSONArray;
    if-nez v1, :cond_0

    .line 44
    sget-object v2, Lcom/oneplus/config/ConfigObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Get null json from db."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/oneplus/config/ConfigObserver;->mConfigUpdater:Lcom/oneplus/config/ConfigObserver$ConfigUpdater;

    invoke-interface {v2, v1}, Lcom/oneplus/config/ConfigObserver$ConfigUpdater;->updateConfig(Lorg/json/JSONArray;)V

    .line 39
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/oneplus/config/ConfigObserver;->CONFIG_URI:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 31
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/oneplus/config/ConfigObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/config/ConfigObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    return-void
.end method
