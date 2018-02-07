.class public Lcom/android/settings_ex/datausage/DataUsageSummary;
.super Lcom/android/settings_ex/datausage/DataUsageBase;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/DataUsageSummary$1;,
        Lcom/android/settings_ex/datausage/DataUsageSummary$2;,
        Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field private static final KEY_LIMIT_SUMMARY:Ljava/lang/String; = "limit_summary"

.field private static final KEY_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict_background"

.field private static final KEY_STATUS_HEADER:Ljava/lang/String; = "status_header"

.field static final LOGD:Z = false

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "DataUsageSummary"

.field public static final TEST_RADIOS:Z = false

.field public static final TEST_RADIOS_PROP:Ljava/lang/String; = "test.radios"


# instance fields
.field private mDataUsageController:Lcom/android/settings_exlib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mLimitPreference:Landroid/support/v7/preference/Preference;

.field private mSummaryPreference:Lcom/android/settings_ex/SummaryPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageSummary$1;

    invoke-direct {v0}, Lcom/android/settings_ex/datausage/DataUsageSummary$1;-><init>()V

    .line 403
    sput-object v0, Lcom/android/settings_ex/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 416
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageSummary$2;

    invoke-direct {v0}, Lcom/android/settings_ex/datausage/DataUsageSummary$2;-><init>()V

    .line 415
    sput-object v0, Lcom/android/settings_ex/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;-><init>()V

    return-void
.end method

.method private addEthernetSection()V
    .locals 4

    .prologue
    .line 194
    const v1, 0x7f08001f

    invoke-direct {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 193
    check-cast v0, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;

    .line 195
    .local v0, "category":Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V

    .line 192
    return-void
.end method

.method private addMobileSection(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 181
    const v1, 0x7f08001e

    invoke-direct {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 180
    check-cast v0, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;

    .line 182
    .local v0, "category":Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;
    invoke-direct {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V

    .line 179
    return-void
.end method

.method private addWifiSection()V
    .locals 4

    .prologue
    .line 188
    const v1, 0x7f080022

    invoke-direct {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 187
    check-cast v0, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;

    .line 189
    .local v0, "category":Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V

    .line 186
    return-void
.end method

.method private static formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "usageLevel"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 242
    new-instance v0, Landroid/text/SpannableString;

    .line 243
    const v4, 0x10400a2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    const-string/jumbo v5, "%1$s"

    const-string/jumbo v6, "^1"

    .line 243
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 244
    const-string/jumbo v5, "%2$s"

    const-string/jumbo v6, "^2"

    .line 243
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 245
    .local v0, "amountTemplate":Landroid/text/SpannableString;
    const-string/jumbo v4, "^1"

    invoke-static {v0, v4}, Lcom/android/settings_ex/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2, p3, v7}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v3

    .line 248
    .local v3, "usedResult":Landroid/text/format/Formatter$BytesResult;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 249
    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 248
    invoke-static {v0, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 251
    .local v1, "formattedUsage":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v4, "%1$s"

    const-string/jumbo v5, "^1"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 252
    .local v2, "fullTemplate":Landroid/text/SpannableString;
    const-string/jumbo v4, "^1"

    invoke-static {v2, v4}, Lcom/android/settings_ex/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    .line 253
    new-array v4, v7, [Ljava/lang/CharSequence;

    .line 254
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    .line 253
    invoke-static {v2, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public static getDefaultSubscriptionId(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 343
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 344
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_0

    .line 345
    return v4

    .line 347
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 348
    .local v2, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_2

    .line 349
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 350
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 351
    return v4

    .line 353
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 355
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v2    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    return v3
.end method

.method public static getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultSubId"    # I

    .prologue
    .line 359
    invoke-static {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 360
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 362
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 364
    .local v0, "mobileAll":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-static {v0, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    .line 365
    .end local v0    # "mobileAll":Landroid/net/NetworkTemplate;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    .line 368
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 2
    .param p1, "subscriptionId"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 215
    .local v0, "mobileAll":Landroid/net/NetworkTemplate;
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method public static hasMobileData(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 327
    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 339
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private inflatePreferences(I)Landroid/support/v7/preference/Preference;
    .locals 6
    .param p1, "resId"    # I

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 199
    invoke-virtual {v3, v4, p1, v5}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 201
    .local v1, "rootPreferences":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 202
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 205
    .local v2, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 206
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 208
    return-object v0
.end method

.method private updateState()V
    .locals 14

    .prologue
    .line 258
    iget-object v8, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settings_exlib/net/DataUsageController;

    .line 259
    iget-object v9, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 258
    invoke-virtual {v8, v9}, Lcom/android/settings_exlib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    .line 260
    .local v2, "info":Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 261
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings_ex/SummaryPreference;

    if-eqz v8, :cond_2

    .line 262
    iget-object v8, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings_ex/SummaryPreference;

    .line 263
    iget v9, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mDataUsageTemplate:I

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v0, v9, v10, v11}, Lcom/android/settings_ex/datausage/DataUsageSummary;->formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;

    move-result-object v9

    .line 262
    invoke-virtual {v8, v9}, Lcom/android/settings_ex/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-wide v4, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 265
    .local v4, "limit":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_0

    .line 266
    iget-wide v4, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 268
    :cond_0
    iget-wide v8, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_1

    .line 269
    iget-wide v4, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 271
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings_ex/SummaryPreference;

    iget-object v9, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/SummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v8, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings_ex/SummaryPreference;

    const-wide/16 v10, 0x0

    invoke-static {v0, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 273
    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 272
    invoke-virtual {v8, v9, v10}, Lcom/android/settings_ex/SummaryPreference;->setLabels(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v8, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings_ex/SummaryPreference;

    iget-wide v10, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    long-to-float v9, v10

    long-to-float v10, v4

    div-float/2addr v9, v10

    const/4 v10, 0x0

    .line 275
    iget-wide v12, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long v12, v4, v12

    long-to-float v11, v12

    long-to-float v12, v4

    div-float/2addr v11, v12

    .line 274
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/settings_ex/SummaryPreference;->setRatios(FFF)V

    .line 277
    .end local v4    # "limit":J
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v8, :cond_3

    .line 278
    iget-wide v8, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "warning":Ljava/lang/String;
    iget-wide v8, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "limit":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    iget-wide v10, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-gtz v8, :cond_4

    const v8, 0x7f0e0fe3

    :goto_0
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 281
    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    .line 280
    invoke-virtual {p0, v8, v10}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    .end local v3    # "limit":Ljava/lang/String;
    .end local v7    # "warning":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 285
    .local v6, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 286
    invoke-virtual {v6, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    .end local v1    # "i":I
    .end local v6    # "screen":Landroid/support/v7/preference/PreferenceScreen;
    .restart local v3    # "limit":Ljava/lang/String;
    .restart local v7    # "warning":Ljava/lang/String;
    :cond_4
    const v8, 0x7f0e0fe4

    goto :goto_0

    .line 257
    .end local v3    # "limit":Ljava/lang/String;
    .end local v7    # "warning":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v6    # "screen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_5
    return-void
.end method

.method private static verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "s"    # Landroid/text/SpannableString;
    .param p1, "exception"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x0

    const v5, 0x3f23d70b    # 0.64000005f

    .line 225
    const v1, 0x3f23d70b    # 0.64000005f

    .line 226
    .local v1, "SIZE":F
    const/16 v0, 0x12

    .line 227
    .local v0, "FLAGS":I
    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 228
    .local v3, "exceptionStart":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 229
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    if-lez v3, :cond_2

    .line 232
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 234
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v3, v4

    .line 235
    .local v2, "exceptionEnd":I
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 236
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 292
    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 303
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 304
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v1, 0x9

    invoke-virtual {v6, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 308
    .local v10, "hasEthernet":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 309
    .local v0, "statsSession":Landroid/net/INetworkStatsSession;
    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    .line 310
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v8

    .line 313
    .local v8, "ethernetBytes":J
    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 315
    .end local v8    # "ethernetBytes":J
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 317
    .end local v0    # "statsSession":Landroid/net/INetworkStatsSession;
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 318
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v0    # "statsSession":Landroid/net/INetworkStatsSession;
    .restart local v8    # "ethernetBytes":J
    :cond_1
    move v1, v11

    .line 322
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    .line 84
    .local v1, "hasMobileData":Z
    new-instance v5, Lcom/android/settings_exlib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings_exlib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settings_exlib/net/DataUsageController;

    .line 85
    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 88
    .local v0, "defaultSubId":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 91
    .end local v1    # "hasMobileData":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 92
    if-eqz v1, :cond_3

    .line 93
    const-string/jumbo v5, "limit_summary"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    .line 97
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    :goto_1
    if-eqz v1, :cond_5

    .line 102
    iget-object v5, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v5, v5, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 103
    .local v4, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 104
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->addMobileSection(I)V

    .line 106
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 107
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->addMobileSection(I)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 95
    .end local v3    # "i":I
    .end local v4    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_3
    const-string/jumbo v5, "limit_summary"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    const-string/jumbo v5, "restrict_background"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    .line 111
    .local v2, "hasWifiRadio":Z
    if-eqz v2, :cond_6

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->addWifiSection()V

    .line 114
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->addEthernetSection()V

    .line 117
    :cond_7
    if-eqz v1, :cond_8

    const v5, 0x7f0e0fe0

    :goto_3
    iput v5, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mDataUsageTemplate:I

    .line 121
    const-string/jumbo v5, "status_header"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/SummaryPreference;

    iput-object v5, p0, Lcom/android/settings_ex/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings_ex/SummaryPreference;

    .line 122
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 80
    return-void

    .line 118
    :cond_8
    if-eqz v2, :cond_9

    const v5, 0x7f0e0fe1

    goto :goto_3

    .line 119
    :cond_9
    const v5, 0x7f0e0fe2

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const v0, 0x7f140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 176
    const/4 v2, 0x0

    return v2

    .line 148
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isNetworkSettingsApkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string/jumbo v2, "DataUsageSummary"

    const-string/jumbo v3, "qti MobileNetworkSettings Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.qualcomm.qti.networksetting"

    .line 153
    const-string/jumbo v4, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    .line 152
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 160
    :goto_0
    return v5

    .line 156
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    .line 157
    const-string/jumbo v4, "com.android.phone.MobileNetworkSettings"

    .line 156
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 166
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.qualcomm.qti.appnetaccess"

    .line 167
    const-string/jumbo v3, "com.qualcomm.qti.appnetaccess.NetworkControl"

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v2, "android.intent.networkcontrol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return v5

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "DataUsageSummary"

    const-string/jumbo v3, "activity NetworkControl not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x7f110401
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f110402

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 137
    .local v1, "networkaccess":Landroid/view/MenuItem;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->onResume()V

    .line 221
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->updateState()V

    .line 219
    return-void
.end method
