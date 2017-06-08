.class Lcom/android/settings_ex/applications/ManageDefaultApps$3;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageDefaultApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageDefaultApps;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$3;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 139
    if-nez p2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p2

    .line 142
    check-cast v1, Ljava/lang/CharSequence;

    .line 143
    .local v1, "packageName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$3;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings_ex/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageDefaultApps;->access$400(Lcom/android/settings_ex/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$3;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings_ex/applications/ManageDefaultApps;->myUserId:I
    invoke-static {v5}, Lcom/android/settings_ex/applications/ManageDefaultApps;->access$300(Lcom/android/settings_ex/applications/ManageDefaultApps;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v2

    .line 148
    .local v2, "result":Z
    if-eqz v2, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$3;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageDefaultApps;->access$500(Lcom/android/settings_ex/applications/ManageDefaultApps;)Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$3;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageDefaultApps;->access$500(Lcom/android/settings_ex/applications/ManageDefaultApps;)Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 151
    .local v0, "appName":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$3;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageDefaultApps;->access$500(Lcom/android/settings_ex/applications/ManageDefaultApps;)Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
