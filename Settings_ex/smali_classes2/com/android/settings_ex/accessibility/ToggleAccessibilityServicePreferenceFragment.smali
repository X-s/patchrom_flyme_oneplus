.class public Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$1;
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_CONFIRM_CREDENTIAL_FOR_WEAKER_ENCRYPTION:I = 0x1

.field private static final DIALOG_ID_DISABLE_WARNING:I = 0x2

.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    .line 69
    iput-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    .line 59
    return-void
.end method

.method private createConfirmCredentialReasonMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 340
    const v0, 0x7f0e0b0a

    .line 341
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 351
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 352
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 343
    :sswitch_0
    const v0, 0x7f0e0b08

    goto :goto_0

    .line 347
    :sswitch_1
    const v0, 0x7f0e0b09

    goto :goto_0

    .line 355
    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 341
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method private createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 20
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 215
    const-string/jumbo v17, "layout_inflater"

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 217
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f040079

    .line 218
    const/16 v18, 0x0

    .line 217
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 221
    .local v9, "content":Landroid/view/View;
    const v17, 0x7f110154

    .line 220
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 222
    .local v11, "encryptionWarningView":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 223
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    .line 223
    const v18, 0x7f0e0b06

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 225
    .local v16, "text":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    .end local v16    # "text":Ljava/lang/String;
    :goto_0
    const v17, 0x7f110155

    .line 231
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 233
    .local v4, "capabilitiesHeaderView":Landroid/widget/TextView;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    .line 233
    const v18, 0x7f0e0b04

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v17, 0x7f110156

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 240
    .local v5, "capabilitiesView":Landroid/widget/LinearLayout;
    const v17, 0x1090038

    const/16 v18, 0x0

    .line 239
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 243
    .local v8, "capabilityView":Landroid/view/View;
    const v17, 0x1020340

    .line 242
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 244
    .local v13, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 245
    const v18, 0x108044e

    .line 244
    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    const v17, 0x1020344

    .line 247
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 249
    .local v15, "labelView":Landroid/widget/TextView;
    const v17, 0x7f0e0b0b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const v17, 0x1020345

    .line 251
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 253
    .local v10, "descriptionView":Landroid/widget/TextView;
    const v17, 0x7f0e0b0c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v3

    .line 258
    .local v3, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 262
    .local v7, "capabilityCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_1

    .line 263
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 266
    .local v6, "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    const v17, 0x1090038

    const/16 v18, 0x0

    .line 265
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 269
    const v17, 0x1020340

    .line 268
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "imageView":Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 270
    .restart local v13    # "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 271
    const v18, 0x108044e

    .line 270
    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    const v17, 0x1020344

    .line 273
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15    # "labelView":Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 275
    .restart local v15    # "labelView":Landroid/widget/TextView;
    iget v0, v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const v17, 0x1020345

    .line 277
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "descriptionView":Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 279
    .restart local v10    # "descriptionView":Landroid/widget/TextView;
    iget v0, v6, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 228
    .end local v3    # "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    .end local v4    # "capabilitiesHeaderView":Landroid/widget/TextView;
    .end local v5    # "capabilitiesView":Landroid/widget/LinearLayout;
    .end local v6    # "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    .end local v7    # "capabilityCount":I
    .end local v8    # "capabilityView":Landroid/view/View;
    .end local v10    # "descriptionView":Landroid/widget/TextView;
    .end local v12    # "i":I
    .end local v13    # "imageView":Landroid/widget/ImageView;
    .end local v15    # "labelView":Landroid/widget/TextView;
    :cond_0
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 284
    .restart local v3    # "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    .restart local v4    # "capabilitiesHeaderView":Landroid/widget/TextView;
    .restart local v5    # "capabilitiesView":Landroid/widget/LinearLayout;
    .restart local v7    # "capabilityCount":I
    .restart local v8    # "capabilityView":Landroid/view/View;
    .restart local v10    # "descriptionView":Landroid/widget/TextView;
    .restart local v12    # "i":I
    .restart local v13    # "imageView":Landroid/widget/ImageView;
    .restart local v15    # "labelView":Landroid/widget/TextView;
    :cond_1
    return-object v9
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 116
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    .line 118
    .local v4, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    .local v3, "serviceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 120
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 121
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 122
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 122
    if-eqz v5, :cond_0

    .line 124
    return-object v2

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method private handleConfirmServiceEnabled(Z)V
    .locals 2
    .param p1, "confirmed"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "checked"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 333
    return-void
.end method

.method private isFullDiskEncrypted()Z
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    return v0
.end method

.method private updateSwitchBarToggleSwitch()V
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 197
    const-string/jumbo v3, "enabled_accessibility_services"

    .line 196
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "settingValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 195
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    .local v0, "checked":Z
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x4

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    if-ne p1, v1, :cond_0

    .line 290
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 291
    invoke-direct {p0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    .line 295
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "require_password_to_decrypt"

    .line 297
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 309
    packed-switch p2, :pswitch_data_0

    .line 329
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 311
    :pswitch_0
    iget v4, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v4, v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->isFullDiskEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->createConfirmCredentialReasonMessage()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 315
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .line 325
    :pswitch_1
    iget v4, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 326
    .local v0, "checked":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    .end local v0    # "checked":Z
    :cond_2
    move v0, v3

    .line 325
    goto :goto_1

    .line 309
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "dialogId"    # I

    .prologue
    const v12, 0x104000a

    const/high16 v11, 0x1040000

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 190
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 134
    :pswitch_0
    iput v9, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 136
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 137
    .local v2, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v2, :cond_0

    .line 138
    return-object v6

    .line 141
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    new-array v6, v9, [Ljava/lang/Object;

    .line 143
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    .line 142
    const v7, 0x7f0e0b03

    invoke-virtual {p0, v7, v6}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 144
    invoke-direct {p0, v2}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v6

    .line 141
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 150
    .local v0, "ad":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 165
    .local v1, "filterTouchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->create()V

    .line 166
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 168
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 169
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 170
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    return-object v0

    .line 174
    .end local v0    # "ad":Landroid/app/AlertDialog;
    .end local v1    # "filterTouchListener":Landroid/view/View$OnTouchListener;
    .end local v2    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "window":Landroid/view/Window;
    :pswitch_1
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 176
    .restart local v2    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v2, :cond_1

    .line 177
    return-object v6

    .line 179
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    new-array v6, v9, [Ljava/lang/Object;

    .line 181
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    .line 180
    const v7, 0x7f0e0b0d

    invoke-virtual {p0, v7, v6}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 182
    new-array v6, v9, [Ljava/lang/Object;

    .line 183
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    .line 182
    const v7, 0x7f0e0b0e

    invoke-virtual {p0, v7, v6}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;-><init>(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 361
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 102
    invoke-super {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 100
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 107
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 108
    .local v0, "toggledService":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/android/settings_exlib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 106
    return-void
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 384
    const-string/jumbo v3, "settings_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "settingsTitle":Ljava/lang/String;
    const-string/jumbo v3, "settings_component_name"

    .line 385
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "settingsComponentName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    :cond_0
    :goto_0
    const-string/jumbo v3, "component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 381
    return-void

    .line 388
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 388
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 390
    .local v1, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    iput-object v2, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 392
    iput-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 393
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings_ex/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 96
    invoke-super {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 93
    return-void
.end method
