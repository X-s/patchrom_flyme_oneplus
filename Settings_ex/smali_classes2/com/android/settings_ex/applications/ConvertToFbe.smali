.class public Lcom/android/settings_ex/applications/ConvertToFbe;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ConvertToFbe.java"


# static fields
.field static final CONVERT_FBE_EXTRA:Ljava/lang/String; = "ConvertFBE"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field static final TAG:Ljava/lang/String; = "ConvertToFBE"


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/applications/ConvertToFbe;I)Z
    .locals 1
    .param p1, "request"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ConvertToFbe;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/applications/ConvertToFbe;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/ConvertToFbe;->convert()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private convert()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 82
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/applications/ConfirmConvertToFbe;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 83
    const v3, 0x7f0e011f

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 80
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 45
    const v2, 0x7f0e011f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 43
    invoke-virtual {v1, p1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x192

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 70
    return-void

    .line 75
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ConvertToFbe;->convert()V

    .line 66
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const v2, 0x7f04004b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f1100fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/applications/ConvertToFbe$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/ConvertToFbe$1;-><init>(Lcom/android/settings_ex/applications/ConvertToFbe;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v1
.end method
