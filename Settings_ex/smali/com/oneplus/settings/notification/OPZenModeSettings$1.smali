.class Lcom/oneplus/settings/notification/OPZenModeSettings$1;
.super Ljava/lang/Object;
.source "OPZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPZenModeSettings;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$1;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.oneplus.contacts.action.OP_FAVORITES_PEOPLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$1;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    invoke-virtual {v2}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
