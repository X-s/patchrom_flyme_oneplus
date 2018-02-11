.class public Lcom/android/settings_ex/datausage/DataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "DataUsagePreference.java"

# interfaces
.implements Lcom/android/settings_ex/datausage/TemplatePreference;


# instance fields
.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    const-string/jumbo v0, "sub_id"

    iget v1, p0, Lcom/android/settings_ex/datausage/DataUsagePreference;->mSubId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsagePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    move v6, v4

    .line 55
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 42
    iput p2, p0, Lcom/android/settings_ex/datausage/DataUsagePreference;->mSubId:I

    .line 43
    new-instance v0, Lcom/android/settings_exlib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings_exlib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "controller":Lcom/android/settings_exlib/net/DataUsageController;
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    .line 45
    .local v1, "usageInfo":Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 45
    const v4, 0x7f0e101d

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/DataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsagePreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/DataUsagePreference;->setIntent(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
