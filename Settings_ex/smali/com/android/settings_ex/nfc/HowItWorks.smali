.class public Lcom/android/settings_ex/nfc/HowItWorks;
.super Landroid/app/Activity;
.source "HowItWorks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v1, 0x7f040082

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/HowItWorks;->setContentView(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0c0294

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 15
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    const v1, 0x7f1200e9

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/HowItWorks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 17
    .local v0, "gotIt":Landroid/widget/Button;
    new-instance v1, Lcom/android/settings_ex/nfc/HowItWorks$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/nfc/HowItWorks$1;-><init>(Lcom/android/settings_ex/nfc/HowItWorks;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->finish()V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
