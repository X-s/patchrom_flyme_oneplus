.class public Lcom/android/settings_ex/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# static fields
.field public static final ACTION_NEXT:Ljava/lang/String; = "com.android.wizard.NEXT"

.field public static final EXTRA_ACTION_ID:Ljava/lang/String; = "actionId"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "com.android.setupwizard.ResultCode"

.field public static final EXTRA_SCRIPT_URI:Ljava/lang/String; = "scriptUri"

.field public static final EXTRA_THEME:Ljava/lang/String; = "theme"

.field public static final EXTRA_USE_IMMERSIVE_MODE:Ljava/lang/String; = "useImmersiveMode"

.field public static final NEXT_REQUEST:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "SetupWizardUtils"

.field public static final THEME_HOLO:Ljava/lang/String; = "holo"

.field public static final THEME_HOLO_LIGHT:Ljava/lang/String; = "holo_light"

.field public static final THEME_MATERIAL:Ljava/lang/String; = "material"

.field public static final THEME_MATERIAL_LIGHT:Ljava/lang/String; = "material_light"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .param p0, "fromIntent"    # Landroid/content/Intent;
    .param p1, "toIntent"    # Landroid/content/Intent;

    .prologue
    .line 113
    const-string v0, "theme"

    const-string v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v0, "useImmersiveMode"

    const-string v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method public static getHeader(Landroid/app/Activity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static getTheme(Landroid/content/Intent;I)I
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultResId"    # I

    .prologue
    .line 73
    const-string v2, "theme"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "themeName":Ljava/lang/String;
    move v0, p1

    .line 75
    .local v0, "resid":I
    const-string v2, "holo_light"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "material_light"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    :cond_0
    const v0, 0x7f0a0056

    .line 82
    :cond_1
    :goto_0
    return v0

    .line 78
    :cond_2
    const-string v2, "holo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "material"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :cond_3
    const v0, 0x7f0a0055

    goto :goto_0
.end method

.method public static isUsingWizardManager(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scriptUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static sendResultsToSetupWizard(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resultCode"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.wizard.NEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "nextIntent":Landroid/content/Intent;
    const-string v2, "scriptUri"

    const-string v3, "scriptUri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "actionId"

    const-string v3, "actionId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "theme"

    const-string v3, "theme"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "com.android.setupwizard.ResultCode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    return-void
.end method

.method public static setHeaderText(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # I

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->getHeader(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    return-void
.end method

.method public static setHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->getHeader(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public static setIllustration(Landroid/app/Activity;I)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "asset"    # I

    .prologue
    const v7, 0x7f0f02a8

    .line 119
    const v6, 0x7f0f021e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/SetupWizardIllustration;

    .line 121
    .local v2, "illustration":Lcom/android/settings_ex/widget/SetupWizardIllustration;
    if-eqz v2, :cond_1

    .line 122
    const v6, 0x7f0200ce

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 124
    .local v4, "newIllustration":Landroid/graphics/drawable/Drawable;
    instance-of v6, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_1

    move-object v3, v0

    .line 125
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 126
    .local v3, "layers":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 127
    .local v5, "oldIllustration":Landroid/graphics/drawable/Drawable;
    instance-of v6, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    instance-of v6, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 129
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "oldIllustration":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v1

    .local v1, "gravity":I
    move-object v6, v4

    .line 130
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 132
    .end local v1    # "gravity":I
    :cond_0
    invoke-virtual {v3, v7, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 133
    invoke-virtual {v2, v3}, Lcom/android/settings_ex/widget/SetupWizardIllustration;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "layers":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "newIllustration":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public static setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "navBar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "useImmersiveMode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    .local v0, "useImmersiveMode":Z
    invoke-virtual {p1, v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->setUseImmersiveMode(Z)V

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 95
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 96
    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 98
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method
