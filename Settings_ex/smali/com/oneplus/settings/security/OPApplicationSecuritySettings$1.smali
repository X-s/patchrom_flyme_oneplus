.class Lcom/oneplus/settings/security/OPApplicationSecuritySettings$1;
.super Ljava/lang/Object;
.source "OPApplicationSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/security/OPApplicationSecuritySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/security/OPApplicationSecuritySettings;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$1;->this$0:Lcom/oneplus/settings/security/OPApplicationSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 282
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.security.action.cleanbackground"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$1;->this$0:Lcom/oneplus/settings/security/OPApplicationSecuritySettings;

    invoke-virtual {v2}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OPApplicationSecuritySettings"

    const-string v3, "com.oneplus.security.cleanbackground.view.CleanBgActivity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
