.class Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/location/LocationSettings;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p2, p0, Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 632
    iput-object p3, p0, Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    .line 630
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 638
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 639
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "package"

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 641
    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 642
    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    const v3, 0x7f0e09cd

    const/4 v4, 0x0

    .line 640
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 643
    const/4 v0, 0x1

    return v0
.end method
