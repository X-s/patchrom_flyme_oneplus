.class public Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OPHomeAppRadioPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;
    }
.end annotation


# instance fields
.field public activityName:Landroid/content/ComponentName;

.field public fragment:Lcom/oneplus/settings/OPHomeSettings;

.field public index:I

.field public isChecked:Z

.field public isSystem:Z

.field private mListener:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field public uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/oneplus/settings/OPHomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/content/ComponentName;
    .param p3, "i"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "parent"    # Lcom/oneplus/settings/OPHomeSettings;
    .param p7, "info"    # Landroid/content/pm/ActivityInfo;
    .param p8, "enabled"    # Z
    .param p9, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->mListener:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;

    .line 63
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setWidgetLayoutResource(I)V

    .line 65
    invoke-virtual {p0, p5}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0, p8}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setEnabled(Z)V

    .line 67
    invoke-virtual {p0, p9}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    iput-object p2, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->activityName:Landroid/content/ComponentName;

    .line 71
    iput-object p6, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->fragment:Lcom/oneplus/settings/OPHomeSettings;

    .line 72
    iput p3, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->index:I

    .line 80
    invoke-direct {p0, p7}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->mListener:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;

    .line 48
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setWidgetLayoutResource(I)V

    .line 49
    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 87
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 88
    .local v4, "meta":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 89
    const-string v7, "android.app.home.alternate"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "altHomePackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 92
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 93
    .local v3, "match":I
    if-ltz v3, :cond_1

    .line 94
    iget-object v7, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 95
    .local v2, "altInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 96
    .local v0, "altFlags":I
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_0

    move v7, v5

    :goto_0
    iput-boolean v7, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->isSystem:Z

    .line 97
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "altFlags":I
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "match":I
    :goto_1
    return-void

    .restart local v0    # "altFlags":I
    .restart local v1    # "altHomePackage":Ljava/lang/String;
    .restart local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "match":I
    :cond_0
    move v7, v6

    .line 96
    goto :goto_0

    .line 100
    .end local v0    # "altFlags":I
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "match":I
    :catch_0
    move-exception v7

    .line 107
    .end local v1    # "altHomePackage":Ljava/lang/String;
    :cond_1
    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    :goto_2
    iput-boolean v5, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->isSystem:Z

    .line 108
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->uninstallTarget:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v5, v6

    .line 107
    goto :goto_2
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 126
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 129
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->mListener:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->mListener:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V

    .line 120
    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->mListener:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference$OnClickListener;

    .line 113
    return-void
.end method
