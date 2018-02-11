.class public Lcom/oneplus/settings/OPDefaultAppSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPDefaultAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPDefaultAppSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPApplicationsSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/oneplus/settings/OPDefaultAppSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPDefaultAppSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPDefaultAppSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initDefaultAppSettings()V

    .line 56
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPDefaultAppSettings;->addPreferencesFromResource(I)V

    .line 48
    return-void
.end method
