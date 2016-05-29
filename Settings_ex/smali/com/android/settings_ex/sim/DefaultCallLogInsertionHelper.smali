.class public Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;
.super Ljava/lang/Object;
.source "DefaultCallLogInsertionHelper.java"

# interfaces
.implements Lcom/android/settings_ex/sim/CallLogInsertionHelper;


# static fields
.field private static final LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCountryMonitor:Lcom/android/settings_ex/sim/CountryMonitor;

.field private mLocale:Ljava/util/Locale;

.field private mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field private mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-3"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/settings_ex/sim/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/sim/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/settings_ex/sim/CountryMonitor;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    .line 66
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-class v1, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComputedValues(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "countryIso":Ljava/lang/String;
    const-string v3, "countryiso"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "geocoded_location"

    const-string v4, "number"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "number":Ljava/lang/String;
    sget-object v3, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const-string v3, "presentation"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v3, "number"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    const-string v3, "normalized_number"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    const-string v3, "normalized_number"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v1    # "normalizedNumber":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/settings_ex/sim/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/settings_ex/sim/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 122
    .local v0, "structuredPhoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    iget-object v1, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
