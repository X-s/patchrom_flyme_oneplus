.class public Lcom/android/settings_ex/applications/ConfirmConvertToFbe;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ConfirmConvertToFbe.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ConfirmConvertToFBE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x193

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v2, 0x7f040043

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f1100ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 39
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/applications/ConfirmConvertToFbe$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/ConfirmConvertToFbe$1;-><init>(Lcom/android/settings_ex/applications/ConfirmConvertToFbe;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-object v1
.end method
