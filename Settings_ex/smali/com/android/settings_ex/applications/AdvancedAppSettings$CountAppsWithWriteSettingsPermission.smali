.class Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;
.super Landroid/os/AsyncTask;
.source "AdvancedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AdvancedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountAppsWithWriteSettingsPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field numOfPackagesRequestedPermission:I

.field final synthetic this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/applications/AdvancedAppSettings;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->numOfPackagesRequestedPermission:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    .prologue
    .line 193
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 194
    .local v0, "writeSettingsBridge":Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;
    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->getNumberOfPackagesWithPermission()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->numOfPackagesRequestedPermission:I

    .line 196
    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->getNumberOfPackagesCanWriteSettings()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, [Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->doInBackground([Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    # getter for: Lcom/android/settings_ex/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->access$300(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0d6b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->numOfPackagesRequestedPermission:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
