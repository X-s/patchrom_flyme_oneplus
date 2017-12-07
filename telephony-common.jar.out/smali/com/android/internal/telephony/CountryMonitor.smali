.class public Lcom/android/internal/telephony/CountryMonitor;
.super Ljava/lang/Object;
.source "CountryMonitor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/CountryMonitor;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 50
    iget-object v2, p0, Lcom/android/internal/telephony/CountryMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "country_detector"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 51
    .local v1, "countryDetector":Landroid/location/CountryDetector;
    const/4 v0, 0x0

    .line 52
    .local v0, "country":Landroid/location/Country;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 54
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 59
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    .line 60
    new-instance v2, Lcom/android/internal/telephony/CountryMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CountryMonitor$1;-><init>(Lcom/android/internal/telephony/CountryMonitor;)V

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 66
    .end local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
