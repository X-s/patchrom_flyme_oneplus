.class Lcom/android/settings_ex/applications/AdvancedAppSettings$1;
.super Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.source "AdvancedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AdvancedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AdvancedAppSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppWithPermissionsCountsResult(II)V
    .locals 5
    .param p1, "standardGrantedPermissionAppCount"    # I
    .param p2, "standardUsedPermissionAppCount"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->-set0(Lcom/android/settings_ex/applications/AdvancedAppSettings;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 179
    if-eqz p2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-static {v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->-get0(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 181
    const v3, 0x7f0e0f07

    .line 180
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-static {v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->-get0(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
