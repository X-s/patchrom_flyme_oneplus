.class public Lcom/oppo/tribune/StatisticsHeader;
.super Ljava/lang/Object;
.source "StatisticsHeader.java"


# static fields
.field private static itemInstante:Lcom/oppo/tribune/StatisticsHeader;


# instance fields
.field private appCode:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private mobileName:Ljava/lang/String;

.field private netWork:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private telNum:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/StatisticsHeader;->extra:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oppo/tribune/StatisticsHeader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/oppo/tribune/StatisticsHeader;->itemInstante:Lcom/oppo/tribune/StatisticsHeader;

    if-nez v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/oppo/tribune/StatisticsHeader;->initStatInfo(Landroid/content/Context;)Lcom/oppo/tribune/StatisticsHeader;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/StatisticsHeader;->itemInstante:Lcom/oppo/tribune/StatisticsHeader;

    .line 36
    :cond_0
    sget-object v0, Lcom/oppo/tribune/StatisticsHeader;->itemInstante:Lcom/oppo/tribune/StatisticsHeader;

    return-object v0
.end method

.method private static initStatInfo(Landroid/content/Context;)Lcom/oppo/tribune/StatisticsHeader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    new-instance v0, Lcom/oppo/tribune/StatisticsHeader;

    invoke-direct {v0}, Lcom/oppo/tribune/StatisticsHeader;-><init>()V

    .line 59
    .local v0, "item":Lcom/oppo/tribune/StatisticsHeader;
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getCurAppCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/StatisticsHeader;->setAppCode(Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/oppo/tribune/util/PhoneInfo;->getPhoneImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/StatisticsHeader;->setImei(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/oppo/tribune/util/PhoneInfo;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/StatisticsHeader;->setMobileName(Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/oppo/tribune/util/PhoneInfo;->getApkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/StatisticsHeader;->setAppVersion(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/oppo/tribune/util/PhoneInfo;->getPhoneAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/StatisticsHeader;->setOsVersion(Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/oppo/tribune/util/PhoneInfo;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/StatisticsHeader;->setTelNum(Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/oppo/tribune/tool/NetworkState;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/StatisticsHeader;->setNetWork(Ljava/lang/String;)V

    .line 66
    return-object v0
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oppo/tribune/StatisticsHeader;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oppo/tribune/StatisticsHeader;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oppo/tribune/StatisticsHeader;->mobileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetWork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/tribune/StatisticsHeader;->netWork:Ljava/lang/String;

    return-object v0
.end method

.method public getStatInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/oppo/tribune/StatisticsHeader;->getInstance(Landroid/content/Context;)Lcom/oppo/tribune/StatisticsHeader;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/StatisticsHeader;->setExtra(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public resetNetWork(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/oppo/tribune/StatisticsHeader;->getInstance(Landroid/content/Context;)Lcom/oppo/tribune/StatisticsHeader;

    move-result-object v0

    invoke-static {p1}, Lcom/oppo/tribune/tool/NetworkState;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/StatisticsHeader;->setNetWork(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oppo/tribune/StatisticsHeader;->appCode:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/tribune/StatisticsHeader;->appVersion:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 1
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .end local p1    # "extra":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/StatisticsHeader;->extra:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oppo/tribune/StatisticsHeader;->imei:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setMobileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileName"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oppo/tribune/StatisticsHeader;->mobileName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setNetWork(Ljava/lang/String;)V
    .locals 0
    .param p1, "netWork"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oppo/tribune/StatisticsHeader;->netWork:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oppo/tribune/StatisticsHeader;->osVersion:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTelNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "telNum"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oppo/tribune/StatisticsHeader;->telNum:Ljava/lang/String;

    .line 75
    return-void
.end method
