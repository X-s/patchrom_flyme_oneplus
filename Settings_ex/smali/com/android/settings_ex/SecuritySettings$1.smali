.class Lcom/android/settings_ex/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings$1;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 491
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.security.action.cleanbackground"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings$1;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SecuritySettings"

    const-string v3, "com.oneplus.security.cleanbackground.view.CleanBgActivity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
