.class public Lcom/android/settings_ex/AppHeader;
.super Ljava/lang/Object;
.source "AppHeader.java"


# static fields
.field public static final EXTRA_HIDE_INFO_BUTTON:Ljava/lang/String; = "hideInfoButton"

.field private static final INSTALLED_APP_DETAILS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pinnedHeader"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040025

    invoke-virtual {v0, v1, p5, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 54
    .local v7, "bar":Landroid/view/View;
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    .line 55
    invoke-virtual {p5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public static createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 7
    .param p0, "fragment"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 42
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;II)V
    .locals 7
    .param p0, "fragment"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "tintColorRes"    # I

    .prologue
    .line 60
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public static createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 9
    .param p0, "fragment"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "tintColorRes"    # I
    .param p6, "externalSettings"    # Landroid/content/Intent;

    .prologue
    .line 66
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v7

    .line 67
    .local v7, "bar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings_ex/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    .line 65
    return-void
.end method

.method public static createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 7
    .param p0, "fragment"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "externalSettings"    # Landroid/content/Intent;

    .prologue
    .line 47
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public static includeAppInfo(Landroid/app/Fragment;)Z
    .locals 5
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "args":Landroid/os/Bundle;
    const/4 v2, 0x1

    .line 125
    .local v2, "showInfo":Z
    if-eqz v0, :cond_0

    const-string/jumbo v3, "hideInfoButton"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "hideInfoButton"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const/4 v2, 0x0

    .line 132
    :cond_1
    return v2
.end method

.method public static setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "includeAppInfo"    # Z
    .param p6, "tintColorRes"    # I
    .param p7, "bar"    # Landroid/view/View;
    .param p8, "externalSettings"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 74
    const v4, 0x7f11009c

    invoke-virtual {p7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 80
    .local v3, "height":I
    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    :goto_0
    if-eqz p6, :cond_0

    .line 88
    invoke-virtual {p0, p6}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 91
    :cond_0
    const v4, 0x7f11009d

    invoke-virtual {p7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, "appName":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    if-eqz p3, :cond_1

    const-string/jumbo v4, "os"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    :cond_1
    :goto_1
    return-object p7

    .line 82
    .end local v1    # "appName":Landroid/widget/TextView;
    .end local v3    # "height":I
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 84
    .restart local v3    # "height":I
    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 95
    .restart local v1    # "appName":Landroid/widget/TextView;
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p7, v4}, Landroid/view/View;->setClickable(Z)V

    .line 96
    new-instance v4, Lcom/android/settings_ex/AppHeader$1;

    invoke-direct {v4, p5, p3, p4, p0}, Lcom/android/settings_ex/AppHeader$1;-><init>(ZLjava/lang/String;ILandroid/app/Activity;)V

    invoke-virtual {p7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    if-eqz p8, :cond_1

    .line 109
    const v4, 0x7f11009e

    invoke-virtual {p7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "appSettings":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    new-instance v4, Lcom/android/settings_ex/AppHeader$2;

    invoke-direct {v4, p0, p8}, Lcom/android/settings_ex/AppHeader$2;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
