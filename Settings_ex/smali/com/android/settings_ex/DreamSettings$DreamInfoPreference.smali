.class Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;
.super Landroid/support/v7/preference/Preference;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

.field final synthetic this$0:Lcom/android/settings_ex/DreamSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;)Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings_ex/DreamSettings;Landroid/content/Context;Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/DreamSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "info"    # Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings_ex/DreamSettings;

    .line 294
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 295
    iput-object p3, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    .line 296
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->setLayoutResource(I)V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 293
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 302
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 305
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 306
    .local v0, "radioButton":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 307
    new-instance v4, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference$1;

    invoke-direct {v4, p0, p1}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference$1;-><init>(Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-object v4, v4, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 317
    .local v3, "showSettings":Z
    :goto_0
    const v4, 0x7f1100ea

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 318
    .local v2, "settingsDivider":Landroid/view/View;
    if-eqz v3, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 320
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 321
    .local v1, "settingsButton":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 323
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 324
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 325
    new-instance v4, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference$2;-><init>(Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void

    .line 316
    .end local v1    # "settingsButton":Landroid/widget/ImageView;
    .end local v2    # "settingsDivider":Landroid/view/View;
    .end local v3    # "showSettings":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "showSettings":Z
    goto :goto_0

    .restart local v2    # "settingsDivider":Landroid/view/View;
    :cond_1
    move v4, v6

    .line 318
    goto :goto_1

    .restart local v1    # "settingsButton":Landroid/widget/ImageView;
    :cond_2
    move v5, v6

    .line 321
    goto :goto_2

    .line 322
    :cond_3
    const v4, 0x3ecccccd    # 0.4f

    goto :goto_3
.end method

.method public performClick()V
    .locals 4

    .prologue
    .line 335
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-boolean v2, v2, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 336
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;

    .line 340
    .local v1, "preference":Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;
    iget-object v2, v1, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 341
    invoke-virtual {v1}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->notifyChanged()V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "preference":Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 344
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-static {v2}, Lcom/android/settings_ex/DreamSettings;->-get0(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_exlib/dream/DreamBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    iget-object v3, v3, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/settings_exlib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->notifyChanged()V

    .line 334
    return-void
.end method
