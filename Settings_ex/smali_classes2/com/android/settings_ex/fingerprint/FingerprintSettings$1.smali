.class final Lcom/android/settings_ex/fingerprint/FingerprintSettings$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "val$userId"    # I
    .param p2, "val$clazz"    # Ljava/lang/String;

    .prologue
    .line 837
    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$1;->val$userId:I

    iput-object p2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$1;->val$clazz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 841
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 843
    .local v2, "userManager":Landroid/os/UserManager;
    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$1;->val$userId:I

    .line 842
    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 844
    const/4 v3, 0x0

    return v3

    .line 846
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 847
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings_ex"

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$1;->val$clazz:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$1;->val$userId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 850
    const/4 v3, 0x1

    return v3
.end method
