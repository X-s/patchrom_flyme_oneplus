.class public Lcom/android/settings_ex/nfc/HowItWorks;
.super Landroid/app/Activity;
.source "HowItWorks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 22
    :cond_0
    const v1, 0x7f0400b4

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/HowItWorks;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 24
    const v1, 0x7f1101aa

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/HowItWorks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 25
    .local v0, "gotIt":Landroid/widget/Button;
    new-instance v1, Lcom/android/settings_ex/nfc/HowItWorks$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/nfc/HowItWorks$1;-><init>(Lcom/android/settings_ex/nfc/HowItWorks;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->finish()V

    .line 36
    const/4 v0, 0x1

    return v0
.end method
