.class public Lcom/oneplus/settings/OPPreInstalledAppList;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPPreInstalledAppList.java"


# static fields
.field public static final sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

.field public static final sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

.field public static final sOneplusH2PreIinstalledAppsVersion:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsVersion:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x270f

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    const v3, 0x7f080053

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPPreInstalledAppList;->addPreferencesFromResource(I)V

    .line 24
    invoke-virtual {p0}, Lcom/oneplus/settings/OPPreInstalledAppList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 25
    .local v2, "root":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/oneplus/settings/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 26
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPPreInstalledAppList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    sget-object v3, Lcom/oneplus/settings/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oneplus/settings/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsVersion:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/settings/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method
