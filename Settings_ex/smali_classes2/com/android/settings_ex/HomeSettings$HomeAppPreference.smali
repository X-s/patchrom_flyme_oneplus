.class Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
.super Landroid/support/v7/preference/Preference;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAppPreference"
.end annotation


# instance fields
.field activityName:Landroid/content/ComponentName;

.field fragment:Lcom/android/settings_ex/HomeSettings;

.field final grayscaleFilter:Landroid/graphics/ColorFilter;

.field index:I

.field isChecked:Z

.field isSystem:Z

.field final synthetic this$0:Lcom/android/settings_ex/HomeSettings;

.field uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/settings_ex/HomeSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "i"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "parent"    # Lcom/android/settings_ex/HomeSettings;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "enabled"    # Z
    .param p10, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings_ex/HomeSettings;

    .line 297
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 298
    const v2, 0x7f040145

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setLayoutResource(I)V

    .line 299
    invoke-virtual {p0, p5}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {p0, p6}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p0, p9}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setEnabled(Z)V

    .line 302
    invoke-virtual {p0, p10}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    iput-object p3, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    .line 304
    iput-object p7, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->fragment:Lcom/android/settings_ex/HomeSettings;

    .line 305
    iput p4, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->index:I

    .line 307
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 308
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 309
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 310
    .local v1, "matrix":[F
    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v3, 0x12

    aput v2, v1, v3

    .line 311
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 313
    invoke-direct {p0, p8}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    .line 296
    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 319
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 320
    .local v5, "meta":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 321
    const-string/jumbo v8, "android.app.home.alternate"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "altHomePackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 324
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-static {v8}, Lcom/android/settings_ex/HomeSettings;->-get1(Lcom/android/settings_ex/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, "match":I
    if-ltz v4, :cond_1

    .line 326
    iget-object v8, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-static {v8}, Lcom/android/settings_ex/HomeSettings;->-get1(Lcom/android/settings_ex/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 327
    .local v2, "altInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 328
    .local v0, "altFlags":I
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_0

    move v8, v6

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 329
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    return-void

    :cond_0
    move v8, v7

    .line 328
    goto :goto_0

    .line 332
    .end local v0    # "altFlags":I
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "match":I
    :catch_0
    move-exception v3

    .line 334
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "HomeSettings"

    const-string/jumbo v9, "Unable to compare/resolve alternate"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    :goto_1
    iput-boolean v6, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 340
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    .line 318
    return-void

    :cond_2
    move v6, v7

    .line 339
    goto :goto_1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 347
    const v4, 0x7f11027a

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 348
    .local v2, "radio":Landroid/widget/RadioButton;
    iget-boolean v4, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 350
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->index:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 352
    .local v1, "indexObj":Ljava/lang/Integer;
    const v4, 0x7f11027c

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 353
    .local v0, "icon":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v4, :cond_0

    .line 354
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 355
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 362
    :goto_0
    const v4, 0x7f110279

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 363
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 365
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings_ex/HomeSettings;

    iget-object v4, v4, Lcom/android/settings_ex/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void

    .line 357
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 358
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings_ex/HomeSettings;

    iget-object v4, v4, Lcom/android/settings_ex/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setChecked(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    .line 370
    iput-boolean p1, p0, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->notifyChanged()V

    .line 368
    :cond_0
    return-void
.end method
