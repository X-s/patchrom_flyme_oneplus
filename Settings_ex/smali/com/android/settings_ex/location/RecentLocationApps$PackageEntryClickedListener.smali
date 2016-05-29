.class Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/settings_ex/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/location/RecentLocationApps;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/settings_ex/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    .line 82
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/settings_ex/location/RecentLocationApps;

    iget-object v1, p0, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/location/RecentLocationApps;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/location/RecentLocationApps;->access$000(Lcom/android/settings_ex/location/RecentLocationApps;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method
