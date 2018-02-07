.class public Lcom/oneplus/settings/product/OPPreInstalledAppList;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPPreInstalledAppList.java"


# static fields
.field public static final sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

.field public static final sOneplusH2PreIinstalledAppsFunction:[Ljava/lang/String;

.field public static final sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;


# instance fields
.field private final ONEPLUS_PRE_INSTALL_APP_CATEGORY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsFunction:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 24
    const-string/jumbo v0, "oneplus_pre_install_app_category"

    iput-object v0, p0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->ONEPLUS_PRE_INSTALL_APP_CATEGORY:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x270f

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const v4, 0x7f080051

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/product/OPPreInstalledAppList;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lcom/oneplus/settings/product/OPPreInstalledAppList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 30
    .local v2, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v4, "oneplus_pre_install_app_category"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    .line 31
    .local v3, "screenCategory":Landroid/support/v7/preference/PreferenceCategory;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 32
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/product/OPPreInstalledAppList;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    sget-object v4, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsFunction:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    return-void
.end method
